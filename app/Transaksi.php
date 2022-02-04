<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    protected $table = 'tb_transaksi';

    public function User(){
    	return $this->belongsTo('App\User');
    }

    public function Barang(){
    	return $this->belongsTo('App\Barang', 'id_barang');
    }
}
