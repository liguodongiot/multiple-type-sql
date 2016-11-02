
--------------------------------------------------------------
--简单case函数
CASE a.location
	WHEN '1' THEN '首页'
	WHEN '2' THEN '543封顶'
	WHEN '3' THEN '43顶'
	WHEN '4' THEN '65抢'
	WHEN '5' THEN '优543'
	WHEN '6' THEN '签到页'
	WHEN '7' THEN '校543区'
	WHEN '8' THEN '每346件'
	WHEN '9' THEN '日rte历'
	WHEN '10' THEN '精456预告'
	WHEN '11' THEN '全654分类'
	WHEN '12' THEN '今654新'
	WHEN '13' THEN '开654图'
	ELSE '其他' 
END 

--------------------------------------------------------------
--case搜索函数

case
	when mall.pos_type='bdlst' and mall.version>='4.8.6' and mall.refer like 'brand%' then '品月份牌街'
	when mall.pos_type='searc' and split(mall.pos_value,'_')[0]='searc' then '搜gafg索'
	when mall.pos_type='shopc' and mall.pos_value='shopc' then '购hgf车'
	when mall.pos_type='jutag' and split(mall.pos_value,'_')[0]='jutag2nd' then '二级hfg类'
	when mall.pos_type='shop' and split(mall.pos_value,'_')[0]='shop' then '店g'
	when mall.pos_type='jutag' and split(mall.pos_value,'_')[0]='jutag' then '一级fgf类'
	when mall.pos_type='bdlst' and split(mall.pos_value,'_')[0]='bdlst' then '品牌hgf品列表页'
	when mall.pos_type='home' and mall.pos_value='home' then '首页hgf列表'
	when mall.pos_type='jutag' and split(mall.pos_value,'_')[0]='baoyou' then '9hgf邮'
	when mall.pos_type='youph' then '优fgd汇'
	when (mall.pos_type='today' or (mall.pos_type='waptp' and mall.pos_value like 'jrgxx%')) 
		and  mall.platform in ('android','Android','iphone','iPhone') then '今gfh新'
	when mall.pos_type='ten' then '每fgd十件'
	when mall.pos_type='waptp' and split(mall.pos_value,'_')[0]='xszq2j8z' then '2件hgf折'
	--when mall.special_activity_type='9' then '限hgf抢'
	when mall.pos_type='waptp' and split(mall.pos_value,'_')[0]='9d9yzq' then 'hgf户首页'
	when mall.pos_type='waptp' and split(mall.pos_value,'_')[0]='xs1yq' then 'gfh款'
	when mall.cheap_amount_type='8' and (mall.amount-mall.cheap_amount)/100=0.1 then '限hgf享'
	-- when pay.special_activity_type=6 then '拼hgf线'
	when mall.pos_type='waptp' and mall.refer='brand' then '品ds街'
	when mall.pos_type = 'waptp' and mall.pos_value like 'xszq%' then '新人fds抢'
end




--注：Case函数只返回第一个符合条件的值，剩下的Case部分将会被自动忽略。
--比如说，下面这段SQL，你永远无法得到“第二类”这个结果
CASE 
	WHEN col_1 IN ( 'a', 'b') THEN '第一类'
	WHEN col_1 IN ('a') THEN '第二类'
	ELSE '其他' 
END




