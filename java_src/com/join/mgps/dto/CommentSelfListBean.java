package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

/* JADX INFO: loaded from: classes3.dex */
public class CommentSelfListBean {
    private ForumBean.GameInfo game_info;
    private SelfComment self_comment;

    public static class SelfComment {
        private long add_times;
        private double approval_rate;
        private String content;
        private int despise_count;
        private String game_id;
        private String head_portrait;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private int f68039id;

        @JsonProperty("is_despise")
        private int is_despise;

        @JsonProperty("is_old")
        private int is_old;

        @JsonProperty("is_praise")
        private int is_praise;
        private String mobile_phone_model;
        private int praise_count;
        private String rank;
        private int reply_count;
        private int stars_score;
        private int start_game_count;
        private int uid;
        private String user_name;

        public long getAdd_times() {
            return this.add_times;
        }

        public double getApproval_rate() {
            return this.approval_rate;
        }

        public String getContent() {
            return this.content;
        }

        public int getDespise_count() {
            return this.despise_count;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getHead_portrait() {
            return this.head_portrait;
        }

        public int getId() {
            return this.f68039id;
        }

        public int getIs_despise() {
            return this.is_despise;
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

        public int getPraise_count() {
            return this.praise_count;
        }

        public String getRank() {
            return this.rank;
        }

        public int getReply_count() {
            return this.reply_count;
        }

        public int getStars_score() {
            return this.stars_score;
        }

        public int getStart_game_count() {
            return this.start_game_count;
        }

        public int getUid() {
            return this.uid;
        }

        public String getUser_name() {
            return this.user_name;
        }

        public void setAdd_times(long add_times) {
            this.add_times = add_times;
        }

        public void setApproval_rate(double approval_rate) {
            this.approval_rate = approval_rate;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public void setDespise_count(int despise_count) {
            this.despise_count = despise_count;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setHead_portrait(String head_portrait) {
            this.head_portrait = head_portrait;
        }

        public void setId(int id2) {
            this.f68039id = id2;
        }

        public void setIs_despise(int is_despise) {
            this.is_despise = is_despise;
        }

        public void setIs_old(int is_old) {
            this.is_old = is_old;
        }

        public void setIs_praise(int is_praise) {
            this.is_praise = is_praise;
        }

        public void setMobile_phone_model(String mobile_phone_model) {
            this.mobile_phone_model = mobile_phone_model;
        }

        public void setPraise_count(int praise_count) {
            this.praise_count = praise_count;
        }

        public void setRank(String rank) {
            this.rank = rank;
        }

        public void setReply_count(int reply_count) {
            this.reply_count = reply_count;
        }

        public void setStars_score(int stars_score) {
            this.stars_score = stars_score;
        }

        public void setStart_game_count(int start_game_count) {
            this.start_game_count = start_game_count;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setUser_name(String user_name) {
            this.user_name = user_name;
        }
    }

    public ForumBean.GameInfo getGame_info() {
        return this.game_info;
    }

    public SelfComment getSelf_comment() {
        return this.self_comment;
    }

    public void setGame_info(ForumBean.GameInfo game_info) {
        this.game_info = game_info;
    }

    public void setSelf_comment(SelfComment self_comment) {
        this.self_comment = self_comment;
    }
}
