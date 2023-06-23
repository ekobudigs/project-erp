<?php

namespace App\Filament\Resources\SpkoResource\Pages;

use App\Filament\Resources\SpkoResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ListRecords;

class ListSpkos extends ListRecords
{
    protected static string $resource = SpkoResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
