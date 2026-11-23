package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MainLabelBean {
    private String forum_name;
    private boolean is_allow;
    private int is_follow;
    private ManagerInfo manager_info;
    private int posts;
    private String tag_desc;
    private String tag_icon;
    private int tag_id;
    private String tag_name;
    private List<TagType> tag_type;

    public static class ManagerInfo {
        private String avatar_src;
        private String nickname;
        private int uid;

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getUid() {
            return this.uid;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class TagType {
        private int type_id;
        private String type_name;

        public int getType_id() {
            return this.type_id;
        }

        public String getType_name() {
            return this.type_name;
        }

        public void setType_id(int type_id) {
            this.type_id = type_id;
        }

        public void setType_name(String type_name) {
            this.type_name = type_name;
        }
    }

    public String getForum_name() {
        return this.forum_name;
    }

    public int getIs_follow() {
        return this.is_follow;
    }

    public ManagerInfo getManager_info() {
        return this.manager_info;
    }

    public int getPosts() {
        return this.posts;
    }

    public String getTag_desc() {
        return this.tag_desc;
    }

    public String getTag_icon() {
        return this.tag_icon;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getTag_name() {
        return this.tag_name;
    }

    public List<TagType> getTag_type() {
        return this.tag_type;
    }

    public boolean isIs_allow() {
        return this.is_allow;
    }

    public boolean is_allow() {
        return this.is_allow;
    }

    public void setForum_name(String forum_name) {
        this.forum_name = forum_name;
    }

    public void setIs_allow(boolean is_allow) {
        this.is_allow = is_allow;
    }

    public void setIs_follow(int is_follow) {
        this.is_follow = is_follow;
    }

    public void setManager_info(ManagerInfo manager_info) {
        this.manager_info = manager_info;
    }

    public void setPosts(int posts) {
        this.posts = posts;
    }

    public void setTag_desc(String tag_desc) {
        this.tag_desc = tag_desc;
    }

    public void setTag_icon(String tag_icon) {
        this.tag_icon = tag_icon;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public void setTag_name(String tag_name) {
        this.tag_name = tag_name;
    }

    public void setTag_type(List<TagType> tag_type) {
        this.tag_type = tag_type;
    }
}
