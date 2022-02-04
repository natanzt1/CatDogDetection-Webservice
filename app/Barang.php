<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    protected $table = 'tb_barang';

    public function Transaksi(){
        return $this->hasMany('App\Transaksi', 'id');
    }
}
