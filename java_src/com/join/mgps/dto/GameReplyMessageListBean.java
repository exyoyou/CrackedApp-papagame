package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameReplyMessageListBean {
    private String code;
    private String flag;
    private MessagesBean messages;
    private String version;

    public static class MessagesBean {
        private List<DataBean> data;

        public static class DataBean {
            private int comment_score_switch;
            private int comment_switch;
            private String current_reply_text;
            private int current_reply_text_id;
            private int current_reply_text_uid;
            private long current_reply_time;
            private String current_reply_title;
            private String current_reply_user_ico;
            private String game_id;
            private String original_text;
            private int original_text_id;
            private int original_text_uid;
            private ReplySubBean reply_sub;

            public static class ReplySubBean {
                private String reply_text;
                private int reply_text_id;
                private int reply_text_uid;

                public String getReply_text() {
                    return this.reply_text;
                }

                public int getReply_text_id() {
                    return this.reply_text_id;
                }

                public int getReply_text_uid() {
                    return this.reply_text_uid;
                }

                public void setReply_text(String reply_text) {
                    this.reply_text = reply_text;
                }

                public void setReply_text_id(int reply_text_id) {
                    this.reply_text_id = reply_text_id;
                }

                public void setReply_text_uid(int reply_text_uid) {
                    this.reply_text_uid = reply_text_uid;
                }
            }

            public int getComment_score_switch() {
                return this.comment_score_switch;
            }

            public int getComment_switch() {
                return this.comment_switch;
            }

            public String getCurrent_reply_text() {
                return this.current_reply_text;
            }

            public int getCurrent_reply_text_id() {
                return this.current_reply_text_id;
            }

            public int getCurrent_reply_text_uid() {
                return this.current_reply_text_uid;
            }

            public long getCurrent_reply_time() {
                return this.current_reply_time;
            }

            public String getCurrent_reply_title() {
                return this.current_reply_title;
            }

            public String getCurrent_reply_user_ico() {
                return this.current_reply_user_ico;
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

            public ReplySubBean getReply_sub() {
                return this.reply_sub;
            }

            public void setComment_score_switch(int comment_score_switch) {
                this.comment_score_switch = comment_score_switch;
            }

            public void setComment_switch(int comment_switch) {
                this.comment_switch = comment_switch;
            }

            public void setCurrent_reply_text(String current_reply_text) {
                this.current_reply_text = current_reply_text;
            }

            public void setCurrent_reply_text_id(int current_reply_text_id) {
                this.current_reply_text_id = current_reply_text_id;
            }

            public void setCurrent_reply_text_uid(int current_reply_text_uid) {
                this.current_reply_text_uid = current_reply_text_uid;
            }

            public void setCurrent_reply_time(long current_reply_time) {
                this.current_reply_time = current_reply_time;
            }

            public void setCurrent_reply_title(String current_reply_title) {
                this.current_reply_title = current_reply_title;
            }

            public void setCurrent_reply_user_ico(String current_reply_user_ico) {
                this.current_reply_user_ico = current_reply_user_ico;
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

            public void setReply_sub(ReplySubBean reply_sub) {
                this.reply_sub = reply_sub;
            }

            public String toString() {
                return "DataBean{game_id='" + this.game_id + "', original_text='" + this.original_text + "', original_text_id=" + this.original_text_id + ", original_text_uid=" + this.original_text_uid + ", current_reply_text='" + this.current_reply_text + "', current_reply_text_id=" + this.current_reply_text_id + ", current_reply_text_uid=" + this.current_reply_text_uid + ", reply_sub=" + this.reply_sub + ", current_reply_time=" + this.current_reply_time + ", current_reply_title='" + this.current_reply_title + "', current_reply_user_ico='" + this.current_reply_user_ico + "'}";
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
