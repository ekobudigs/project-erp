<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Spko extends Model
{
    use HasFactory;
    protected $guarded = ['id'];
    public function SpkoItemse()
    {
        return $this->hasMany(Spko_item::class, 'oridnal');
    }

    public function employees()
    {
        return $this->belongsTo(Employee::class, 'employee');
    }
    public function product()
    {
        return $this->belongsTo(Product::class);
    }
    public function proses()
    {
        return $this->belongsTo(Process::class, 'process', 'id');
    }
}
