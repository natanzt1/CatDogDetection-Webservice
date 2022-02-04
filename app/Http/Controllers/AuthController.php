<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;
use App\User;

class AuthController extends Controller
{
    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function signup(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'username' => 'required|unique:users',
            'password' => 'required'
        ]);
        $user = new User([
            'name' => $request->name,
            'username' => $request->username,
            'password' => bcrypt($request->password)
        ]);
        $user->save();
        return response()->json([
            'message' => 'Successfully created user!'
        ], 201);
    }
  
    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {

        $successStatus = 200;

        $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);

        $credentials = request(['username', 'password']);
        if(!Auth::attempt($credentials))
            return response()->json([
                'message' => 'Unauthorized'
            ], 401);

        $user = Auth::user();
        $tokenResult = $user->createToken('Personal Access Token');
        $user->token = $tokenResult->accessToken;
        $nama = $user->name;
        $title = "Ada pengguna Login";
        $message = "Pengguna ".$nama." sedang login.";
        $this->sendGCM($title, $message);
        return response()->json($user, $successStatus);
    }
  
    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {
        $request->user()->token()->revoke();
        $nama = $request->user()->name;
        $title = "Ada pengguna Logout";
        $message = "Pengguna ".$nama." sedang logout.";
        $this->sendGCM($title, $message);
        return response()->json([
            'message' => 'Successfully logged out'
        ]);
    }
  
    /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    public function editUser($id, Request $req)
    {
        $req->validate([
            'name' => 'required',
            'username' => 'required'
        ]);
        $user = User::find($id);
        $nama = $req->name;
        $username = $req->username;
        $user->name = $nama;
        $user->username = $username;
        $user->save();

        return response()->json([
            'message' => 'Successfully Edit user profile!'
        ], 201);
    }

    public function sendGCM($title, $message) {
        
        $url = 'https://fcm.googleapis.com/fcm/send';
        $fields = array (
                'registration_ids' => array (
                        "fE4dXlmzYT8:APA91bEFCxKBp_fon1MkvFCWfM57SZ0BAwZNojrbyYGmIlnrAqSW31wcgRZ218KcJ_QiwMoOeoQIqEJrPWuhX0d4Qv0qGihe7HqCmQJcLAsly1Y7zE8WYbwtt-TuGmysezM1zYSN9XsY",
                        "fDQ_eudFiLQ:APA91bENvepqtwetXmVIUazXppYF1QsvNS9HzMIYzHp7xf3I4o-yYmZExD7ZcErrqz94cRK3UmV-RCKo1C7SESU7hieSFMmbtmX3ETR8CBkbYeF136hvRkR7bACsVKhCR8Swc9yv0UCo"
                ),
                'data' => array (
                        "title" => $title,
                        "message" => $message
                )
        );
        $fields = json_encode ( $fields );

        $headers = array (
                'Authorization: key=' . "AAAA38du80k:APA91bE_N6sd_O2GxgpcFJBZA49KOdjMAVzcvnYLt6uXqL7igI1G8bEYjeHJ3QspKk176WqEHgxBNYAVSBMU3Fc6kYadlN5Su3bAMErR-JDiFmW6oCfiE5RWfddmziDn9HpWb9NIQnZw",
                'Content-Type: application/json'
        );

        $ch = curl_init ();
        curl_setopt ( $ch, CURLOPT_URL, $url );
        curl_setopt ( $ch, CURLOPT_POST, true );
        curl_setopt ( $ch, CURLOPT_HTTPHEADER, $headers );
        curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, true );
        curl_setopt ( $ch, CURLOPT_POSTFIELDS, $fields );

        $result = curl_exec ( $ch );
        curl_close ( $ch );
    }
}