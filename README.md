# Databases-CCH-Rantina

# En la carpeta Backups se sube el backup previo a la actualización del sistema
# En la carpeta DB_Version se sube la base de datos backup con los nuevos campos que necesita para funcionar

## llena la base camping_dev con data de la base campingprodu 

#Borrar la base dev que está en localhost
#Ejecutar Migrate Fresh
#ejecutar passport
#ejecutar seed de producción


INSERT INTO camping_dev.equipment SELECT * FROM db_backup.equipment

INSERT INTO camping_backup.equipment_rents SELECT * FROM campingprodu.equipment_rents;

INSERT INTO camping_backup.galleries SELECT * FROM campingprodu.galleries;

INSERT INTO camping_backup.inventories SELECT * FROM campingprodu.inventories;
INSERT INTO camping_backup.products SELECT * FROM campingprodu.products;
INSERT INTO camping_backup.suppliers SELECT * FROM campingprodu.suppliers;
INSERT INTO camping_backup.product_warehouses SELECT * FROM campingprodu.product_warehouses;
-- INSERT INTO camping_backup.enterprises SELECT * FROM campingprodu.enterprises;
INSERT INTO camping_backup.categories SELECT * FROM campingprodu.categories;


INSERT INTO camping_backup.monthly_tours SELECT * FROM campingprodu.monthly_tours;


INSERT INTO camping_backup.products (product_id, category_id, supplier_id, description, buying_price, min_selling_price, selling_price, rent_price, entry_date, img, observation, created_at, updated_at)
SELECT product_id, category_id, supplier_id, description, buying_price, min_selling_price, selling_price, rent_price, entry_date, img, NULL, created_at, updated_at
FROM campingprodu.products;

INSERT INTO camping_backup.product_warehouses SELECT * FROM campingprodu.product_warehouses;

INSERT INTO camping_backup.tour_catalogues SELECT * FROM campingprodu.tour_catalogues;






