package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class InformationListDataBean {
    private ExtBean extBean;
    private String game_id;
    private String game_name;
    private String info_id;
    private String material;
    private String praise;
    private String release_time;
    private float score_count;
    private String tag_id;
    private String title;

    public InformationListDataBean() {
    }

    public ExtBean getExtBean() {
        return this.extBean;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getInfo_id() {
        return this.info_id;
    }

    public String getMaterial() {
        return this.material;
    }

    public String getPraise() {
        return this.praise;
    }

    public String getRelease_time() {
        return this.release_time;
    }

    public float getScore_count() {
        return this.score_count;
    }

    public String getTag_id() {
        return this.tag_id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setExtBean(ExtBean extBean) {
        this.extBean = extBean;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setInfo_id(String info_id) {
        this.info_id = info_id;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public void setPraise(String praise) {
        this.praise = praise;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public void setScore_count(float score_count) {
        this.score_count = score_count;
    }

    public void setTag_id(String tag_id) {
        this.tag_id = tag_id;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public InformationListDataBean(String tag_id, String title, String release_time, String material, String praise) {
        this.tag_id = tag_id;
        this.title = title;
        this.release_time = release_time;
        this.material = material;
        this.praise = praise;
    }
}
