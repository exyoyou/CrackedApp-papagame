package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class FightMainTable {

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    private int down_status;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;

    @DatabaseField
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67248id;

    @DatabaseField
    private String is_more;

    @DatabaseField
    private int jump_type;

    @DatabaseField
    private String label;

    @DatabaseField
    private int link_type;

    @DatabaseField
    private String link_type_val;

    @DatabaseField
    private String margin;

    @DatabaseField
    private String model_type;

    @DatabaseField
    private int pay_game_amount;

    @DatabaseField
    private String pic_remote;

    @DatabaseField
    private String sub_title;

    @DatabaseField
    private String title;

    @DatabaseField
    private String title_type;

    @DatabaseField
    private String tpl_type;

    public FightMainTable() {
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.f67248id;
    }

    public String getIs_more() {
        return this.is_more;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public String getLabel() {
        return this.label;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getMargin() {
        return this.margin;
    }

    public String getModel_type() {
        return this.model_type;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setDownload_original_switch(String download_original_switch) {
        this.download_original_switch = download_original_switch;
    }

    public void setDownload_outside_url(String download_outside_url) {
        this.download_outside_url = download_outside_url;
    }

    public void setDownload_source_switch_v1(String download_source_switch_v1) {
        this.download_source_switch_v1 = download_source_switch_v1;
    }

    public void setDownload_source_switch_v2(String download_source_switch_v2) {
        this.download_source_switch_v2 = download_source_switch_v2;
    }

    public void setDownload_source_url(String download_source_url) {
        this.download_source_url = download_source_url;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(int id2) {
        this.f67248id = id2;
    }

    public void setIs_more(String is_more) {
        this.is_more = is_more;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setMargin(String margin) {
        this.margin = margin;
    }

    public void setModel_type(String model_type) {
        this.model_type = model_type;
    }

    public void setPay_game_amount(int pay_game_amount) {
        this.pay_game_amount = pay_game_amount;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTitle_type(String title_type) {
        this.title_type = title_type;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public FightMainTable(FightMainTable fightMainTable) {
        if (fightMainTable == null) {
            return;
        }
        this.f67248id = fightMainTable.getId();
        this.title = fightMainTable.getTitle();
        this.label = fightMainTable.getLabel();
        this.pic_remote = fightMainTable.getPic_remote();
        this.ico_remote = fightMainTable.getIco_remote();
        this.title_type = fightMainTable.getTitle_type();
        this.margin = fightMainTable.getMargin();
        this.sub_title = fightMainTable.getSub_title();
        this.model_type = fightMainTable.getModel_type();
        this.link_type = fightMainTable.getLink_type();
        this.crc_link_type_val = fightMainTable.getCrc_link_type_val();
        this.jump_type = fightMainTable.getJump_type();
        this.is_more = fightMainTable.getIs_more();
        this.tpl_type = fightMainTable.getTpl_type();
        this.pay_game_amount = fightMainTable.getPay_game_amount();
        this.download_source_url = fightMainTable.getDownload_source_url();
        this.download_outside_url = fightMainTable.getDownload_outside_url();
        this.download_original_switch = fightMainTable.getDownload_original_switch();
    }
}
