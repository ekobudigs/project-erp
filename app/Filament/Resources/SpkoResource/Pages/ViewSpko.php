<?php

namespace App\Filament\Resources\SpkoResource\Pages;

use App\Filament\Resources\SpkoResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\ViewRecord;

class ViewSpko extends ViewRecord
{
    protected static string $resource = SpkoResource::class;

    protected function getActions(): array
    {
        return [
            Actions\EditAction::make(),
        ];
    }
}
