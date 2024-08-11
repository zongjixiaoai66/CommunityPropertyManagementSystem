package com.entity.vo;

import com.entity.FangwuEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 房产信息
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("fangwu")
public class FangwuVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 用户
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 房屋编号
     */

    @TableField(value = "fangwu_uuid_number")
    private String fangwuUuidNumber;


    /**
     * 楼栋
     */

    @TableField(value = "fangwu_loudong")
    private String fangwuLoudong;


    /**
     * 单元
     */

    @TableField(value = "fangwu_danyuan")
    private String fangwuDanyuan;


    /**
     * 房号
     */

    @TableField(value = "fangwu_fanghao")
    private String fangwuFanghao;


    /**
     * 房产类型
     */

    @TableField(value = "fangwu_types")
    private Integer fangwuTypes;


    /**
     * 房屋备注
     */

    @TableField(value = "fangwu_content")
    private String fangwuContent;


    /**
     * 添加时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：用户
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：用户
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：房屋编号
	 */
    public String getFangwuUuidNumber() {
        return fangwuUuidNumber;
    }


    /**
	 * 获取：房屋编号
	 */

    public void setFangwuUuidNumber(String fangwuUuidNumber) {
        this.fangwuUuidNumber = fangwuUuidNumber;
    }
    /**
	 * 设置：楼栋
	 */
    public String getFangwuLoudong() {
        return fangwuLoudong;
    }


    /**
	 * 获取：楼栋
	 */

    public void setFangwuLoudong(String fangwuLoudong) {
        this.fangwuLoudong = fangwuLoudong;
    }
    /**
	 * 设置：单元
	 */
    public String getFangwuDanyuan() {
        return fangwuDanyuan;
    }


    /**
	 * 获取：单元
	 */

    public void setFangwuDanyuan(String fangwuDanyuan) {
        this.fangwuDanyuan = fangwuDanyuan;
    }
    /**
	 * 设置：房号
	 */
    public String getFangwuFanghao() {
        return fangwuFanghao;
    }


    /**
	 * 获取：房号
	 */

    public void setFangwuFanghao(String fangwuFanghao) {
        this.fangwuFanghao = fangwuFanghao;
    }
    /**
	 * 设置：房产类型
	 */
    public Integer getFangwuTypes() {
        return fangwuTypes;
    }


    /**
	 * 获取：房产类型
	 */

    public void setFangwuTypes(Integer fangwuTypes) {
        this.fangwuTypes = fangwuTypes;
    }
    /**
	 * 设置：房屋备注
	 */
    public String getFangwuContent() {
        return fangwuContent;
    }


    /**
	 * 获取：房屋备注
	 */

    public void setFangwuContent(String fangwuContent) {
        this.fangwuContent = fangwuContent;
    }
    /**
	 * 设置：添加时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：添加时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
