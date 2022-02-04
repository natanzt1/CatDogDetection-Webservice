<?php

namespace App\Http\Controllers;

use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;
use URL;
use App\Barang;
use App\Transaksi;
use Illuminate\Http\Request;

class BarangController extends Controller
{
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
    public function index()
    {
    	$barang = Barang::where('status', 1)->get();
        return $barang;
    }

    public function show($id)
    {
    	$barang = Barang::find($id);
    	return $barang;
    }

    public function create(){

    }

    public function store(Request $req)
    {

    	$req->validate([
			'nama_barang' => 'required|unique:tb_barang|max:255',
	        'stok' => 'required',
	        // 'image' => 'required'
		]);
                	
	$barang = new Barang();
        $nama_barang = $req->input('nama_barang');
    	$stok = $req->input('stok');
        $barang->nama_barang = $nama_barang;
        $barang->stok = $stok;

        $id_barang = Barang::orderBy('id', 'DESC')->first();

        $id = $id_barang->id;
        $id = $id+1;
        $image = $req->file('image');
        $extension = 'jpg';
        $image_name = $id.'.'.$extension;
        $image->storeAs('image/', $image_name, 'public');
        $image_url = $image_name;
        $barang->image = $image_url;

        $title = "Data Barang Baru";
        $message = "Data ".$nama_barang." berhasil ditambahkan.";
        $barang->save();
        $this->sendGCM($title, $message);


        
        

        // $admin->save();
        return response()->json([
			'status' => 200,
			'message' => 'berhasil menambah barang'
		]);
	}

    public function edit(Request $req)
    {
        $req->validate([
            'nama_barang' => 'required|max:255',
            'stok' => 'required',
            // 'image' => 'required'
        ]);
        $id = $req->id;
        $nama = $req->nama_barang;
        $stok = $req->stok;
    	$barang = Barang::find($id);
        $barang->nama_barang = $nama;
        $barang->stok = $stok;
        $barang->save();
        $nama_barang = $nama;
        $title = "Edit Barang";
        $message = $nama_barang." berhasil diedit.";
        $this->sendGCM($title, $message);
    	return response()->json([
            'status' => 200,
            'message' => 'Berhasil mengubah Data'
        ]);
    }

    public function update(Request $req,$id)
    {

    }

    public function delete(Request $req)
    {
        $id = $req->id;
        $barang = Barang::find($id);
        $barang->status = 0;
        $barang->save();
        return response()->json([
            'status' => 200,
            'message' => 'Berhasil menghapus Barang'
        ]);
    }

    public function jaket_image($url)
    {
    	$url = "image/".$url;
    	return response()->file($url);
    }

    public function ambil_barang(Request $req)
    {
        $req->validate([
            'id' => 'required',
            'jumlah' => 'required'
        ]);

        $id = $req->id;
        $jumlah = $req->jumlah;

        $trx = new Transaksi();
        $trx->id_barang = $id;
        $trx->jumlah = $jumlah;
        // $trx->user_id = $user_id;

        $user = request()->user()->id;
        $trx->user_id = $user;
        $trx->save();

        $barang = Barang::find($id);
        $stok = $barang->stok;
        $nama_barang = $barang->nama_barang;
        $barang->stok = $stok - $jumlah;
        $barang->save();

        
                
        return response()->json([
            'status' => 200,
            'message' => 'Berhasil menambah Transaksi'
        ]);
    }

    public function index_transaksi(){
        $trx = Transaksi::all();
        $sample = Transaksi::all();
        $i = 0;
        foreach($sample as $a){
            $gambar = $a->barang->image;
            $nama = $a->user->name;
            $barang = $a->barang->nama_barang;
            $trx[$i]->nama_barang = $barang;
            $trx[$i]->nama_user = $nama;
            $trx[$i]->gambar = $gambar;
            $i++;
        }
        return response()->json($trx);
    }

    public function python(Request $req){
	$id = 1;
	$extension = 'jpg';
	$dir_raw = 'detection/raw/';
//	$dir_res = 'detection/result/';
	$image_path_raw = $dir_raw . $id . '.' . $extension;
//	while (file_exists($image_path_raw)) {
//		$id = $id+1;
//		$image_path_raw = $dir_raw . $id . '.' . $extension;
//	}
	$image_name = $id . '.' . $extension;
        $image = $req->file('image');
        $image->storeAs('detection/raw/', $image_name , 'public');
	
	$path = 'C:/tensorflow1/models/research/object_detection/android_detection.py';
	$result = shell_exec($path);

        return response()->json([
	    'hasil' => $result,
            'image' => $image_name
        ]);
    }
	
    public function python2(){
	$path = 'C:/tensorflow1/models/research/object_detection/android_detection.py';
//	echo $path . "<br>";
	$result = shell_exec($path);
//	echo $result;
	$id = 10;
	$extension = 'jpg';
	$image_name = $id . '.' . $extension;
//	echo $dir_res;        
	return response()->json([
	    'keterangan' => $result, 
            'image' => $image_name
        ]);
    }

    public function detection_image($url)
    {
	$dir_res = 'C:/Users/Ritarion/Documents/Laravel/CatDogDetection/public/detection/result/';
    	$url = $dir_res.$url;
    	return response()->file($url);
    }

    public function tes2(Request $req){
	return $req;
    }
}
