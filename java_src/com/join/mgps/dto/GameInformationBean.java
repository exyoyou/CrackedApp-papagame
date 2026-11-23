package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameInformationBean {
    private String author;
    private int comment_count;
    private int comment_switch;
    private String content;
    private List<DetailResultBean> game_info;
    private String info_id;
    private String other_app_addr;
    private String praise;
    private String release_time;
    private String share_url;
    private String show_pic;
    private String title;
    private String weixin_app_addr;

    public GameInformationBean() {
    }

    public String getAuthor() {
        return this.author;
    }

    public int getComment_count() {
        return this.comment_count;
    }

    public int getComment_switch() {
        return this.comment_switch;
    }

    public String getContent() {
        return this.content;
    }

    public List<DetailResultBean> getGame_info() {
        return this.game_info;
    }

    public String getInfo_id() {
        return this.info_id;
    }

    public String getOther_app_addr() {
        return this.other_app_addr;
    }

    public String getPraise() {
        return this.praise;
    }

    public String getRelease_time() {
        return this.release_time;
    }

    public String getShare_url() {
        return this.share_url;
    }

    public String getShow_pic() {
        return this.show_pic;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWeixin_app_addr() {
        return this.weixin_app_addr;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setComment_count(int comment_count) {
        this.comment_count = comment_count;
    }

    public void setComment_switch(int comment_switch) {
        this.comment_switch = comment_switch;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setGame_info(List<DetailResultBean> game_info) {
        this.game_info = game_info;
    }

    public void setInfo_id(String info_id) {
        this.info_id = info_id;
    }

    public void setOther_app_addr(String other_app_addr) {
        this.other_app_addr = other_app_addr;
    }

    public void setPraise(String praise) {
        this.praise = praise;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public void setShare_url(String share_url) {
        this.share_url = share_url;
    }

    public void setShow_pic(String show_pic) {
        this.show_pic = show_pic;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setWeixin_app_addr(String weixin_app_addr) {
        this.weixin_app_addr = weixin_app_addr;
    }

    public GameInformationBean(String author, String info_id, String title, String weixin_app_addr, String other_app_addr, String show_pic, String content, String share_url, String release_time, String praise, List<DetailResultBean> game_info) {
        this.author = author;
        this.info_id = info_id;
        this.title = title;
        this.weixin_app_addr = weixin_app_addr;
        this.other_app_addr = other_app_addr;
        this.show_pic = show_pic;
        this.content = content;
        this.share_url = share_url;
        this.release_time = release_time;
        this.praise = praise;
        this.game_info = game_info;
    }
}
