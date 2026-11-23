package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GivePriaceBean {
    private String code;
    private String flag;
    private MessagesBean messages;
    private String version;

    public static class MessagesBean {
        private List<DataBean> data;

        public static class DataBean {
            String comment_score_switch;
            String comment_switch;
            String game_id;
            private String original_text;
            private int original_text_id;
            private int original_text_uid;
            private String praise_text;
            private int praise_text_id;
            private int praise_text_uid;
            private long praise_time;
            private String praise_title;
            private String praise_user_ico;

            public String getComment_score_switch() {
                return this.comment_score_switch;
            }

            public String getComment_switch() {
                return this.comment_switch;
            }

            public String getGame_id() {
                return this.game_id;
            }

            public String getOriginal_text() {
                return this.original_text;
            }

            public int getOriginal_text_id() {
                return this.original_text_id;
            }

            public int getOriginal_text_uid() {
                return this.original_text_uid;
            }

            public String getPraise_text() {
                return this.praise_text;
            }

            public int getPraise_text_id() {
                return this.praise_text_id;
            }

            public int getPraise_text_uid() {
                return this.praise_text_uid;
            }

            public long getPraise_time() {
                return this.praise_time;
            }

            public String getPraise_title() {
                return this.praise_title;
            }

            public String getPraise_user_ico() {
                return this.praise_user_ico;
            }

            public void setComment_score_switch(String comment_score_switch) {
                this.comment_score_switch = comment_score_switch;
            }

            public void setComment_switch(String comment_switch) {
                this.comment_switch = comment_switch;
            }

            public void setGame_id(String game_id) {
                this.game_id = game_id;
            }

            public void setOriginal_text(String original_text) {
                this.original_text = original_text;
            }

            public void setOriginal_text_id(int original_text_id) {
                this.original_text_id = original_text_id;
            }

            public void setOriginal_text_uid(int original_text_uid) {
                this.original_text_uid = original_text_uid;
            }

            public void setPraise_text(String praise_text) {
                this.praise_text = praise_text;
            }

            public void setPraise_text_id(int praise_text_id) {
                this.praise_text_id = praise_text_id;
            }

            public void setPraise_text_uid(int praise_text_uid) {
                this.praise_text_uid = praise_text_uid;
            }

            public void setPraise_time(long praise_time) {
                this.praise_time = praise_time;
            }

            public void setPraise_title(String praise_title) {
                this.praise_title = praise_title;
            }

            public void setPraise_user_ico(String praise_user_ico) {
                this.praise_user_ico = praise_user_ico;
            }
        }

        public List<DataBean> getData() {
            return this.data;
        }

        public void setData(List<DataBean> data) {
            this.data = data;
        }
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public MessagesBean getMessages() {
        return this.messages;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public void setMessages(MessagesBean messages) {
        this.messages = messages;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
