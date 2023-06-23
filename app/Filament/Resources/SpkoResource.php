<?php

namespace App\Filament\Resources;

use Filament\Forms;
use App\Models\Spko;
use Filament\Tables;
use App\Models\Process;
use App\Models\Employee;
use Filament\Resources\Form;
use Filament\Resources\Table;
use Filament\Resources\Resource;
use Illuminate\Support\Collection;
use Filament\Forms\Components\Select;
use Filament\Tables\Actions\BulkAction;
use Filament\Tables\Columns\TextColumn;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\SpkoResource\Pages;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Filament\Resources\SpkoResource\RelationManagers;
use App\Filament\Resources\SpkoResourcResource\RelationManagers\SpkoItemseRelationManager;

class SpkoResource extends Resource
{
    protected static ?string $model = Spko::class;

    protected static ?string $navigationIcon = 'heroicon-o-shopping-cart';
    protected static ?string $navigationGroup = 'Transaksi';
    protected static ?string $navigationLabel = 'Order';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('sw')
                ->extraInputAttributes(['readonly' => true])
                    ->maxLength(25),
                Forms\Components\TextInput::make('remarks')
                ->maxLength(25)
                    ->required(),
                    Select::make('employee')
                    ->label('Employee')
                    ->options(Employee::all()->pluck('nama', 'id')->toArray())
                    ->searchable()->required(),
                Forms\Components\DatePicker::make('trans_date')
                    ->required(),
                    Select::make('process')
                    ->label('Process')
                    ->options(Process::all()->pluck('nama', 'id')->toArray())
                    ->searchable()->required(),
              
            ]);
    }

    public static function table(Table $table): Table
    {
        
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('sw')->sortable()->searchable(),
                Tables\Columns\TextColumn::make('remarks'),
                TextColumn::make('employees.nama'),
                Tables\Columns\TextColumn::make('trans_date')
                    ->date(),
                Tables\Columns\TextColumn::make('proses.nama'),
                Tables\Columns\TextColumn::make('created_at')
                    ->dateTime(),
                Tables\Columns\TextColumn::make('updated_at')
                    ->dateTime(),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\ViewAction::make(),
                Tables\Actions\EditAction::make(),
                
            ])
            ->bulkActions([
                Tables\Actions\DeleteBulkAction::make(),
                BulkAction::make('Print')
                ->action(function (Collection $records) {
                    $url = route('spok.process-and-print', $records->pluck('id')->toArray());
                    return redirect($url);
                })
                ->requiresConfirmation()
                ->color('success')
                ->icon('heroicon-s-printer')
            
                
            ]);
    }
    
    public static function getRelations(): array
    {
        return [
            SpkoItemseRelationManager::class,
        ];
    }
    
    public static function getPages(): array
    {
        return [
            'index' => Pages\ListSpkos::route('/'),
            'create' => Pages\CreateSpko::route('/create'),
            'view' => Pages\ViewSpko::route('/{record}'),
            'edit' => Pages\EditSpko::route('/{record}/edit'),
        ];
    } 
    
    public static function beforeCreate($record, $form)
{
   
}

}
