#การใช้คำสั่ง LIKE ค้นหาชื่อที่ขึ้นต้นด้วยอักษร ‘ห’
SELECT * FROM WLBProducts
WHERE ProductsName LIKE 'ห%' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่ลงท้ายด้วยอักษร ‘ก’
SELECT * FROM WLBProducts
WHERE ProductsName LIKE '%ก' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่มีอักษร ‘ด’ จุดไหนก็ได้ของชื่อ
SELECT * FROM WLBProducts
WHERE ProductsName LIKE '%ด%' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่อักษรตัวแรก เพียง 1 ตัว ขึ้นต้นด้วยอักษรใดก็ได้และอักษรทั้งหมดจะลงท้ายด้วยอะไรก็ได้ แต่ตัวอักษรที่ 2 ต้องเป็นอักษร ‘ด’
SELECT * FROM WLBProducts
WHERE ProductsName LIKE '_ด%' ;

#การใช้คำสั่ง LIKE ค้นหาชื่อที่ขึ้นต้นด้วยอักษร ‘ห’ และต้องลงท้ายด้วยอักษร ‘ก’
SELECT * FROM WLBProducts
WHERE ProductsName LIKE 'ห%ก' ;

#การใช้คำสั่ง OREDER BY DESC เพื่อเรียกดูข้อมูล ราคาสินค้าจากมากไปน้อย
SELECT * FROM WLBProducts
ORDER BY Price DESC;

#การใช้คำสั่ง OREDER BY ASC เพื่อเรียกดูข้อมูล ราคาสินค้าจากน้อยไปมาก
SELECT * FROM WLBProducts
ORDER BY Stock ASC;

#การใช้คำสั่ง OREDER BY ASC เพื่อเรียกดูข้อมูล ชื่อสินค้าที่ขึ้นต้นด้วย ก-ฮ
SELECT * FROM WLBProducts
ORDER BY ProductsName ASC;

#การใช้คำสั่ง OREDER BY DESC เพื่อเรียกดูข้อมูล ชื่อสินค้าที่ขึ้นต้นด้วย ฮ-ก
SELECT * FROM WLBProducts
ORDER BY ProductsName DESC;

#การใช้คำสั่ง LIMIT เพื่อเรียกดูข้อมูลตามจำนวนที่ต้องการ
SELECT ProductsName, Price
FROM WLBProducts
WHERE Price < 350
LIMIT 3;

#การใช้คำสั่ง UPDATE เพื่ออัพเดทข้อมูลที่มีอยู่ในตาราง
UPDATE WLBProducts
SET Stock = 250
WHERE ProductsName = 'หน้ากากN95';

#การใช้คำสั่ง DELETE ลบข้อมูลออกจากตาราง
DELETE FROM WLBProducts
WHERE Stock = 0;

#การใช้คำสั่ง SUM เพื่อรวมผลลัพธ์
SELECT SUM(Stock) AS สต็อกรวม
FROM WLBProducts;

#การใช้คำสั่ง COUNT เพื่อนับจำนวนข้อมูล
SELECT COUNT(ProductsName) AS count_products
FROM WLBProducts

#การใช้คำสั่ง AVG เพื่อหาค่าเฉลี่ย
SELECT AVG(Price) AS avg_price
FROM WLBProducts;