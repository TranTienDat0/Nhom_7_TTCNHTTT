<%@ Page Title="" Language="C#" MasterPageFile="~/LoginRegisMaster.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Bakery_Nhom7.TrangChu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <!-- TRANG CHU  -->
             <!-- begin -->
            <section class="container-section-login-main">

                <div class="container-section-intro">
                    <div class="container-section--introduceContent">
                        <h2>I. Giới thiệu tổng quan về cửa hàng</h2>
                        <p>Anh Hòa Bakery là thương hiệu bánh ngọt Pháp của công ty cổ phần bánh ngọt Anh Hòa. Được
                            thành lập từ năm 2004 tại con phố Ngõ Trạm, quận Hoàn Kiếm, Hà Nội. Trải qua hơn 15 năm phát
                            triển, đến nay Anh Hòa Bakery đã có 13 cơ sở kinh doanh đặt trên những tuyến phố đông dân cư
                            ở Hà Nội.</p>

                        <p> Các sản phẩm Anh Hòa Bakery được làm từ các nguyên liệu nhập khẩu của các nước có truyền
                            thống làm bánh như: Newzeland, Mỹ, Pháp, Bỉ. Với hương vị thơm ngon đặc trưng của các loại
                            kem, bơ, sữa, phô mai, hạt hạnh nhân, chocolate... dưới bàn tay khéo léo của những người thợ
                            làm bánh giàu kinh nghiệm.</p>

                        <p> Quy mô xưởng sản xuất rộng hơn 2000m2 với các thiết bị tiên tiến hiện đại theo tiêu chuẩn
                            ISO 2018, toàn bộ nhà máy được sơn phủ bởi sơn EPOXY đặc biệt. Anh Hòa Bakery luôn mang đến
                            cho khách hàng những sản phẩm chất lượng nhất, đảm bảo tuyệt đối về an toàn vệ sinh thực
                            phẩm.</p>
                        <h3> Tiêu chí kinh doanh</h3>
                        <ul>
                            <li>- Khách hàng là những đối tác quan trọng.</li>
                            <li>- Lắng nghe ý kiến phản hồi để kịp thời điều chỉnh hợp lý.</li>
                            <li>- Môi trường làm việc chuyên nghiệp, ổn định, thân thiện.</li>
                        </ul>
                        <p>Đội ngũ nhân viên có chuyên môn vững vàng, có tinh thần, trách nhiệm, sáng tạo, ham học hỏi.
                            Hệ thống nhà xưởng đạt tiêu chuẩn an toàn vệ sinh thực phẩm cùng dây chuyền sản xuất hiện
                            đại, khoa học; nguyên liệu được sử dụng từ các thương hiệu có uy tín trên thế giới như: Bỉ,
                            Pháp, New Zealand…</p>
                    </div>
                    <div class="container-section--introduceBake">
                        <h2>I. Giới thiệu về các loại mặt hàng</h2>
                        <h3> Các loại bánh</h3>
                        <div class="ListCakes">
                            <div class="cake-sweet">
                                <h3>Bánh ngọt</h3>
                                <img src="Images/ngot2.JPG" width="200px" height="200px" />
                                <p>Được biết đến bởi sự ngọt ngào và cuốn hút của chiếc bánh</p>
                            </div>
                            <div class="cake-sweet">
                                <h3>Bánh mì mặn</h3>
                                <img src="Images/my4.JPG" width="200px" height="200px" />
                                <p>Bánh dùng cho việc ăn nhanh phù hợp với nhu cầu của khách hàng</p>
                            </div>
                            <div class="cake-sweet">
                                <h3>Bánh sinh nhật</h3>
                                <img src="Images/sn2.JPG" width="200px" height="200px" />
                                <p>Bánh được trang trí đẹp mắt theo yêu cầu của khách hàng vào dịp sinh nhật</p>
                            </div>
                            <div class="cake-sweet">
                                <h3>Bánh sự kiện</h3>
                                <img src="Images/sk2.JPG" width="200px" height="200px" />
                                <p>Bánh được dùng cho các sự kiện, ngày đặc biệt như 08/03, 22/11 ...</p>
                            </div>
                        </div>
                       
                      <div class="ListCakes">
                            <div class="cake-sweet">
                                <h3>Bánh ngọt</h3>
                                <img src="Images/ngot2.JPG" width="200px" height="200px" />
                                <p>Được biết đến bởi sự ngọt ngào và cuốn hút của chiếc bánh</p>
                            </div>
                            <div class="cake-sweet">
                                <h3>Bánh mì mặn</h3>
                                <img src="Images/my4.JPG" width="200px" height="200px" />
                                <p>Bánh dùng cho việc ăn nhanh phù hợp với nhu cầu của khách hàng</p>
                            </div>
                            <div class="cake-sweet">
                                <h3>Bánh sinh nhật</h3>
                                <img src="Images/sn2.JPG" width="200px" height="200px" />
                                <p>Bánh được trang trí đẹp mắt theo yêu cầu của khách hàng vào dịp sinh nhật</p>
                            </div>
                            <div class="cake-sweet">
                                <h3>Bánh sự kiện</h3>
                                <img src="Images/sk2.JPG" width="200px" height="200px" />
                                <p>Bánh được dùng cho các sự kiện, ngày đặc biệt như 08/03, 22/11 ...</p>
                            </div>
                        </div>
                        <div class="container-section--introduceStory">
                            <h2>I. Giới thiệu về hệ thống cửa hàng</h2>
                            <h3>Hệ thống các cơ sở kinh doanh:</h3>
                            <ul>
                                <li> Cơ sở 01: Số 38 Phùng Hưng, Hoàn Kiếm, Hà Nội</li>

                                <li>Cơ sở 02: Số 78 Láng Hạ, Đống Đa, Hà Nội</li>

                                <li>Cơ sở 03: Số 9 Trần Thái Tông, Cầu Giấy, Hà Nội</li>

                                <li>Cơ sở 04: Số 429 Âu Cơ, Tây Hồ, Hà Nội</li>

                                <li> Cơ sở 05: Số 55 Khuất Duy Tiến, Thanh Xuân, Hà Nội</li>

                                <li>Cơ sở 06: Số 580 Trường Chinh, Đống Đa, Hà Nội</li>

                                <li>Cơ sở 07: Số 48 Trần Đại Nghĩa, Hai Bà Trưng, Hà Nội</li>

                                <li>Cơ sở 08: Số 15 Kim Đồng, Hoàng Mai, Hà Nội</li>

                                <li> Cơ sở 09: Số 80 Ngọc Lâm, Long Biên, Hà Nội</li>

                                <li> Cơ sở 10: Số 219 Khâm Thiên, Đống Đa, Hà Nội</li>

                                <li>Cơ sở 11: Số 130 Lò Đúc, Hai Bà Trưng, Hà Nội</li>

                                <li>Cơ sở 12: Số 275 Hồ Tùng Mậu - Cầu Diễn</li>

                                <li>Cơ sở 13: Số 30 Đường 70 Yên Xá - Tân Triều</li>
                            </ul>
                            </h3>
                        </div>
                    </div>
            </section>
            <!-- END  -->
</asp:Content>
