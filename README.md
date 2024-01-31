Thiết Kế Cơ Sở Dữ Liệu cho Hệ Thống Thư Viện Sách

Hướng dẫn cài đặt MySQL

Cách 1: Download và cài đặt MySQL qua hướng dẫn tại https://dev.mysql.com/doc/refman/8.2/en/installing.html

Cách 2: Cài đặt MySQL trên docker
+ Cài đặt docker qua hướng dẫn: https://docs.docker.com/desktop/
+ Cài đặt MySQL bằng docker commdline: `docker run --name learn-mysql -e MYSQL_ROOT_PASSWORD=123 -p 8080:3306 -d mysql:latest`
+ Sau khi cài đặt, user là root và password là 123
  
Hướng dẫn cài đặt MySQL Workbench

+ Download MySQL Workbench qua hướng dẫn: https://dev.mysql.com/doc/workbench/en/wb-installing.html
+ Tạo MySQL Connection với user/pass đã tạo khi cài đặt MySQL (root/123)
Chạy SQL script để tạo database, bảng và nhập dữ liệu vào các bảng

Chạy tuần tự các scrip sau: https://github.com/nguyenhoangkhue/doan-database/blob/main/doan-mysql.sql

Sơ đồ cơ sở dữ liệu: https://github.com/nguyenhoangkhue/doan-database/blob/main/Library_diagram.png

Chi tiết database design: https://husteduvn-my.sharepoint.com/:x:/r/personal/khue_nh232412_sis_hust_edu_vn/_layouts/15/Doc.aspx?sourcedoc=%7B9515cbc7-de8a-449c-bc5e-5bfb3dd843c0%7D&action=edit&wdnewandopenct=1706620168774&wdorigin=OFFICECOM-HWA.START.NEW&wdprevioussessionsrc=HarmonyDesktop&wdprevioussession=b945d697-9f2d-404f-a8bf-2b68b2e093fe&wdenableroaming=1&wdodb=1&wdredirectionreason=Force_SingleStepBoot&wdinitialsession=5ecd4c15-f8f9-4863-b060-db1aba90ab91&wdrldsc=2&wdrldc=1&wdrldr=ContinueInExcel
