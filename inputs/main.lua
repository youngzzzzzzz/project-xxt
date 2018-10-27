-- 此处为nLog功能实现操作
nLog = require('nLog')()

require('faker')
require('xxtsp')



address ={
	
	
{"力士沐浴露","彭森生","福建省泉州市鲤城区侨乡商品1-313号","15280889719",},
{"龙猫充电宝","贾静晓","上海市浦东新区川沙镇新川路768号","13511645365",},
{"美的电压力锅","维津","福建省泉州市惠安县峰崎村香格里茶业隔壁服装店","15880920275",},
{"浴巾","吴征明","贵州省安顺市蔡官镇新路口北斗小区2单元601室","13098532249",},
{"飞科剃须刀192","张永庆","河南省周口市商水县平店乡","17643177054",},
{"苏泊尔电压力锅2.5L","玉凌","福建省泉州市惠安县惠兴街漂亮E点理发店","13489256320",},
{"力士沐浴露","吴梅","福建晋江青阳福隆广场1期5栋1712","18050979819",},
{"美的电烤箱","玉凌","福建省泉州市惠安县惠兴街漂亮E点理发店","13489256320",},
{"苏泊尔电压力锅2.5L","何碧硕","福建省泉州市惠安县霞张红联幼儿园对面豆腐店","13489256752",},
{"小麦牙刷","吴征明","贵州省安顺市蔡官镇新路口北斗小区2单元601室","13098532249",},
{"美的电饭煲FS40174L","任光翠","福建省泉州市惠安县海城园林天下8号楼805室","15280471856",},
{"美的电烤箱","维津","福建省泉州市惠安县峰崎村香格里茶业隔壁服装店","15880920275",},
{"飞科剃须刀192","袁田方","河南省周口市商水县袁庄乡","15559116895",},
{"美的电磁炉2170","何玉雪","福建省泉州市惠安县海城园林天下","13459555934",},
{"电动车档披风","张芳","福建省泉州市惠安县惠兴街漂亮E点理发店","18050925205",},
{"美的电压力锅","吴梅","福建晋江青阳福隆广场1期5栋1712","18050979819",},
{"美的电饭煲FS40174L","何玉雪","福建省泉州市惠安县海城园林天下","13459555934",},
{"小麦牙刷","维津","福建省泉州市惠安县峰崎村香格里茶业隔壁服装店","15880920275",},
{"苏泊尔电压力锅2.5L","任光翠","福建省泉州市惠安县海城园林天下8号楼805室","15280471856",},
{"美的电磁炉2170","郑伟杰","福建省泉州市惠安县辋川镇后许村村委会","15059504270",},
{"浴巾","郑少杰","福建省漳州市漳浦县古雷区新港城9区12号2单元801","18960211900",},
{"苏泊尔电压力锅2.5L","何碧硕","福建省泉州市惠安县霞张红联幼儿园对面豆腐店","13489256752",},
{"穆家纺枕头3对","烨彬","福建省泉州市惠安县海城园林天下8号楼805室","15285443712",},
{"飞科剃须刀192","袁田方","河南省周口市商水县袁庄乡","15559116895",},
{"苏泊尔电压力锅2.5L","郑少杰","福建省泉州市惠安县海城园林天下","18960211900",},
{"美的电饭煲FS40174L","任光翠","福建省泉州市惠安县海城园林天下8号楼805室","15280471856",},
{"美的电磁炉2170","张芳","福建省泉州市惠安县惠兴街漂亮E点理发店","18050925205",},


}

t={}
t.搜索界面={{{44,84,0x4c4c4c},{568,82,0x5f5f5f},{563,70,0xfefefe},{137,80,0xeeeeee},},85}
t.提交订单界面={{{531,1074,0xffd34f},{537,1069,0x464235},{336,1062,0x333333},{346,1069,0xf6f6f6},}, 85, 227, 1005, 633, 1130}
	t.提交订单界面_请填写收件地址={{{200,166,0xff5c35},{200,153,0xff5e38},{200,178,0xff5e38},}, 85, 10, 138, 241, 198}
t.提交订单界面_新增地址按钮={{{392,1099,0xffda4b},{34,1093,0xffda4b},{289,1052,0xffda4b},{315,1100,0x4c4c4c},}, 85, 16, 1033, 623, 1133}
	t.提交订单界面_新增地址按钮_已经有地址={{{38,349,0x4c4c4c},{38,358,0xffdb4c},{39,334,0xffdb4c},}, 85, 16, 146, 83, 595}
t.提交订单界面_新增地址界面={{{564,87,0x616161},{562,83,0xfbfbfb},{353,84,0x4c4c4c},{351,84,0xfefefe},{352,97,0x4c4c4c},},85}
	




function add_address()
	input_key = true
	while true do
		if d(t.提交订单界面,"t.提交订单界面")then
			if d(t.提交订单界面_请填写收件地址,"t.提交订单界面_请填写收件地址",true)then
			elseif d(t.提交订单界面,"t.提交订单界面",true)then
			end
		elseif d(t.提交订单界面_新增地址按钮,"t.提交订单界面_新增地址按钮")then
			delay(3)
			if d(t.提交订单界面_新增地址按钮_已经有地址,"t.提交订单界面_新增地址按钮_已经有地址")then
				sys.alert("地址完成",1)
				os.exit()
			elseif d(t.提交订单界面_新增地址按钮,"t.提交订单界面_新增地址按钮",true)then
			end
			
			
		elseif d(t.提交订单界面_新增地址界面,"t.提交订单界面_新增地址界面")then
			if input_key then
				click(599,163)
				input(address[key][2])
				click(614, 243)
				input(address[key][4])
				
				click(495,321)
				click(357, 477)
				input(address[key][3])
				delay(10)
				input_key = false
			end
		end
		delay(1)
	end
end

-- XXTfakerNewPhone(app.front_bid())
--[[]]
key = 1

if d(t.搜索界面,"t.搜索界面")then
	click(187,80)
	input(address[key][1])
else
	add_address()
end

--]]




