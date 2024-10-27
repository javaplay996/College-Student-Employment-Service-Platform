const menu = {
    list() {
        return [
    {
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"企业管理",
                        "menuJump":"列表",
                        "tableName":"gongsi"
                    }
                ],
                "menu":"企业管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"学生管理",
                        "menuJump":"列表",
                        "tableName":"yonghu"
                    }
                ],
                "menu":"学生管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"老师管理",
                        "menuJump":"列表",
                        "tableName":"laoshi"
                    }
                ],
                "menu":"老师管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"学生档案管理",
                        "menuJump":"列表",
                        "tableName":"dangan"
                    }
                ],
                "menu":"学生档案管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"法律法规管理",
                        "menuJump":"列表",
                        "tableName":"falvfagui"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"法律法规留言管理",
                        "menuJump":"列表",
                        "tableName":"falvfaguiLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"法律法规收藏管理",
                        "menuJump":"列表",
                        "tableName":"falvfaguiCollection"
                    }
                ],
                "menu":"法律法规管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "报表"
                        ],
                        "menu":"就业分析管理",
                        "menuJump":"列表",
                        "tableName":"fenxi"
                    }
                ],
                "menu":"就业分析管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"职位招聘管理",
                        "menuJump":"列表",
                        "tableName":"zhaopin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"招聘咨询管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"职位收藏管理",
                        "menuJump":"列表",
                        "tableName":"zhaopinCollection"
                    }
                ],
                "menu":"职位招聘管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"论坛管理",
                        "menuJump":"列表",
                        "tableName":"forum"
                    }
                ],
                "menu":"论坛管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"简历管理",
                        "menuJump":"列表",
                        "tableName":"jianli"
                    }
                ],
                "menu":"简历管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"简历投递管理",
                        "menuJump":"列表",
                        "tableName":"toudi"
                    }
                ],
                "menu":"简历投递管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻资讯管理",
                        "menuJump":"列表",
                        "tableName":"xinwen"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"新闻资讯留言管理",
                        "menuJump":"列表",
                        "tableName":"xinwenLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"新闻资讯收藏管理",
                        "menuJump":"列表",
                        "tableName":"xinwenCollection"
                    }
                ],
                "menu":"新闻资讯管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除",
                            "报表"
                        ],
                        "menu":"学生信息管理",
                        "menuJump":"列表",
                        "tableName":"xinxi"
                    }
                ],
                "menu":"学生信息管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"宣传管理",
                        "menuJump":"列表",
                        "tableName":"xuanchuan"
                    }
                ],
                "menu":"宣传管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "添加考题",
                            "删除"
                        ],
                        "menu":"试卷管理",
                        "menuJump":"列表",
                        "tableName":"exampaper"
                    }
                ],
                "menu":"试卷管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"试题管理",
                        "menuJump":"列表",
                        "tableName":"examquestion"
                    }
                ],
                "menu":"试题管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"考试记录",
                        "menuJump":"列表",
                        "tableName":"examrecord"
                    },
                    {
                        "buttons":[
                            "查看",
                            "删除"
                        ],
                        "menu":"错题本",
                        "menuJump":"列表",
                        "tableName":"examrewrongquestion"
                    }
                ],
                "menu":"考试管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"学生档案类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryDangan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"法律法规类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryFalvfagui"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"就业分析类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryFenxi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"企业类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryGongsi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"求职意向管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryJianli"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"科目管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryKemu"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"招聘类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryLeixing"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"新闻资讯类型管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryXinwen"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"学生专业管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryXinxi"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"学生班级管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryXinxiBanji"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"招聘岗位管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZhaopin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "删除",
                            "修改"
                        ],
                        "menu":"组卷方式管理",
                        "menuJump":"列表",
                        "tableName":"dictionaryZujuan"
                    }
                ],
                "menu":"基础数据管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"轮播图管理",
                        "menuJump":"列表",
                        "tableName":"config"
                    }
                ],
                "menu":"轮播图信息"
            }
            /*,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"数据备份",
			            "menuJump":"列表",
			            "tableName":"beifen"
			        },
					{
					    "buttons":[
					        "查看"
					    ],
					    "menu":"数据还原",
					    "menuJump":"列表",
					    "tableName":"huanyuan"
					}
			    ],
			    "menu":"数据库管理"
			}*/
        ],
        "frontMenu":[],
        "hasBackLogin":"是",
        "hasBackRegister":"否",
        "hasFrontLogin":"否",
        "hasFrontRegister":"否",
        "roleName":"管理员",
        "tableName":"users"
    },
            {
                "backMenu":[
                    {
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"法律法规管理",
                                "menuJump":"列表",
                                "tableName":"falvfagui"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"法律法规留言管理",
                                "menuJump":"列表",
                                "tableName":"falvfaguiLiuyan"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "删除"
                                ],
                                "menu":"法律法规收藏管理",
                                "menuJump":"列表",
                                "tableName":"falvfaguiCollection"
                            }
                        ],
                        "menu":"法律法规管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"学生档案管理",
                                "menuJump":"列表",
                                "tableName":"dangan"
                            }
                        ],
                        "menu":"学生档案管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除",
                                    "报表"
                                ],
                                "menu":"就业分析管理",
                                "menuJump":"列表",
                                "tableName":"fenxi"
                            }
                        ],
                        "menu":"就业分析管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"论坛管理",
                                "menuJump":"列表",
                                "tableName":"forum"
                            }
                        ],
                        "menu":"论坛管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除",
                                    "报表"
                                ],
                                "menu":"学生信息管理",
                                "menuJump":"列表",
                                "tableName":"xinxi"
                            }
                        ],
                        "menu":"学生信息管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"学生档案类型管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryDangan"
                            }

                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"就业分析类型管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryFenxi"
                            }

                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"学生专业管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryXinxi"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"学生班级管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryXinxiBanji"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"招聘岗位管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryZhaopin"
                            }

                        ],
                        "menu":"基础数据管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"轮播图管理",
                                "menuJump":"列表",
                                "tableName":"config"
                            }
                        ],
                        "menu":"轮播图信息"
                    }
                    /*,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"数据备份",
                                "menuJump":"列表",
                                "tableName":"beifen"
                            },
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"数据还原",
                                "menuJump":"列表",
                                "tableName":"huanyuan"
                            }
                        ],
                        "menu":"数据库管理"
                    }*/
                ],
                "frontMenu":[],
                "hasBackLogin":"是",
                "hasBackRegister":"否",
                "hasFrontLogin":"否",
                "hasFrontRegister":"否",
                "roleName":"老师",
                "tableName":"laoshi"
            },
            {
                "backMenu":[
                    {
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"职位招聘管理",
                                "menuJump":"列表",
                                "tableName":"zhaopin"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"招聘咨询管理",
                                "menuJump":"列表",
                                "tableName":"zhaopinLiuyan"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "删除"
                                ],
                                "menu":"职位收藏管理",
                                "menuJump":"列表",
                                "tableName":"zhaopinCollection"
                            }
                        ],
                        "menu":"职位招聘管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                ],
                                "menu":"论坛管理",
                                "menuJump":"列表",
                                "tableName":"forum"
                            }
                        ],
                        "menu":"论坛管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除",
                                    "审核"
                                ],
                                "menu":"简历投递管理",
                                "menuJump":"列表",
                                "tableName":"toudi"
                            }
                        ],
                        "menu":"简历投递管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"宣传管理",
                                "menuJump":"列表",
                                "tableName":"xuanchuan"
                            }
                        ],
                        "menu":"宣传管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "添加考题",
                                    "删除"
                                ],
                                "menu":"试卷管理",
                                "menuJump":"列表",
                                "tableName":"exampaper"
                            }
                        ],
                        "menu":"试卷管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"试题管理",
                                "menuJump":"列表",
                                "tableName":"examquestion"
                            }
                        ],
                        "menu":"试题管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "删除"
                                ],
                                "menu":"考试记录",
                                "menuJump":"列表",
                                "tableName":"examrecord"
                            },
                            {
                                "buttons":[
                                    "查看",
                                    "删除"
                                ],
                                "menu":"错题本",
                                "menuJump":"列表",
                                "tableName":"examrewrongquestion"
                            }
                        ],
                        "menu":"考试管理"
                    }
                    ,{
                        "child":[

                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"企业类型管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryGongsi"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"求职意向管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryJianli"
                            },
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"招聘类型管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryLeixing"
                            }
                            ,
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "删除",
                                    "修改"
                                ],
                                "menu":"招聘岗位管理",
                                "menuJump":"列表",
                                "tableName":"dictionaryZhaopin"
                            }
                        ],
                        "menu":"基础数据管理"
                    }
                    ,{
                        "child":[
                            {
                                "buttons":[
                                    "查看",
                                    "新增",
                                    "修改",
                                    "删除"
                                ],
                                "menu":"轮播图管理",
                                "menuJump":"列表",
                                "tableName":"config"
                            }
                        ],
                        "menu":"轮播图信息"
                    }
                    /*,{
                        "child":[
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"数据备份",
                                "menuJump":"列表",
                                "tableName":"beifen"
                            },
                            {
                                "buttons":[
                                    "查看"
                                ],
                                "menu":"数据还原",
                                "menuJump":"列表",
                                "tableName":"huanyuan"
                            }
                        ],
                        "menu":"数据库管理"
                    }*/
                ],
                "frontMenu":[],
                "hasBackLogin":"是",
                "hasBackRegister":"否",
                "hasFrontLogin":"否",
                "hasFrontRegister":"否",
                "roleName":"企业",
                "tableName":"gongsi"
            },

]
    }
}
export default menu;
