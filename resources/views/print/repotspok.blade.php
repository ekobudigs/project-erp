<!doctype html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <script src="https://cdn.tailwindcss.com"></script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.css"  rel="stylesheet" />

  <style>
    table {
        width: 100%;
    }
    .flex-button {
        display: flex;
        justify-content: flex-end;
        margin-top: 10px;

    }
    .btn-green {
    background-color: #00a65a;
    border-color: #008d4c;
    color: white;
    padding: 0.5rem 1rem;
    border: none;
    border-radius: 0.25rem;
    cursor: pointer;
    font-size: 1.2rem;
    }

    .btn-green:hover {
    background-color: darkgreen;
    }
    .bt {
      border-top: 1px solid black;
    }
</style>
  <script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
  <script>
    function exportToExcel() {
      var table = document.getElementById('data-excel');    
      var wb = XLSX.utils.table_to_book(table, {sheet:"Sheet JS"});
      XLSX.writeFile(wb, 'Repot-Spko.xlsx');
    }
  </script>
</head>
<body>
    <div class="flex-button ">
        <button onclick="exportToExcel()" class="noPrint btn-green">Export ke Excel</button>
    </div>
    <div class="flex justify-center">
        <div class="shadow-md sm:rounded-lg">
<table id="data-excel"  class=" text-sm text-left text-gray-500 dark:text-gray-400">
    <thead  class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
        
        @php
            $swValues = $selectedSpok->pluck('sw')->unique(); // Mengambil nilai unik dari kolom "sw"
        @endphp
        @foreach ($swValues as $sw)
        <tr>
            <th   colspan='2' scope="col" class="px-6 py-3">ID Operator</th>
            <td colspan='2'>{{ $selectedSpok[0]->employee }}</td>
            <th  scope="col" class="px-6 py-3">No Spko</th>
                <td>{{ $sw }}</td>
        </tr>
        <tr>
            <th  colspan='2'  scope="col" class="px-6 py-3">Nama Operator</th>
            <td  colspan='2'>{{ $selectedSpok[0]->employee_nama }}</td>
            <th  scope="col" class="px-6 py-3">Process</th>
            <td>{{ $selectedSpok[0]->process_nama }}</td>
        </tr>
        <tr>
            <th  colspan='2' scope="col" class="px-6 py-3">Tanggal</th>
            <td  colspan='2'>{{ $selectedSpok[0]->trans_date }}</td>
            <th  scope="col" class="px-6 py-3">Catatam</th>
                <td></td>
        </tr>
            <tr>
                
            </tr>
            <tr>
              
            </tr>
            <tr>
                
            </tr>
          
    </thead>
    <tbody >
        
        <tr class="border border-gray-300">
            <th scope="col" class="px-6 py-3">No</th>
            <th  scope="col" class="px-6 py-3">Deskripsi</th>
            <th  scope="col" class="px-6 py-3">Carat</th>
            <th  scope="col" class="px-6 py-3">SKU</th>
            <th  scope="col" class="px-6 py-3">Qty</th>
        </tr>
        @foreach ($selectedSpok->where('sw', $sw) as $index => $spok)
        @php
        $no = $loop->iteration;
        if ($loop->first || $selectedSpok[$loop->index - 1]->sw != $spok->sw) {
            $no = 1;
        }
    @endphp
            <tr>
                <td class="px-6 py-4">{{ $no }}</td>
                <td class="px-6 py-4">{{ $spok->description }}</td>
                <td class="px-6 py-4">{{ $spok->carat }}</td>
                <td class="px-6 py-4">{{ $spok->sub_category }}</td>
                <td class="px-6 py-4"> {{ $spok->qty }}</td>
            </tr>
        @endforeach
        <tr>
              <td colspan="4" >&emsp;</td>
              <td colspan="4" >&emsp;</td>
       </tr>
        <tr>
              <td colspan="4" >&emsp;</td>
              <td colspan="4" >&emsp;</td>
       </tr>
    @endforeach
    <tr class="bt">
              
    </tr>
    </tbody>
</table>
        </div>
    </div>


    


    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.6.6/flowbite.min.js"></script>
</body>
</html>
