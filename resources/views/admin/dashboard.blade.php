@extends('layouts.app')

@section('content')
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">{{ __('Dashboard') }}</h1>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <p class="card-text">
                                {{ __('Welcome') }} {{ auth()->user()->name }} !
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>

    <section class="content" >
        <!-- Default box -->
        <div class="container-fluid">
            <div class="row">

                <div class="col-lg-4 col-6" >
                    <div class="small-box card">
                        <div class="inner">
                            <h3 class="text-left d-block">{{$totaladmin}}</h3>
                            <p class="text-left d-block">User</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="{{route('admin.users.index')}}"  class="small-box-footer text-dark">More info.<i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>


                <div class="col-lg-4 col-6" >
                    <div class="small-box card">
                        <div class="inner">
                            <h3 class="text-left d-block">{{$totalBooking}}</h3>
                            <p class="text-left d-block">Booking</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="{{route('admin.bookings.index')}}"  class="small-box-footer text-dark">more info.<i
                                class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-6">
                    <div class="small-box card">
                        <div class="inner">
                            <h3 class="text-left d-block">{{ $totalravelInspiration }}</h3>
                            <p class="text-left d-block">Travel Inspiration</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#"  class="small-box-footer text-dark">.....<i
                            class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>

            </div>
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->


    <!-- /.content -->
@endsection
