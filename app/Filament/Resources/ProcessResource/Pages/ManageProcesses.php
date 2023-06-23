<?php

namespace App\Filament\Resources\ProcessResource\Pages;

use App\Filament\Resources\ProcessResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ManageRecords;

class ManageProcesses extends ManageRecords
{
    protected static string $resource = ProcessResource::class;

    protected function getActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
