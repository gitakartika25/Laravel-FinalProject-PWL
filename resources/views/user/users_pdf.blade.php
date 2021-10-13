<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="img/main.png">
    <script type="text/javascript">
    document.write(unescape('%3c%6c%69%6e%6b%20%72%65%6c%20%3d%20%22%69%63%6f%6e%22%20%68%72%65%66%20%3d%22%69%6d%67%2f%6c%6f%67%6f%2e%70%6e%67%22%20%74%79%70%65%20%3d%20%22%69%6d%61%67%65%2f%70%6e%67%22%3e'));

    </script>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    
    
    <title>GitSa Resto</title>

    <!-- Font Awesome -->
    <!--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">-->
    <!-- Google Fonts -->
    <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">-->
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.18.0/css/mdb.min.css" rel="stylesheet">

     @stack('style')

</head>


<body>

        <?php $total; ?>
        <table class="table table-sm table-bordered table-striped">
            <thead>
                <tr>
                    <th colspan="7" class="text-center" scope="col">LAPORAN USER</th>
                </tr>
                <tr>
                    <th colspan="7" class="table-dark text-center">Daftar User</th>
                </tr>
            </thead>
            <tbody>
                @if($user->isEmpty())
                    <tr>
                        <td colspan="7" align="center">Data user kosong</td>
                    </tr>
                @else
                <?php $count = 0; ?>
                @foreach($user AS $u)
                    <tr>
                        <td rowspan="5">{{ $loop->iteration }}</td>
                        <td colspan="6">User ID : {{ $u->id }}</td>
                    </tr>
                    <tr>
                        <td colspan="4" rowspan="4" align="center" style="overflow: hidden;">
                            @if($u->profile_image == 'empty')
                                <span align="center">empty</span>
                            @else
                                <img src="{{ public_path('user/images/'.$u->profile_image) }}" alt="{{ $u->profile_image }}" width="80">
                            @endif
                        </td>
                        <td>Nama</td><td>{{ $u->name }}</td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>{{ $u->email }}</td>
                    </tr>
                    <tr>
                        <td>Bergabung pada</td>
                        <td>{{ $u->created_at }}</td>
                    </tr>
                    <tr>
                        <td style="padding-bottom:30px;">Roles</td>
                        <td style="padding-bottom:30px;"><strong>{{ $u->roles }}</strong></td>
                    </tr>
                <?php $count++; ?>
                @endforeach
                    <tr>
                        <td colspan="6" class="text-center">Total Pengguna</td>
                        <td class="text-center">{{ $count }}</td>
                    </tr>
                   
                @endif
        </table>

    
</body>

</html>
