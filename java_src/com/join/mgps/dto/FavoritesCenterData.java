package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FavoritesCenterData {
    private List<GameFromPopoWinBean.DataBean> book_group_list;
    private List<GameFromPopoWinBean.DataBean> create_group_list;
    private MemberInfoBean member_info;

    public static class MemberInfoBean {
        private String nick_name;
        private String portrait;
        private String rank;
        private String sex;
        private int svip;
        private String tag_info;
        private int uid;
        private int vip;

        public String getNick_name() {
            return this.nick_name;
        }

        public String getPortrait() {
            return this.portrait;
        }

        public String getRank() {
            return this.rank;
        }

        public String getSex() {
            return this.sex;
        }

        public int getSvip() {
            return this.svip;
        }

        public String getTag_info() {
            return this.tag_info;
        }

        public int getUid() {
            return this.uid;
        }

        public int getVip() {
            return this.vip;
        }

        public void setNick_name(String nick_name) {
            this.nick_name = nick_name;
        }

        public void setPortrait(String portrait) {
            this.portrait = portrait;
        }

        public void setRank(String rank) {
            this.rank = rank;
        }

        public void setSex(String sex) {
            this.sex = sex;
        }

        public void setSvip(int svip) {
            this.svip = svip;
        }

        public void setTag_info(String tag_info) {
            this.tag_info = tag_info;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setVip(int vip) {
            this.vip = vip;
        }
    }

    public List<GameFromPopoWinBean.DataBean> getBook_group_list() {
        return this.book_group_list;
    }

    public List<GameFromPopoWinBean.DataBean> getCreate_group_list() {
        return this.create_group_list;
    }

    public MemberInfoBean getMember_info() {
        return this.member_info;
    }

    public void setBook_group_list(List<GameFromPopoWinBean.DataBean> book_group_list) {
        this.book_group_list = book_group_list;
    }

    public void setCreate_group_list(List<GameFromPopoWinBean.DataBean> create_group_list) {
        this.create_group_list = create_group_list;
    }

    public void setMember_info(MemberInfoBean member_info) {
        this.member_info = member_info;
    }
}
