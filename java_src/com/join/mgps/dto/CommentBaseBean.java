package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CommentBaseBean implements Serializable {
    private String add_times;
    private String approval_rate;
    private String content;
    private String despise_count;
    private String game_id;
    private String head_portrait;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68034id;
    private boolean isShowMore = false;
    private boolean isTitle;
    private int is_despise;
    private int is_hot;
    private int is_old;
    private int is_praise;
    private boolean isfirst;
    private String mobile_phone_model;
    private int pn;
    private long praise_count;
    private String rank;
    private long reply_count;
    private String stars_score;
    private String start_game_count;
    private int svip_level;
    private String uid;
    private String user_name;
    private int vip_level;

    public String getAdd_times() {
        return this.add_times;
    }

    public String getApproval_rate() {
        return this.approval_rate;
    }

    public String getContent() {
        return this.content;
    }

    public String getDespise_count() {
        return this.despise_count;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public String getId() {
        return this.f68034id;
    }

    public int getIs_despise() {
        return this.is_despise;
    }

    public int getIs_hot() {
        return this.is_hot;
    }

    public int getIs_old() {
        return this.is_old;
    }

    public int getIs_praise() {
        return this.is_praise;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public int getPn() {
        return this.pn;
    }

    public long getPraise_count() {
        return this.praise_count;
    }

    public String getRank() {
        return this.rank;
    }

    public long getReply_count() {
        return this.reply_count;
    }

    public String getStars_score() {
        return this.stars_score;
    }

    public String getStart_game_count() {
        return this.start_game_count;
    }

    public int getSvip_level() {
        return this.svip_level;
    }

    public String getUid() {
        return this.uid;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public int getVip_level() {
        return this.vip_level;
    }

    public boolean isIsfirst() {
        return this.isfirst;
    }

    public boolean isShowMore() {
        return this.isShowMore;
    }

    public boolean isTitle() {
        return this.isTitle;
    }

    public void setAdd_times(String add_times) {
        this.add_times = add_times;
    }

    public void setApproval_rate(String approval_rate) {
        this.approval_rate = approval_rate;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setDespise_count(String despise_count) {
        this.despise_count = despise_count;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setHead_portrait(String head_portrait) {
        this.head_portrait = head_portrait;
    }

    public void setId(String id2) {
        this.f68034id = id2;
    }

    public void setIs_despise(int is_despise) {
        this.is_despise = is_despise;
    }

    public void setIs_hot(int is_hot) {
        this.is_hot = is_hot;
    }

    public void setIs_old(int is_old) {
        this.is_old = is_old;
    }

    public void setIs_praise(int is_praise) {
        this.is_praise = is_praise;
    }

    public void setIsfirst(boolean isfirst) {
        this.isfirst = isfirst;
    }

    public void setMobile_phone_model(String mobile_phone_model) {
        this.mobile_phone_model = mobile_phone_model;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setPraise_count(long praise_count) {
        this.praise_count = praise_count;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public void setReply_count(long reply_count) {
        this.reply_count = reply_count;
    }

    public void setShowMore(boolean showMore) {
        this.isShowMore = showMore;
    }

    public void setStars_score(String stars_score) {
        this.stars_score = stars_score;
    }

    public void setStart_game_count(String start_game_count) {
        this.start_game_count = start_game_count;
    }

    public void setSvip_level(int svip_level) {
        this.svip_level = svip_level;
    }

    public void setTitle(boolean title) {
        this.isTitle = title;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setVip_level(int vip_level) {
        this.vip_level = vip_level;
    }
}
