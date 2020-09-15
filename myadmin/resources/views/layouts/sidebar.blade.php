  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
{{--       <div class="user-panel">
        <div class="pull-left image">
          <img src="{{URL::asset('/images/logo.jpg')}}" class="img-circle" style="height: 45px !important" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Admin</p>
          <a href="#!"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div> --}}
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li>
          <a class="waves-effect waves-dark" href="{{route('index')}}">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
          </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('orders')}}"><i class="fa fa-slack"></i><span class="hide-menu">Orders</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('users')}}"><i class="fa fa-user"></i><span class="hide-menu">Users
                 <i style="float:right" id="pendingUser" class="badge"></i>
              </span>
            </a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('drivers')}}"><i class="fa fa-user-o"></i><span class="hide-menu">Drivers</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('products')}}"><i class="fa fa-product-hunt"></i><span class="hide-menu">Produk</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('variations')}}"><i class="fa fa-list-alt"></i><span class="hide-menu">Posting Produk</span></a>
        </li>

        <li>
            <a class="waves-effect waves-dark" href="{{route('units')}}"><i class="fa fa-list-alt"></i><span class="hide-menu">Jenis Produk</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('category')}}"><i class="fa fa-list"></i><span class="hide-menu">Kategori</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('brands')}}"><i class="fa fa-list-alt"></i><span class="hide-menu">Brands</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('sliders')}}"><i class="fa fa-picture-o"></i><span class="hide-menu">Iklan</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('coupons')}}"><i class="fa fa-credit-card"></i><span class="hide-menu">Kupon</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('notifications')}}"><i class="fa fa-bell"></i><span class="hide-menu">Notifikasi</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('cmsPages')}}"><i class="fa fa-outdent"></i><span class="hide-menu">CMS Pages</span></a>
        </li>
        <li>
            <a class="waves-effect waves-dark" href="{{route('setting')}}"><i class="fa fa-outdent"></i><span class="hide-menu">Pengaturan</span></a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>