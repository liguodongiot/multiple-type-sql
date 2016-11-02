
--注：
--Hive不支持 \w ,\d等方式。必须写成对应的 [a-zA-Z_],[0-9]
--
--------------------------------------------------------------
--regexp_extract

--eg:  /gfd/gfdgh.gif?clickkey=order_details_seller_service&hiveid=gdfs43534&date=1476756674765&userid=5454366 

select regexp_extract(request_url,'clickkey=([a-zA-Z0-9_]+)',1) as click_key,
regexp_extract(request_url,'userid=([0-9]+)',1) as user_id 
from temp_table
where partitiontime='20161018' and request_url like '%clickkey=order_details_seller_service%' limit 100;






--------------------------------------------------------------
--regexp

