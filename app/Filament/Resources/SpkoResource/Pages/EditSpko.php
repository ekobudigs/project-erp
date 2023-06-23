<?php

namespace App\Filament\Resources\SpkoResource\Pages;

use App\Filament\Resources\SpkoResource;
use Filament\Pages\Actions;
use Filament\Resources\Pages\EditRecord;

class EditSpko extends EditRecord
{
    protected static string $resource = SpkoResource::class;

    protected function getActions(): array
    {
        return [
            Actions\ViewAction::make(),
            Actions\DeleteAction::make(),
        ];
    }
}
