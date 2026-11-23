package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class MessageRedPointBean {
    private String code;
    private String flag;
    private MessagesBean messages;
    private String version;

    public static class MessagesBean {
        private DataBean data;

        public static class DataBean {
            private int community_praise_surplus_number;
            private int community_surplus_number;
            private int notice_surplus_number;
            private int praise_surplus_number;
            private int replay_surplus_number;

            public int getCommunity_praise_surplus_number() {
                return this.community_praise_surplus_number;
            }

            public int getCommunity_surplus_number() {
                return this.community_surplus_number;
            }

            public int getNotice_surplus_number() {
                return this.notice_surplus_number;
            }

            public int getPraise_surplus_number() {
                return this.praise_surplus_number;
            }

            public int getReplay_surplus_number() {
                return this.replay_surplus_number;
            }

            public void setCommunity_praise_surplus_number(int community_praise_surplus_number) {
                this.community_praise_surplus_number = community_praise_surplus_number;
            }

            public void setCommunity_surplus_number(int community_surplus_number) {
                this.community_surplus_number = community_surplus_number;
            }

            public void setNotice_surplus_number(int notice_surplus_number) {
                this.notice_surplus_number = notice_surplus_number;
            }

            public void setPraise_surplus_number(int praise_surplus_number) {
                this.praise_surplus_number = praise_surplus_number;
            }

            public void setReplay_surplus_number(int replay_surplus_number) {
                this.replay_surplus_number = replay_surplus_number;
            }
        }

        public DataBean getData() {
            return this.data;
        }

        public void setData(DataBean data) {
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
