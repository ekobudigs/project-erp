<?php

namespace App\Filament\Resources\SpkoResource\Pages;

use App\Models\Spko;
use Filament\Pages\Actions;
use Illuminate\Support\Carbon;
use App\Filament\Resources\SpkoResource;
use Filament\Resources\Pages\CreateRecord;

class CreateSpko extends CreateRecord
{
    protected static string $resource = SpkoResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
{
    $kodeStatis = 'SPKO';
        $currentYear = Carbon::now()->format('y');
        $currentMonth = Carbon::now()->format('m');

        // Mengambil kode terbaru dari database
        $latestSpko = Spko::latest('created_at')->first();

        if ($latestSpko) {
            $latestKode = $latestSpko->sw;
        } else {
            // Handle the case when no Spko records are found
            $latestKode = null; // or assign a default value
        }

        // Memecah kode menjadi 3 bagian
        $kodeBagian1 = substr($latestKode, 4, 2); // Mengambil karakter 5-6 sebagai bagian 1 (23)
        $kodeBagian2 = substr($latestKode, 6, 2); // Mengambil karakter 7-8 sebagai bagian 2 (06)
        $kodeBagian3 = substr($latestKode, -3); // Mengambil tiga karakter terakhir sebagai bagian 3 (001)

        if ($currentYear !== $kodeBagian1 || $currentMonth !== $kodeBagian2) {
            // Jika tahun atau bulan terakhir tidak sama dengan tahun atau bulan saat ini, maka reset nomor urutan
            $latestKodeNumber = 1;
        } else {
            // Jika tahun dan bulan terakhir sama dengan tahun dan bulan saat ini, maka ambil nomor urutan terakhir dan increment
            $latestKodeNumber = (int) $kodeBagian3 + 1;
        }

        // Format nomor urutan agar menjadi 3 digit
        $nextNumberStr = str_pad($latestKodeNumber, 3, '0', STR_PAD_LEFT);

        // Generate kode baru
        $newKode = $kodeStatis . $currentYear . $currentMonth . $nextNumberStr;


    $data['sw'] = $newKode;

    return $data;
}
}
