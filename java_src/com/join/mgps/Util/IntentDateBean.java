package com.join.mgps.Util;

import com.join.mgps.dto.ExtBean;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class IntentDateBean implements Serializable {
    private String crc_link_type_val;
    private String ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private ExtBean extBean;
    private String from = "normal";
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private Object object;
    private String tpl_type;

    public IntentDateBean() {
    }

    public String getCrc_link_type_val() {
        return t2.l(this.crc_link_type_val, "cld_", "");
    }

    public String getExt1() {
        return this.ext1;
    }

    public String getExt2() {
        return this.ext2;
    }

    public String getExt3() {
        return this.ext3;
    }

    public String getExt4() {
        return this.ext4;
    }

    public ExtBean getExtBean() {
        if (this.extBean == null) {
            this.extBean = new ExtBean();
        }
        return this.extBean;
    }

    public String getFrom() {
        return this.from;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public Object getObject() {
        return this.object;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setExt1(String ext1) {
        this.ext1 = ext1;
    }

    public void setExt2(String ext2) {
        this.ext2 = ext2;
    }

    public void setExt3(String ext3) {
        this.ext3 = ext3;
    }

    public void setExt4(String ext4) {
        this.ext4 = ext4;
    }

    public void setExtBean(ExtBean extBean) {
        this.extBean = extBean;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setObject(Object object) {
        this.object = object;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public String toString() {
        return "IntentDateBean{link_type=" + this.link_type + ", jump_type=" + this.jump_type + ", link_type_val='" + this.link_type_val + "', crc_link_type_val='" + this.crc_link_type_val + "', tpl_type='" + this.tpl_type + "', object=" + this.object + ", from=" + this.from + '}';
    }

    public IntentDateBean(int link_type, int jump_type, String link_type_val, String crc_link_type_val, String tpl_type, Object object) {
        this.link_type = link_type;
        this.jump_type = jump_type;
        this.link_type_val = link_type_val;
        this.crc_link_type_val = crc_link_type_val;
        this.tpl_type = tpl_type;
        this.object = object;
    }
}
