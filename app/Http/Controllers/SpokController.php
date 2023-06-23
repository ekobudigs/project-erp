<?php

namespace App\Http\Controllers;

use App\Models\Spko;
use Illuminate\Http\Request;

class SpokController extends Controller
{
    public function processAndPrint(Request $request,)
    {
        $ids = array_keys($request->query());
        // Mendapatkan model Spok berdasarkan array data yang dipilih
        $selectedSpok = Spko::whereIn('spkos.id', $ids)
        ->join('spko_items', 'spkos.id', '=', 'spko_items.oridnal')
        ->join('employees', 'spkos.employee', '=', 'employees.id')
        ->join('products', 'spko_items.id_product', '=', 'products.id')
        ->join('processes', 'spkos.process', '=', 'processes.id')
        ->select('spkos.*', 'employees.*', 'products.*', 'spko_items.*','employees.nama as employee_nama', 'processes.nama as process_nama')
        ->get();
       
    
        return view('print.repotspok', ['selectedSpok' => $selectedSpok]);
       
        // Mendapatkan data yang diperlukan untuk pengolahan dari $request
        
        // Proses pengolahan data
        // $processedData = // Lakukan pengolahan data sesuai kebutuhan aplikasi Anda

        // Proses cetak data
        // $pdf = PDF::loadView('spok.print', compact('processedData'));
        // $pdf->save(storage_path('app/public/spok_print.pdf')); // Simpan file PDF pada storage

        // Lakukan tindakan lain seperti pengiriman email, penyimpanan database, dll.

        // Mengembalikan respons atau pesan sukses jika diperlukan
    }
}
