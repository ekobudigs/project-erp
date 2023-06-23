<?php

namespace App\Filament\Resources\SpkoResourcResource\RelationManagers;

use Filament\Forms;
use Filament\Resources\Form;
use Filament\Resources\RelationManagers\RelationManager;
use Filament\Resources\Table;
use Filament\Tables;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class SpkoItemseRelationManager extends RelationManager
{
    protected static string $relationship = 'SpkoItemse';

    protected static ?string $recordTitleAttribute = 'qty';
    


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Select::make('id_product')
                ->options(function () {
                    // Logika untuk mendapatkan daftar opsi id_product dari model atau database
                    // Contoh: Mengambil daftar id_product dari model Product
                    return \App\Models\Product::pluck('description', 'id');
                })
                ->required(),
                Forms\Components\TextInput::make('qty')
                    ->required()
                    ->maxLength(255),
            ]);
    }

    public static function table(Table $table): Table
    {

        return $table
            ->columns([
                Tables\Columns\TextColumn::make('product.description'),
                Tables\Columns\TextColumn::make('qty'),
            ])
            ->filters([
                //
            ])
            ->headerActions([
                Tables\Actions\CreateAction::make(),
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
            ]);
    }   
    
    
}
