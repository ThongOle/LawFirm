<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Sidebar menu-->
    <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
    <aside class="app-sidebar">
      <div class="app-sidebar__user">
        <div>
          <p class="app-sidebar__user-name">${sessionScope.hoTen}</p>
          <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
      </div>
      <ul class="app-menu">
        <li><a class="app-menu__item" href="dangNhapHeThong"><i class="app-menu__icon fa fa-home"></i><span class="app-menu__label">Trang chủ</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Bài Viết</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="danhSachBaiViet.action"><i class="icon fa fa-circle-o"></i> Danh sách bài viết</a></li>
            <li><a class="treeview-item" href="chiTietBaiViet" target="_blank" rel="noopener"><i class="icon fa fa-circle-o"></i>Thêm mới bài viết</a></li>
          </ul>
        </li>
        <li><a class="app-menu__item" href="dsNhatKy"><i class="app-menu__icon fa fa-history"></i><span class="app-menu__label">Nhật ký</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Chủ đề</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="dsChuDe"><i class="icon fa fa-circle-o"></i>Danh sách chủ đề</a></li>
            <li><a class="treeview-item" href="chiTietChuDe "><i class="icon fa fa-circle-o"></i>Thêm mới chủ đề</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Luật sư</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="dsLuatSu"><i class="icon fa fa-circle-o"></i>Danh sách Luật sư</a></li>
            <li><a class="treeview-item" href="chiTietLuatSu"><i class="icon fa fa-circle-o"></i>Thêm mới Luật sư</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Phân Quyền</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="quanlyphanquyen"><i class="icon fa fa-circle-o"></i>Quản lý phân quyền</a></li>
          </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Contact</span><i class="treeview-indicator fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
            <li><a class="treeview-item" href="dscontact"><i class="icon fa fa-circle-o"></i>Danh sách Contact</a></li>
   
          </ul>
        </li>
      </ul>
    </aside>
    
</body>
</html>