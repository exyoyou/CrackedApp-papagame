package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class UserCenterBean implements Serializable {
    private UserCenterItem detail_entrance;
    private List<UserCenterItem> first_group;
    private TitleItemBean join_member;
    private List<TitleItemBean> member_func;
    private List<UserCenterItem> module_entrance_list;
    private List<UserCenterItem> second_group;
    private List<UserCenterItem> third_group;

    public static class TitleItemBean {
        private String jumpUrl;
        private String subTitle;
        private String title;

        public String getJumpUrl() {
            return this.jumpUrl;
        }

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setJumpUrl(String jumpUrl) {
            this.jumpUrl = jumpUrl;
        }

        public void setSubTitle(String subTitle) {
            this.subTitle = subTitle;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class UserCenterItem {
        private ExtBean extBean;
        private boolean isEmpty;
        private boolean isPlaceHolder;
        private UserCenterItemBean main;
        private ArrayList<JumpInfoBean> sub;
        private int unReadCount;

        public ExtBean getExtBean() {
            return this.extBean;
        }

        public UserCenterItemBean getMain() {
            return this.main;
        }

        public ArrayList<JumpInfoBean> getSub() {
            return this.sub;
        }

        public int getUnReadCount() {
            return this.unReadCount;
        }

        public boolean isEmpty() {
            return this.isEmpty;
        }

        public boolean isPlaceHolder() {
            return this.isPlaceHolder;
        }

        public void setEmpty(boolean empty) {
            this.isEmpty = empty;
        }

        public void setExtBean(ExtBean extBean) {
            this.extBean = extBean;
        }

        public void setMain(UserCenterItemBean main) {
            this.main = main;
        }

        public void setPlaceHolder(boolean placeHolder) {
            this.isPlaceHolder = placeHolder;
        }

        public void setSub(ArrayList<JumpInfoBean> sub) {
            this.sub = sub;
        }

        public void setUnReadCount(int unReadCount) {
            this.unReadCount = unReadCount;
        }
    }

    public UserCenterItem getDetail_entrance() {
        return this.detail_entrance;
    }

    public List<UserCenterItem> getFirst_group() {
        return this.first_group;
    }

    public TitleItemBean getJoin_member() {
        return this.join_member;
    }

    public List<TitleItemBean> getMember_func() {
        return this.member_func;
    }

    public List<UserCenterItem> getModule_entrance_list() {
        return this.module_entrance_list;
    }

    public List<UserCenterItem> getSecond_group() {
        return this.second_group;
    }

    public List<UserCenterItem> getThird_group() {
        return this.third_group;
    }

    public void setDetail_entrance(UserCenterItem detail_entrance) {
        this.detail_entrance = detail_entrance;
    }

    public void setFirst_group(List<UserCenterItem> first_group) {
        this.first_group = first_group;
    }

    public void setJoin_member(TitleItemBean join_member) {
        this.join_member = join_member;
    }

    public void setMember_func(List<TitleItemBean> member_func) {
        this.member_func = member_func;
    }

    public void setModule_entrance_list(List<UserCenterItem> module_entrance_list) {
        this.module_entrance_list = module_entrance_list;
    }

    public void setSecond_group(List<UserCenterItem> second_group) {
        this.second_group = second_group;
    }

    public void setThird_group(List<UserCenterItem> third_group) {
        this.third_group = third_group;
    }

    public String toString() {
        return "UserCenterBean{first_group=" + this.first_group + ", second_group=" + this.second_group + '}';
    }
}
