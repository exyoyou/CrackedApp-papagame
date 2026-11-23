package com.join.mgps.dto;

import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.UtilsMy;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AppBeanMain implements Serializable {
    private int butnShowTypr;
    private String crc_link_type_val;
    private String ext1;
    private String ext2;
    private String ext3;
    private String ext4;
    private AppBean game_info;
    private int jump_type;
    private int link_type;
    private String link_type_val;
    private String tpl_type;

    public AppBeanMain() {
    }

    public int getButnShowTypr() {
        return this.butnShowTypr;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
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

    public AppBean getGame_info() {
        return this.game_info;
    }

    public IntentDateBean getIntentDataBean() {
        AppBean appBean;
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setJump_type(this.jump_type);
        intentDateBean.setLink_type(this.link_type);
        intentDateBean.setLink_type_val(this.link_type_val);
        if (this.link_type != 1 || (appBean = this.game_info) == null) {
            intentDateBean.setTpl_type(this.tpl_type);
        } else {
            intentDateBean.setTpl_type(appBean.getGame_info_tpl_type());
            ExtBean volcanoOther = this.game_info.getExtBean().set_from_type(this.game_info.get_from_type()).setRecPosition(this.game_info.getRecPosition()).setReMarks(this.game_info.getReMarks()).setVolcanoOther(this.game_info.getPosition_path() != null ? JsonMapper.toJsonString(this.game_info.getPosition_path()) : "");
            AppBean appBean2 = this.game_info;
            intentDateBean.setExtBean(volcanoOther.setOnlineGame(appBean2 != null && UtilsMy.t2(appBean2.getTag_info())));
        }
        intentDateBean.setExt1(this.ext1);
        intentDateBean.setExt2(this.ext2);
        intentDateBean.setExt3(this.ext3);
        intentDateBean.setExt4(this.ext4);
        intentDateBean.setCrc_link_type_val(this.crc_link_type_val);
        return intentDateBean;
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

    public void setGame_info(AppBean game_info) {
        this.game_info = game_info;
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

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public AppBeanMain(int link_type, String link_type_val, String crc_link_type_val, int jump_type, AppBean game_info, String tpl_type, int butnShowTypr) {
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.crc_link_type_val = crc_link_type_val;
        this.jump_type = jump_type;
        this.game_info = game_info;
        this.tpl_type = tpl_type;
        this.butnShowTypr = butnShowTypr;
    }

    public AppBeanMain(int link_type, String link_type_val, String crc_link_type_val, int jump_type, String tpl_type, int butnShowTypr) {
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.crc_link_type_val = crc_link_type_val;
        this.jump_type = jump_type;
        this.tpl_type = tpl_type;
        this.butnShowTypr = butnShowTypr;
    }
}
