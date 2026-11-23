package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class WxProgram implements Serializable {
    private String abuid = "0";
    private String app_id;
    private String app_path;
    private String button_pic;
    private String button_text;
    private String code_text;
    private String code_url;
    private String extend;
    private String guide_text;
    private int is_join;
    private String original_id;
    private String sceneType;

    public String getAbuid() {
        return this.abuid;
    }

    public String getApp_id() {
        return this.app_id;
    }

    public String getApp_path() {
        return this.app_path;
    }

    public String getButton_pic() {
        return this.button_pic;
    }

    public String getButton_text() {
        return this.button_text;
    }

    public String getCode_text() {
        return this.code_text;
    }

    public String getCode_url() {
        return this.code_url;
    }

    public String getExtend() {
        return this.extend;
    }

    public String getGuide_text() {
        return this.guide_text;
    }

    public int getIs_join() {
        return this.is_join;
    }

    public String getOriginal_id() {
        return this.original_id;
    }

    public String getSceneType() {
        return this.sceneType;
    }

    public void setAbuid(String abuid) {
        this.abuid = abuid;
    }

    public void setApp_id(String app_id) {
        this.app_id = app_id;
    }

    public void setApp_path(String app_path) {
        this.app_path = app_path;
    }

    public void setButton_pic(String button_pic) {
        this.button_pic = button_pic;
    }

    public void setButton_text(String button_text) {
        this.button_text = button_text;
    }

    public void setCode_text(String code_text) {
        this.code_text = code_text;
    }

    public void setCode_url(String code_url) {
        this.code_url = code_url;
    }

    public void setExtend(String extend) {
        this.extend = extend;
    }

    public void setGuide_text(String guide_text) {
        this.guide_text = guide_text;
    }

    public void setIs_join(int is_join) {
        this.is_join = is_join;
    }

    public void setOriginal_id(String original_id) {
        this.original_id = original_id;
    }

    public void setSceneType(String sceneType) {
        this.sceneType = sceneType;
    }
}
