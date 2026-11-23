package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CommentDetailBean implements Serializable {
    private GameInfoBean game_info;
    private List<MainCommentBean> main_comment;

    public static class GameInfoBean implements Serializable {
        private String game_ico;
        private String game_id;
        private int game_info_tpl_type;
        private String game_name;
        private int sp_tpl_two_position;

        public String getGame_ico() {
            return this.game_ico;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public int getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getGame_name() {
            return this.game_name;
        }

        public int getSp_tpl_two_position() {
            return this.sp_tpl_two_position;
        }

        public void setGame_ico(String game_ico) {
            this.game_ico = game_ico;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setGame_info_tpl_type(int game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setGame_name(String game_name) {
            this.game_name = game_name;
        }

        public void setSp_tpl_two_position(int sp_tpl_two_position) {
            this.sp_tpl_two_position = sp_tpl_two_position;
        }
    }

    public static class MainCommentBean implements Serializable {
        private String add_times;
        private String approval_rate;
        private String content;
        private String despise_count;
        private String game_id;
        private String head_portrait;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68036id;
        private int is_belong_to;
        private int is_despise;
        private String is_old;
        private int is_praise;
        private String mapping;
        private String mobile_phone_model;
        private int pn;
        private String praise_count;
        private String rank;
        private String reply_count;
        private String stars_score;
        private String start_game_count;
        private List<SubCommentBean> sub_comment;
        private int svip_level;
        private String uid;
        private String user_name;
        private int vip_level;

        public static class SubCommentBean implements Serializable {
            private String add_times;
            private String approval_rate;
            private String content;
            private long despise_count;
            private String game_id;
            private String head_portrait;

            /* JADX INFO: renamed from: id, reason: collision with root package name */
            private String f68037id;
            private int is_despise;
            private String is_old;
            private int is_praise;
            private String mapping;
            private String mobile_phone_model;
            private long praise_count;
            private String rank;
            private String reply_count;
            private int reply_svip_level;
            private int reply_vip_level;
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
                return this.f68037id;
            }

            public int getIs_despise() {
                return this.is_despise;
            }

            public String getIs_old() {
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

            public String getReply_count() {
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

            public void setAdd_times(String add_times) {
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
                this.f68037id = id2;
            }

            public void setIs_despise(int is_despise) {
                this.is_despise = is_despise;
            }

            public void setIs_old(String is_old) {
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

            public void setReply_count(String reply_count) {
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

            public void setStart_game_count(String start_game_count) {
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

        public MainCommentBean() {
        }

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
            return this.f68036id;
        }

        public int getIs_belong_to() {
            return this.is_belong_to;
        }

        public int getIs_despise() {
            return this.is_despise;
        }

        public String getIs_old() {
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

        public int getPn() {
            return this.pn;
        }

        public String getPraise_count() {
            return this.praise_count;
        }

        public String getRank() {
            return this.rank;
        }

        public String getReply_count() {
            return this.reply_count;
        }

        public String getStars_score() {
            return this.stars_score;
        }

        public String getStart_game_count() {
            return this.start_game_count;
        }

        public List<SubCommentBean> getSub_comment() {
            return this.sub_comment;
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
            this.f68036id = id2;
        }

        public void setIs_belong_to(int is_belong_to) {
            this.is_belong_to = is_belong_to;
        }

        public void setIs_despise(int is_despise) {
            this.is_despise = is_despise;
        }

        public void setIs_old(String is_old) {
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

        public void setPn(int pn) {
            this.pn = pn;
        }

        public void setPraise_count(String praise_count) {
            this.praise_count = praise_count;
        }

        public void setRank(String rank) {
            this.rank = rank;
        }

        public void setReply_count(String reply_count) {
            this.reply_count = reply_count;
        }

        public void setStars_score(String stars_score) {
            this.stars_score = stars_score;
        }

        public void setStart_game_count(String start_game_count) {
            this.start_game_count = start_game_count;
        }

        public void setSub_comment(List<SubCommentBean> sub_comment) {
            this.sub_comment = sub_comment;
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

        public MainCommentBean(MainCommentBean bean) {
            this.f68036id = bean.getId();
            this.uid = bean.getUid();
            this.user_name = bean.getUser_name();
            this.rank = bean.getRank();
            this.head_portrait = bean.getHead_portrait();
            this.game_id = bean.getGame_id();
            this.content = bean.getContent();
            this.mobile_phone_model = bean.getMobile_phone_model();
            this.praise_count = bean.getPraise_count();
            this.stars_score = bean.getStars_score();
            this.despise_count = bean.getDespise_count();
            this.start_game_count = bean.getStart_game_count();
            this.approval_rate = bean.getApproval_rate();
            this.add_times = bean.getAdd_times();
            this.is_belong_to = bean.getIs_belong_to();
            this.reply_count = bean.getReply_count();
            this.mapping = bean.getMapping();
            this.is_old = bean.getIs_old();
            this.is_praise = bean.getIs_praise();
            this.is_despise = bean.getIs_despise();
            this.pn = bean.getPn();
            if (this.sub_comment == null) {
                this.sub_comment = new ArrayList();
            }
            this.sub_comment.addAll(bean.getSub_comment());
        }
    }

    public GameInfoBean getGame_info() {
        return this.game_info;
    }

    public List<MainCommentBean> getMain_comment() {
        return this.main_comment;
    }

    public void setGame_info(GameInfoBean game_info) {
        this.game_info = game_info;
    }

    public void setMain_comment(List<MainCommentBean> main_comment) {
        this.main_comment = main_comment;
    }
}
