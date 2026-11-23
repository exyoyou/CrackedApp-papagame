package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.t2;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class JumpInfoBean implements Serializable {
    private String crc_link_type_val;
    private String jump_type;
    private String link_type;
    private String link_type_val;
    private String tab_name;
    private String tab_type;
    private String tpl_type;

    public JumpInfoBean() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        if (t2.i(this.jump_type)) {
            intentDateBean.setJump_type(Integer.parseInt(this.jump_type));
        }
        if (t2.i(this.link_type)) {
            intentDateBean.setLink_type(Integer.parseInt(this.link_type));
        }
        intentDateBean.setLink_type_val(this.link_type_val);
        intentDateBean.setTpl_type(this.tpl_type);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
    }

    public String getJump_type() {
        return this.jump_type;
    }

    public String getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getTab_name() {
        return this.tab_name;
    }

    public String getTab_type() {
        return this.tab_type;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setJump_type(String jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(String link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setTab_name(String tab_name) {
        this.tab_name = tab_name;
    }

    public void setTab_type(String tab_type) {
        this.tab_type = tab_type;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public JumpInfoBean(String link_type, String jump_type, String link_type_val, String tab_type, String tab_name, String crc_link_type_val, String tpl_type) {
        this.link_type = link_type;
        this.jump_type = jump_type;
        this.link_type_val = link_type_val;
        this.tab_type = tab_type;
        this.tab_name = tab_name;
        this.crc_link_type_val = crc_link_type_val;
        this.tpl_type = tpl_type;
    }
}
