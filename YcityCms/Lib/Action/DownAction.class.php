<?php
/**
 * 
 * 下载
 *
 * @package      	Y-city Corp
 * @author          Y-city <y_city@qeeyang.com>
 * @copyright     	Copyright (c) 2008-2012  (http://www.y-city.net.cn)
 * @version        	YCITYCMS v2.2.0 2012-03-26 Y-city $

 */
if(!defined("YCITYCMS")) exit("Access Denied"); 
class DownAction extends HomeAction
{
    public $dao,$id,$down,$list_type;
    function _initialize()
    {
        parent::_initialize();
        if(!parent::isLogin())redirect( U('Public/login',array('jumpUri'=>safe_b64encode($_SERVER['REQUEST_URI']))));
        $this->dao = M('Download');
        $row=M('Category')->where("module='Download' and parent_id=0")->findAll();
        $this->id=$row[0]['id'];
        $this->assign('data', $row[0]);
    }
    /**
     * 列表
     *
     */
    public function index()
    {
        $condition['a.category_id'] = array('eq', $this->id);
        $condition['a.status'] = array('eq', 0);
      //  $this->assign('category', $this->category);
        parent::getJoinList($condition, 'a.id DESC', 15, C('DB_PREFIX').'download a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');
    }
    
    /**
     * 内容
     *
     */
    public function detail(){
       
        if(!isset($_GET['item'])){parent::_empty();exit(404);}
        $titleId = intval($_GET['item']);
        $contentDetail=parent::getJustDetail(array('a.id='.$titleId, "id={$titleId}"), false, C('DB_PREFIX').'download a', C('DB_PREFIX').'category b on a.category_id=b.id','a.*, b.title as categoryName');
    //    $contentDetail['attach_file']=str_replace('/','-down-',$contentDetail['attach_file']);
       /* if($contentDetail['status']==1) {
            $contentDetail = parent::forShowHtml(array('title', 'content'), $contentDetail);
        }*/
        $this->assign('contentDetail',$contentDetail);
        $this->display();
    }

    public function downFiles()
    {
        if(!isset($_GET['item'])){parent::_empty();exit(404);}
        $item = intval($_GET['item']);
        $condition['id']=$item;
        $row=$this->dao->where($condition)->find();
        $this->dao->setInc('view_count',$condition);
        $file=$row['attach_file'];
     //   $file=str_replace('-down-','/',$_GET['file']);
        $filename=Uploads_PATH.DIRECTORY_SEPARATOR.$file; //文件名
        $ext=pathinfo($filename,PATHINFO_EXTENSION);
        $date=date("Ymd-H:i:m");
        header( "Content-type:  application/octet-stream ");
        header( "Accept-Ranges:  bytes ");
        header( "Accept-Length: " .filesize($filename));
        header( "Content-Disposition:  attachment;  filename= {$date}.{$ext}");
        echo file_get_contents($filename);
      //  readfile($filename);
    }
}