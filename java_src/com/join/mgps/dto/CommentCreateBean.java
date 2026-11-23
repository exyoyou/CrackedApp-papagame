package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommentCreateBean {
    private InfoBean info;

    public static class InfoBean {
        private long add_times;
        private String approval_rate;
        private String content;
        private long despise_count;
        private String game_id;
        private String head_portrait;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68035id;
        private int is_despise;
        private int is_old;
        private int is_praise;
        private String mapping;
        private String mobile_phone_model;
        private long praise_count;
        private String rank;
        private long reply_count;
        private int reply_svip_level;
        private int reply_vip_level;
        private String stars_score;
        private long start_game_count;
        private int svip_level;
        private String uid;
        private String user_name;
        private int vip_level;

        public long getAdd_times() {
            return this.add_times;
        }

        public String getApproval_rate() {
            return this.approval_rate;
        }

        public String getContent() {
            return this.content;
        }

        public long getDespise_count() {
            return this.despise_count;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getHead_portrait() {
            return this.head_portrait;
        }

        public String getId() {
            return this.f68035id;
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

        public String getMapping() {
            return this.mapping;
        }

        public String getMobile_phone_model() {
            return this.mobile_phone_model;
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

        public int getReply_svip_level() {
            return this.reply_svip_level;
        }

        public int getReply_vip_level() {
            return this.reply_vip_level;
        }

        public String getStars_score() {
            return this.stars_score;
        }

        public long getStart_game_count() {
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

        public void setAdd_times(long add_times) {
            this.add_times = add_times;
        }

        public void setApproval_rate(String approval_rate) {
            this.approval_rate = approval_rate;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public void setDespise_count(long despise_count) {
            this.despise_count = despise_count;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setHead_portrait(String head_portrait) {
            this.head_portrait = head_portrait;
        }

        public void setId(String id2) {
            this.f68035id = id2;
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

        public void setMapping(String mapping) {
            this.mapping = mapping;
        }

        public void setMobile_phone_model(String mobile_phone_model) {
            this.mobile_phone_model = mobile_phone_model;
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

        public void setReply_svip_level(int reply_svip_level) {
            this.reply_svip_level = reply_svip_level;
        }

        public void setReply_vip_level(int reply_vip_level) {
            this.reply_vip_level = reply_vip_level;
        }

        public void setStars_score(String stars_score) {
            this.stars_score = stars_score;
        }

        public void setStart_game_count(long start_game_count) {
            this.start_game_count = start_game_count;
        }

        public void setSvip_level(int svip_level) {
            this.svip_level = svip_level;
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

    public InfoBean getInfo() {
        return this.info;
    }

    public void setInfo(InfoBean info) {
        this.info = info;
    }
}
