<?php $_SESSION['a'] = $_SERVER['REQUEST_URI'] ?>
<!-- menu -->
<section id="menu">
    <div class="container">
        <div class="menu-area">
            <!-- Navbar -->
            <div class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="navbar-collapse collapse">
                    <!-- Left nav -->
                    <ul class="nav navbar-nav">
                        <li><a href="<?= $SITE_URL ?>/trang-chinh">Home</a></li>
                        <?php
                        foreach ($loai_hang as $item) {
                            extract($item);
                        ?>
                            <li><a href="<?= $SITE_URL ?>/hang-hoa/index.php?product&cate_id=<?= $id ?>"><?= $item['name'] ?></a></li>
                        <?php
                        }
                        ?>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </div>
    </div>
</section>
<!-- / menu -->
<!-- catg header banner section -->

<!-- / catg header banner section -->

<!-- product category -->
<section id="aa-product-details">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-product-details-area">
                    <!-- Tab panes -->
                    <div class="aa">
                        <h1></h1>
                        <h1 style="box-sizing: border-box; margin: 0px 0px 10px; font-family: Roboto, Helvetica, Arial, sans-serif; line-height: 28px; color: #444444; font-size: 17px; padding: 15px 0px 5px; border-bottom: 2px solid #dddddd; background-color: #ffffff;">Giới thiệu về PhuongDinh</h1>
                        <div class="content" style="box-sizing: border-box; color: #333333; font-family: Roboto, Helvetica, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">
                            <p>PhuongDinh là một hệ sinh thái thương mại tất cả trong một, gồm các công ty thành viên như:</p>
                            <ul>
                                <li class="li">PhuongDinhNOW Smart Logistics cung cấp dịch vụ logistics đầu-cuối;</li>
                                <li class="li">Ticketbox mang đến dịch vụ vé sự kiện, xem phim hàng đầu;</li>
                                <li class="li">Đơn vị bán lẻ PhuongDinh Trading và Sàn Giao dịch cung cấp 10 triệu sản phẩm từ 26 ngành hàng phục vụ hàng triệu khách hàng trên toàn quốc.</li>
                            </ul>
                            <p>Với phương châm hoạt động "Tất cả vì Khách Hàng", PhuongDinh luôn không ngừng nỗ lực nâng cao chất lượng dịch vụ và sản phẩm, từ đó mang đến trải nghiệm mua sắm trọn vẹn cho Khách Hàng Việt Nam với dịch vụ giao hàng nhanh trong 2 tiếng và ngày hôm sau PhuongDinhNOW lần đầu tiên tại Đông Nam á, cùng cam kết cung cấp hàng chính hãng với chính sách hoàn tiền 111% nếu phát hiện hàng giả, hàng nhái.</p>
                            <p>Thành lập từ tháng 3/2010, PhuongDinh.vn hiện đang là trang thương mại điện tử lọt top 2 tại Việt Nam và top 6 tại khu vực Đông Nam á.</p>
                            <p>PhuongDinh lọt Top 1 nơi làm việc tốt nhất Việt Nam trong ngành Internet/E-commerce 2018 (Anphabe bình chọn), Top 50 nơi làm việc tốt nhất châu á 2019 (HR Asia bình chọn).</p>
                            <h3>Video giới thiệu PhuongDinh</h3>
                            <div style="box-sizing: border-box; text-align: center;"><iframe style="box-sizing: border-box; margin: 30px 0px; width: 800px; max-width: 800px;" src="https://www.youtube.com/embed/qg33YAgUKgU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" width="800" height="450" frameborder="0" allowfullscreen=""></iframe></div>
                            <p>Quý khách có nhu cầu liên lạc, trao đổi hoặc đóng góp ý kiến, vui lòng tham khảo các thông tin sau:</p>
                            <ul>
                                <li class="li">Liên lạc qua điện thoại: 1900 6035</li>
                                <li class="li">Liên lạc qua email: Truy cập:<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #00aaf1;" href="http://hotro.PhuongDinh.vn/" target="_blank" rel="noopener">hotro.PhuongDinh.vn</a></li>
                                <li class="li">Fanpage của PhuongDinh::<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #00aaf1;" href="http://facebook.com/PhuongDinh.vn" target="_blank" rel="noopener">http://facebook.com/PhuongDinh.vn</a></li>
                                <li class="li">Đối tác có nhu cầu hợp tác quảng cáo hoặc kinh doanh::<a style="box-sizing: border-box; background-color: transparent; text-decoration-line: none; color: #00aaf1;" title="Email đến PhuongDinh" href="mailto:marketing@PhuongDinh.vn">marketing@PhuongDinh.vn</a></li>
                            </ul>
                            <br style="box-sizing: border-box;" />
                            <ul>
                                <li class="li">Văn phòng chính: Số 3 Âu Cơ,Tây Hồ,Hà Nội,Việt Nam</li>
                                <li class="li">Văn phòng: Số 4 Tứ liên,Tây Hồ,Hà Nội,Việt Nam</li>
                            </ul>
                            <h3>Thông tin về công ty</h3>
                            <ul>
                                <li class="li">Công ty Cổ Phần Ti Ki</li>
                                <li class="li">Địa chỉ đăng ký kinh doanh: Số 3 Âu Cơ,Tây Hồ,Hà Nội,Việt Nam</li>
                                <li class="li">Giấy chứng nhận Đăng ký Kinh doanh số 0309532909 do Sở Kế hoạch và Đầu tư Thành phố Hà Nội cấp ngày 06/01/2010</li>
                            </ul>
                            <br style="box-sizing: border-box;" />
                            <h3>Văn phòng PhuongDinh</h3>
                            <div style="box-sizing: border-box; text-align: center;"><iframe style="box-sizing: border-box; margin: 30px 0px; width: 800px; max-width: 800px; border-width: 0px; border-style: initial;" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.1270742437996!2d105.82449731476396!3d21.067586285977306!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aaf7f2186e01%3A0x410bbcb4a6116d83!2zMjM4IMOCdSBDxqEsIFF14bqjbmcgQW4sIFTDonkgSOG7kywgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1602607361147!5m2!1svi!2s" width="800" height="450" frameborder="0" allowfullscreen=""></iframe></div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<style>
    html {
        background-color: #EFEFEF !important;
    }

    .li {
        box-sizing: border-box;
        margin-bottom: 5px;
    }

    .aa {
        background-color: #fff;
        width: 100%;
        margin-bottom: 2%;
        padding-right: 15px;
        padding-left: 15px;
    }

    p {
        box-sizing: border-box;
        margin: 0px 0px 10px;
    }

    h3 {
        box-sizing: border-box;
        font-family: inherit;
        line-height: 1.1;
        color: inherit;
        margin-top: 20px;
        margin-bottom: 10px;
        font-size: 16px;
    }

    h1,
    h3 {
        font-weight: bold;
    }

    ul {
        box-sizing: border-box;
        margin-top: 0px;
        margin-bottom: 10px;

    }
</style>
<!-- / product category -->