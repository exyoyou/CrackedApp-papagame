package com.join.mgps.dto;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameCommitListBean {
    private List<GameCommitList> comment_list;
    private ArrayList<GameTagBean> tagInfo;

    public static class GameCommitList {
        private String add_time;
        private String avatar_src;
        private int best;
        private boolean bolHaveCommit = true;
        private int commit;
        private int first;
        private boolean is_praise;
        private String member_honor;
        private String message;
        private String nickname;
        private int pid;
        private int praise;
        private int svip_level;
        private int uid;
        private int vip_level;

        public String getAdd_time() {
            return this.add_time;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getBest() {
            return this.best;
        }

        public int getCommit() {
            return this.commit;
        }

        public int getFirst() {
            return this.first;
        }

        public String getMember_honor() {
            return this.member_honor;
        }

        public String getMessage() {
            return this.message;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getPid() {
            return this.pid;
        }

        public int getPraise() {
            return this.praise;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public int getUid() {
            return this.uid;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public boolean isBolHaveCommit() {
            return this.bolHaveCommit;
        }

        public boolean is_praise() {
            return this.is_praise;
        }

        public void setAdd_time(String add_time) {
            this.add_time = add_time;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setBest(int best) {
            this.best = best;
        }

        public void setBolHaveCommit(boolean bolHaveCommit) {
            this.bolHaveCommit = bolHaveCommit;
        }

        public void setCommit(int commit) {
            this.commit = commit;
        }

        public void setFirst(int first) {
            this.first = first;
        }

        public void setIs_praise(boolean is_praise) {
            this.is_praise = is_praise;
        }

        public void setMember_honor(String member_honor) {
            this.member_honor = member_honor;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setPraise(int praise) {
            this.praise = praise;
        }

        public void setSvip_level(int svip_level) {
            this.svip_level = svip_level;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setVip_level(int vip_level) {
            this.vip_level = vip_level;
        }
    }

    public List<GameCommitList> getComment_list() {
        return this.comment_list;
    }

    public ArrayList<GameTagBean> getTagInfo() {
        return this.tagInfo;
    }

    public void setComment_list(List<GameCommitList> comment_list) {
        this.comment_list = comment_list;
    }

    public void setTagInfo(ArrayList<GameTagBean> tagInfo) {
        this.tagInfo = tagInfo;
    }
}
