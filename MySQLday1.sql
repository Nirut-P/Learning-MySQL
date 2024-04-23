#สร้าง Table
CREATE TABLE `WLBProducts`.`Products` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `ProductsName` VARCHAR(100) NOT NULL,
  `Price` INT NOT NULL,
  `Stock` INT NOT NULL,
  PRIMARY KEY (`id`));
#เพิ่มข้อมูลในตาราง
INSERT INTO WLBProducts (ProductsName, Price, Stock)
VALUES ('หน้ากากN95',30,100),
	  ('กระดาษA4',45,200),
          ('ปากกาเมจิก',25,100),
          ('กระดาษแข็ง',10,230);
#Query ดูข้อมูลทั้งหมดในตาราง
SELECT * FROM WLBProducts.Products;
#เรียกดูข้อมูลเฉพาะชื่อสินค้าและจำนวนคงเหลือ
SELECT ProductsName, Stock
FROM Products;
#เรียกดูข้อมูลด้วยคำสั่ง WHERE
SELECT * FROM WLBProducts.Products
WHERE id = 1;
SELECT * FROM WLBProducts.Products
WHERE price = 50;
SELECT * FROM WLBProducts.Products
WHERE id > 2 or price > 100;