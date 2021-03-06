<?php

namespace Model;

/**
 * 所有内容模型
 */
class ContentModel extends ContentBaseModel
{

    public $_tbl = '';

    public function __construct($name = '', $tablePrefix = '', $connection = '')
    {
        parent::__construct($name, $tablePrefix, $connection);
    }

    public function add($data = array())
    {
        if (!$data)
        {
            $data = I('post');
        }

        if ($this->create($data))
        {
            if (parent::add())
            {
                return true;
            }
            return false;
        } else
        {
            return true;
        }
    }

    /**
     * 简单列表分页 按照ID 倒序
     * @param int $cid
     * @param int $page
     * @param int $pagesize
     * 
     */
    public function SimpleList($cid, $page = 1, $pagesize = 20)
    {
        $condition = array('cid' => $cid);
        $offset = ($page - 1) * 20;
        return $this->limit($offset, $pagesize)->where($condition)->select();
    }

    /**
     * 删除文章
     * @param int $id
     */
    public function delcontent($id)
    {
        return $this->where(array('id' => $id))->delete();
    }

    /**
     * 根据主键查找信息
     * @param type $id
     */
    public function findbyId($id)
    {
        $condition = array('id' => $id);
        return $this->where($condition)->find();
    }

    public function SimpleLimit($cid, $limit)
    {
        $condition = array(
            'cid' => $cid,
        );
        return $this->where($condition)->limit($limit)->select();
    }

    /**
     * 修改数据
     * @param array $data
     * @param int $id
     */
    public function editData($data, $id)
    {
        if (!$data)
        {
            $data = I('post.');
        }
        if ($this->create($data, 2))
        {
            $condition = array('id' => $id);
            return $this->where($condition)->save();
        } else
        {
            return false;
        }
    }

}
