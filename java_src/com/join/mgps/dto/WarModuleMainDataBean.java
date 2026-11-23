package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class WarModuleMainDataBean implements Serializable {
    private String collection_id;
    private String collection_title;
    private String cover_pic_local;
    private String cover_pic_remote;
    private String crc_collection_id;
    private String ico_local;
    private String ico_remote;
    private String info;
    private String show_tag_range;
    private int tpl_count;
    private String tpl_id;
    private String tpl_pic;
    private String tpl_range;
    private String tpl_title;
    private int tpl_type;
    private String tpl_url;

    public WarModuleMainDataBean() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getCollection_title() {
        return this.collection_title;
    }

    public String getCover_pic_local() {
        return this.cover_pic_local;
    }

    public String getCover_pic_remote() {
        return this.cover_pic_remote;
    }

    public String getCrc_collection_id() {
        return this.crc_collection_id;
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

    public String getShow_tag_range() {
        return this.show_tag_range;
    }

    public int getTpl_count() {
        return this.tpl_count;
    }

    public String getTpl_id() {
        return this.tpl_id;
    }

    public String getTpl_pic() {
        return this.tpl_pic;
    }

    public String getTpl_range() {
        return this.tpl_range;
    }

    public String getTpl_title() {
        return this.tpl_title;
    }

    public int getTpl_type() {
        return this.tpl_type;
    }

    public String getTpl_url() {
        return this.tpl_url;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setCollection_title(String collection_title) {
        this.collection_title = collection_title;
    }

    public void setCover_pic_local(String cover_pic_local) {
        this.cover_pic_local = cover_pic_local;
    }

    public void setCover_pic_remote(String cover_pic_remote) {
        this.cover_pic_remote = cover_pic_remote;
    }

    public void setCrc_collection_id(String crc_collection_id) {
        this.crc_collection_id = crc_collection_id;
    }

    public void setIco_local(String ico_local) {
        this.ico_local = ico_local;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setShow_tag_range(String show_tag_range) {
        this.show_tag_range = show_tag_range;
    }

    public void setTpl_count(int tpl_count) {
        this.tpl_count = tpl_count;
    }

    public void setTpl_id(String tpl_id) {
        this.tpl_id = tpl_id;
    }

    public void setTpl_pic(String tpl_pic) {
        this.tpl_pic = tpl_pic;
    }

    public void setTpl_range(String tpl_range) {
        this.tpl_range = tpl_range;
    }

    public void setTpl_title(String tpl_title) {
        this.tpl_title = tpl_title;
    }

    public void setTpl_type(int tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setTpl_url(String tpl_url) {
        this.tpl_url = tpl_url;
    }

    public WarModuleMainDataBean(String collection_id, String crc_collection_id, String collection_title, String ico_local, String ico_remote, String cover_pic_local, String cover_pic_remote, String info, String show_tag_range, String tpl_id, String tpl_title, String tpl_pic, String tpl_url, String tpl_range, int tpl_count, int tpl_type) {
        this.collection_id = collection_id;
        this.crc_collection_id = crc_collection_id;
        this.collection_title = collection_title;
        this.ico_local = ico_local;
        this.ico_remote = ico_remote;
        this.cover_pic_local = cover_pic_local;
        this.cover_pic_remote = cover_pic_remote;
        this.info = info;
        this.show_tag_range = show_tag_range;
        this.tpl_id = tpl_id;
        this.tpl_title = tpl_title;
        this.tpl_pic = tpl_pic;
        this.tpl_url = tpl_url;
        this.tpl_range = tpl_range;
        this.tpl_count = tpl_count;
        this.tpl_type = tpl_type;
    }
}
