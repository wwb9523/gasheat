<?php
/**
 * 
 * 首页
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(!defined("YCITYCMS")) exit("Access Denied");
class IndexAction extends HomeAction 
{
	public $dao,$conf;
	function _initialize()
    {
        parent::_initialize();
	    $this->dao=D('Category');
	    $this->conf=array(
		    'introduce'=>array(
			    'title'=>'指导小组介绍',
			    'module'=>'page',
			    'limit'=>1
		    ),
		    'overview'=>array(
			    'title'=>'各校建环专业概况',
			    'limit'=>6
		    ),
		    'teacher'=>array(
			    'title'=>'教师风采',
			    'limit'=>6
		    ),
		    'interflow'=>array(
			  'title'=> '教学成果交流',
			    'limit'=>6,
			    'module'=>'download'
		    ),
		    'exhibition'=>array(
			    'title'=>'研究成果展示',
			    'limit'=>6
		    ),
		    'meeting'=>array(
			    'title'=>'会议和动态',
			    'limit'=>9
		    )
	    );
    }
	
	public function index()
	{
		foreach ($this->conf as $item=>$value){
			$condition=array();
			$condition['title']=$value['title'];
			$row=M('Category')->where($condition)->field('id')->select();
			$id=$row[0]['id'];
			$condition=array();
			$condition['b.id']=$id;
			$limit=$value['limit']?$value['limit']:6;
			$module=$value['module']?$value['module']:'news';
			$news=parent::getJustList($condition,'a.id DESC',C('DB_PREFIX').$module.' a',C('DB_PREFIX').'category b on a.category_id=b.id','a.*',$limit);
			$this->assign($item.'Title',$value['title']);
			$this->assign($item.'ParentId',$id);
			$this->assign($item,$news);
		}
        $this->display();
	}
}