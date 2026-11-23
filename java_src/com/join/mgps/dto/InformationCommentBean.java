package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InformationCommentBean implements Serializable {
    private boolean bolHaveCommit = true;
    private String collection_id;
    private String comment_id;
    private String content;
    private boolean hasPraised;
    private String head_portrait;
    private String information_id;
    private boolean isTitle;
    private int is_hot;
    private String mobile_phone_model;
    private String praise_count;
    private String reply_comment_id;
    private String reply_user_id;
    private List<Sub> sub;
    private String times;
    private String user_id;
    private int user_level;
    private String user_name;
    private int user_svip_level;
    private int user_vip_level;

    public static class Sub implements Serializable {
        private String comment_id;
        private String content;
        private String game_id;
        private boolean hasPraised;
        private String head_portrait;
        private int is_hot;
        private String mapping;
        private String mobile_phone_model;
        private String pid;
        private int praise_count;
        private String reply_comment_id;
        private String reply_user_id;
        private String times;
        private String uid;
        private String user_id;
        private int user_level;
        private String user_name;
        private int user_svip_level;
        private int user_vip_level;

        public String getComment_id() {
            return this.comment_id;
        }

        public String getContent() {
            return this.content;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getHead_portrait() {
            return this.head_portrait;
        }

        public int getIs_hot() {
            return this.is_hot;
        }

        public String getMapping() {
            return this.mapping;
        }

        public String getMobile_phone_model() {
            return this.mobile_phone_model;
        }

        public String getPid() {
            return this.pid;
        }

        public int getPraise_count() {
            return this.praise_count;
        }

        public String getReply_comment_id() {
            return this.reply_comment_id;
        }

        public String getReply_user_id() {
            return this.reply_user_id;
        }

        public String getTimes() {
            return this.times;
        }

        public String getUid() {
            return this.uid;
        }

        public String getUser_id() {
            return this.user_id;
        }

        public int getUser_level() {
            return this.user_level;
        }

        public String getUser_name() {
            return this.user_name;
        }

        public int getUser_svip_level() {
            return this.user_svip_level;
        }

        public int getUser_vip_level() {
            return this.user_vip_level;
        }

        public boolean isHasPraised() {
            return this.hasPraised;
        }

        public void setComment_id(String comment_id) {
            this.comment_id = comment_id;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setHasPraised(boolean hasPraised) {
            this.hasPraised = hasPraised;
        }

        public void setHead_portrait(String head_portrait) {
            this.head_portrait = head_portrait;
        }

        public void setIs_hot(int is_hot) {
            this.is_hot = is_hot;
        }

        public void setMapping(String mapping) {
            this.mapping = mapping;
        }

        public void setMobile_phone_model(String mobile_phone_model) {
            this.mobile_phone_model = mobile_phone_model;
        }

        public void setPid(String pid) {
            this.pid = pid;
        }

        public void setPraise_count(int praise_count) {
            this.praise_count = praise_count;
        }

        public void setReply_comment_id(String reply_comment_id) {
            this.reply_comment_id = reply_comment_id;
        }

        public void setReply_user_id(String reply_user_id) {
            this.reply_user_id = reply_user_id;
        }

        public void setTimes(String times) {
            this.times = times;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }

        public void setUser_id(String user_id) {
            this.user_id = user_id;
        }

        public void setUser_level(int user_level) {
            this.user_level = user_level;
        }

        public void setUser_name(String user_name) {
            this.user_name = user_name;
        }

        public void setUser_svip_level(int user_svip_level) {
            this.user_svip_level = user_svip_level;
        }

        public void setUser_vip_level(int user_vip_level) {
            this.user_vip_level = user_vip_level;
        }
    }

    public InformationCommentBean() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getContent() {
        return this.content;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getIs_hot() {
        return this.is_hot;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public String getPraise_count() {
        return this.praise_count;
    }

    public String getReply_comment_id() {
        return this.reply_comment_id;
    }

    public String getReply_user_id() {
        return this.reply_user_id;
    }

    public List<Sub> getSub() {
        return this.sub;
    }

    public String getTimes() {
        return this.times;
    }

    public String getUser_id() {
        return this.user_id;
    }

    public int getUser_level() {
        return this.user_level;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public int getUser_svip_level() {
        return this.user_svip_level;
    }

    public int getUser_vip_level() {
        return this.user_vip_level;
    }

    public boolean isBolHaveCommit() {
        return this.bolHaveCommit;
    }

    public boolean isHasPraised() {
        return this.hasPraised;
    }

    public boolean isTitle() {
        return this.isTitle;
    }

    public void setBolHaveCommit(boolean bolHaveCommit) {
        this.bolHaveCommit = bolHaveCommit;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setHasPraised(boolean hasPraised) {
        this.hasPraised = hasPraised;
    }

    public void setHead_portrait(String head_portrait) {
        this.head_portrait = head_portrait;
    }

    public void setInformation_id(String information_id) {
        this.information_id = information_id;
    }

    public void setIs_hot(int is_hot) {
        this.is_hot = is_hot;
    }

    public void setMobile_phone_model(String mobile_phone_model) {
        this.mobile_phone_model = mobile_phone_model;
    }

    public void setPraise_count(String praise_count) {
        this.praise_count = praise_count;
    }

    public void setReply_comment_id(String reply_comment_id) {
        this.reply_comment_id = reply_comment_id;
    }

    public void setReply_user_id(String reply_user_id) {
        this.reply_user_id = reply_user_id;
    }

    public void setSub(List<Sub> sub) {
        this.sub = sub;
    }

    public void setTimes(String times) {
        this.times = times;
    }

    public void setTitle(boolean isTitle) {
        this.isTitle = isTitle;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public void setUser_level(int user_level) {
        this.user_level = user_level;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setUser_svip_level(int user_svip_level) {
        this.user_svip_level = user_svip_level;
    }

    public void setUser_vip_level(int user_vip_level) {
        this.user_vip_level = user_vip_level;
    }

    public InformationCommentBean(InformationCommentBean bean) {
        this.information_id = bean.getInformation_id();
        this.collection_id = bean.getCollection_id();
        this.comment_id = bean.getComment_id();
        this.user_id = bean.getUser_id();
        this.user_name = bean.getUser_name();
        this.head_portrait = bean.getHead_portrait();
        this.content = bean.getContent();
        this.mobile_phone_model = bean.getMobile_phone_model();
        this.times = bean.getTimes();
        this.praise_count = bean.getPraise_count();
        this.reply_comment_id = bean.getReply_comment_id();
        this.reply_user_id = bean.getReply_user_id();
        this.is_hot = bean.getIs_hot();
        this.hasPraised = bean.isHasPraised();
        this.user_level = bean.getUser_level();
        this.isTitle = bean.isTitle();
        this.user_vip_level = bean.getUser_vip_level();
        this.user_svip_level = bean.getUser_svip_level();
        if (this.sub == null) {
            this.sub = new ArrayList();
        }
        this.sub.addAll(bean.getSub());
    }
}
