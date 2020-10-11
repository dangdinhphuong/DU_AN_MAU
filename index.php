require_once "../../dao/hoang_hoa.php";
    $count = count_id_all();
   if($count['so_luong']<=4){
$MESSAGE=" Ban không thể xóa khi số lượng nhở hơn hoặc bằng 4";
   }
   else if($count['so_luong']>4){
    try {
        hang_hoa_delete($id);
        $items = hang_hoa_select_page();
        $MESSAGE = "Xóa thành công!";
    } catch (Exception $exc) {
        $MESSAGE = "Xóa thất bại!" . $exc->getMessage();
    }
    $VIEW_NAME = "hang-hoa/list.php";}



    // viết cho delete hàng hóa




