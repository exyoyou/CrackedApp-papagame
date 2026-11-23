package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumData {

    public static class ForumCommentDeleteData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumCommentReplyData {
        private int error_type;
        private String msg;
        private boolean result;
        private int reward_exp;
        private int reward_money;
        private int rid;

        public int getError_type() {
            return this.error_type;
        }

        public String getMsg() {
            return this.msg;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public int getRid() {
            return this.rid;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setError_type(int error_type) {
            this.error_type = error_type;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public void setResult(boolean result) {
            this.result = result;
        }

        public void setReward_exp(int reward_exp) {
            this.reward_exp = reward_exp;
        }

        public void setReward_money(int reward_money) {
            this.reward_money = reward_money;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }
    }

    public static class ForumCommentReplyDeleteData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumCommentReplyReplyData {
        private int error_type;
        private String msg;
        private boolean result;
        private int reward_exp;
        private int reward_money;
        private int rid;

        public int getError_type() {
            return this.error_type;
        }

        public String getMsg() {
            return this.msg;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public int getRid() {
            return this.rid;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setError_type(int error_type) {
            this.error_type = error_type;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public void setResult(boolean result) {
            this.result = result;
        }

        public void setReward_exp(int reward_exp) {
            this.reward_exp = reward_exp;
        }

        public void setReward_money(int reward_money) {
            this.reward_money = reward_money;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }
    }

    public static class ForumForumAllData {
        List<ForumBean> list;

        public List<ForumBean> getList() {
            return this.list;
        }

        public void setList(List<ForumBean> list) {
            this.list = list;
        }
    }

    public static class ForumForumData {
        private ForumBean forum;
        private List<ForumBean.ForumPostsBean> top_list;

        public ForumBean getForum() {
            return this.forum;
        }

        public List<ForumBean.ForumPostsBean> getTop_list() {
            return this.top_list;
        }

        public void setForum(ForumBean forum) {
            this.forum = forum;
        }

        public void setTop_list(List<ForumBean.ForumPostsBean> top_list) {
            this.top_list = top_list;
        }
    }

    public static class ForumForumFollowData {
        private boolean follow;

        public boolean isFollow() {
            return this.follow;
        }

        public void setFollow(boolean follow) {
            this.follow = follow;
        }
    }

    public static class ForumForumFollowListData {
        private List<ForumBean> list;

        public List<ForumBean> getList() {
            return this.list;
        }

        public void setList(List<ForumBean> list) {
            this.list = list;
        }
    }

    public static class ForumForumGroupData {
        private int gid;
        private String group_title;
        private List<ForumBean> list;
        private int show_order;

        public int getGid() {
            return this.gid;
        }

        public String getGroup_title() {
            return this.group_title;
        }

        public List<ForumBean> getList() {
            return this.list;
        }

        public int getShow_order() {
            return this.show_order;
        }

        public void setGid(int gid) {
            this.gid = gid;
        }

        public void setGroup_title(String group_title) {
            this.group_title = group_title;
        }

        public void setList(List<ForumBean> list) {
            this.list = list;
        }

        public void setShow_order(int show_order) {
            this.show_order = show_order;
        }
    }

    public static class ForumForumGroupsData {
        List<ForumForumGroupData> list;

        public List<ForumForumGroupData> getList() {
            return this.list;
        }

        public void setList(List<ForumForumGroupData> list) {
            this.list = list;
        }
    }

    public static class ForumForumPlateData {
        private List<ForumBean.ForumPostsBean> activity_posts_list;
        private List<ForumBean.ForumPostsBean> best_posts_list;
        private ForumBean forum;
        private List<ForumBean.ForumGiftBean> gift_posts_list;
        private List<ForumBean.ForumPostsBean> help_posts_list;
        private List<ForumBean.ForumPostsBean> last_posts_list;
        private List<ForumBean.ForumMemberBean> members_list;
        private List<ForumBean.ForumMemberBean> moderatorList;
        private String moderator_message;
        private List<ForumBean.ForumPostsBean> posts_list;
        private List<ForumBean.ForumPostsBean> strategy_posts_list;
        private List<ForumBean.ForumTabBean> tab_list;
        private List<ForumBean.ForumPostsBean> top_list;

        public List<ForumBean.ForumPostsBean> getActivity_posts_list() {
            return this.activity_posts_list;
        }

        public List<ForumBean.ForumPostsBean> getBest_posts_list() {
            return this.best_posts_list;
        }

        public ForumBean getForum() {
            return this.forum;
        }

        public List<ForumBean.ForumGiftBean> getGift_posts_list() {
            return this.gift_posts_list;
        }

        public List<ForumBean.ForumPostsBean> getHelp_posts_list() {
            return this.help_posts_list;
        }

        public List<ForumBean.ForumPostsBean> getLast_posts_list() {
            return this.last_posts_list;
        }

        public List<ForumBean.ForumMemberBean> getMembers_list() {
            return this.members_list;
        }

        public List<ForumBean.ForumMemberBean> getModeratorList() {
            return this.moderatorList;
        }

        public String getModerator_message() {
            return this.moderator_message;
        }

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public List<ForumBean.ForumPostsBean> getStrategy_posts_list() {
            return this.strategy_posts_list;
        }

        public List<ForumBean.ForumTabBean> getTab_list() {
            return this.tab_list;
        }

        public List<ForumBean.ForumPostsBean> getTop_list() {
            return this.top_list;
        }

        public void setActivity_posts_list(List<ForumBean.ForumPostsBean> activity_posts_list) {
            this.activity_posts_list = activity_posts_list;
        }

        public void setBest_posts_list(List<ForumBean.ForumPostsBean> best_posts_list) {
            this.best_posts_list = best_posts_list;
        }

        public void setForum(ForumBean forum) {
            this.forum = forum;
        }

        public void setGift_posts_list(List<ForumBean.ForumGiftBean> gift_posts_list) {
            this.gift_posts_list = gift_posts_list;
        }

        public void setHelp_posts_list(List<ForumBean.ForumPostsBean> help_posts_list) {
            this.help_posts_list = help_posts_list;
        }

        public void setLast_posts_list(List<ForumBean.ForumPostsBean> last_posts_list) {
            this.last_posts_list = last_posts_list;
        }

        public void setMembers_list(List<ForumBean.ForumMemberBean> members_list) {
            this.members_list = members_list;
        }

        public void setModeratorList(List<ForumBean.ForumMemberBean> moderatorList) {
            this.moderatorList = moderatorList;
        }

        public void setModerator_message(String moderator_message) {
            this.moderator_message = moderator_message;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> posts_list) {
            this.posts_list = posts_list;
        }

        public void setStrategy_posts_list(List<ForumBean.ForumPostsBean> strategy_posts_list) {
            this.strategy_posts_list = strategy_posts_list;
        }

        public void setTab_list(List<ForumBean.ForumTabBean> tab_list) {
            this.tab_list = tab_list;
        }

        public void setTop_list(List<ForumBean.ForumPostsBean> top_list) {
            this.top_list = top_list;
        }
    }

    public static class ForumForumPostsData {
        private List<ForumBean.ForumPostsBean> posts_list;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> posts_list) {
            this.posts_list = posts_list;
        }
    }

    public static class ForumForumTopicData {
        private List<ForumBean.ForumPostsBean> posts_list;
        private ForumBean.ForumTopicBean topic;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public ForumBean.ForumTopicBean getTopic() {
            return this.topic;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> posts_list) {
            this.posts_list = posts_list;
        }

        public void setTopic(ForumBean.ForumTopicBean topic) {
            this.topic = topic;
        }
    }

    public static class ForumForumWelcomeData {

        /* JADX INFO: renamed from: ad, reason: collision with root package name */
        private ForumBean.ForumWelcomeAdBean f68051ad;
        private List<ForumBean.ForumWelcomeBannerBean> banner_list;
        private List<ForumBean> hot_list;
        private List<ForumBean> member_list;
        private List<ForumBean> recommend_list;
        private boolean sign_in_status;
        private long sign_in_time;
        private List<ForumBean.ForumTopicBean> topic_list;

        public ForumBean.ForumWelcomeAdBean getAd() {
            return this.f68051ad;
        }

        public List<ForumBean.ForumWelcomeBannerBean> getBanner_list() {
            return this.banner_list;
        }

        public List<ForumBean> getHot_list() {
            return this.hot_list;
        }

        public List<ForumBean> getMember_list() {
            return this.member_list;
        }

        public List<ForumBean> getRecommend_list() {
            return this.recommend_list;
        }

        public long getSign_in_time() {
            return this.sign_in_time;
        }

        public List<ForumBean.ForumTopicBean> getTopic_list() {
            return this.topic_list;
        }

        public boolean isSign_in_status() {
            return this.sign_in_status;
        }

        public void setAd(ForumBean.ForumWelcomeAdBean ad2) {
            this.f68051ad = ad2;
        }

        public void setBanner_list(List<ForumBean.ForumWelcomeBannerBean> banner_list) {
            this.banner_list = banner_list;
        }

        public void setHot_list(List<ForumBean> hot_list) {
            this.hot_list = hot_list;
        }

        public void setMember_list(List<ForumBean> member_list) {
            this.member_list = member_list;
        }

        public void setRecommend_list(List<ForumBean> recommend_list) {
            this.recommend_list = recommend_list;
        }

        public void setSign_in_status(boolean sign_in_status) {
            this.sign_in_status = sign_in_status;
        }

        public void setSign_in_time(long sign_in_time) {
            this.sign_in_time = sign_in_time;
        }

        public void setTopic_list(List<ForumBean.ForumTopicBean> topic_list) {
            this.topic_list = topic_list;
        }
    }

    public static class ForumForumWelcomePostsData {
        private List<ForumBean.ForumPostsBean> posts_list;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> posts_list) {
            this.posts_list = posts_list;
        }
    }

    public static class ForumGroupIndex {
        private int fid;
        private String forum_description;
        private String forum_icon;
        private String forum_name;
        private String forum_number;

        @JsonProperty("is_joined")
        private int is_joined;
        private List<String> last_joied;
        private List<ForumGroupIndexTab> post_type;
        private List<ForumBean.ForumPostsBean> top_posts;
        private List<ForumGroupIndexTab> type;

        public int getFid() {
            return this.fid;
        }

        public String getForum_description() {
            return this.forum_description;
        }

        public String getForum_icon() {
            return this.forum_icon;
        }

        public String getForum_name() {
            return this.forum_name;
        }

        public String getForum_number() {
            return this.forum_number;
        }

        public int getIs_joined() {
            return this.is_joined;
        }

        public List<String> getLast_joied() {
            return this.last_joied;
        }

        public List<ForumGroupIndexTab> getPost_type() {
            return this.post_type;
        }

        public List<ForumBean.ForumPostsBean> getTop_posts() {
            return this.top_posts;
        }

        public List<ForumGroupIndexTab> getType() {
            return this.type;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setForum_description(String forum_description) {
            this.forum_description = forum_description;
        }

        public void setForum_icon(String forum_icon) {
            this.forum_icon = forum_icon;
        }

        public void setForum_name(String forum_name) {
            this.forum_name = forum_name;
        }

        public void setForum_number(String forum_number) {
            this.forum_number = forum_number;
        }

        public void setIs_joined(int is_joined) {
            this.is_joined = is_joined;
        }

        public void setLast_joied(List<String> last_joied) {
            this.last_joied = last_joied;
        }

        public void setPost_type(List<ForumGroupIndexTab> post_type) {
            this.post_type = post_type;
        }

        public void setTop_posts(List<ForumBean.ForumPostsBean> top_posts) {
            this.top_posts = top_posts;
        }

        public void setType(List<ForumGroupIndexTab> type) {
            this.type = type;
        }
    }

    public static class ForumGroupIndexTab {
        private int type_id;
        private String type_name;

        public boolean equals(Object o10) {
            if (this == o10) {
                return true;
            }
            if (o10 == null || getClass() != o10.getClass()) {
                return false;
            }
            ForumGroupIndexTab forumGroupIndexTab = (ForumGroupIndexTab) o10;
            if (this.type_id != forumGroupIndexTab.type_id) {
                return false;
            }
            String str = this.type_name;
            String str2 = forumGroupIndexTab.type_name;
            if (str != null) {
                return str.equals(str2);
            }
            return str2 == null;
        }

        public int getType_id() {
            return this.type_id;
        }

        public String getType_name() {
            return this.type_name;
        }

        public int hashCode() {
            int i10 = this.type_id * 31;
            String str = this.type_name;
            return i10 + (str != null ? str.hashCode() : 0);
        }

        public void setType_id(int type_id) {
            this.type_id = type_id;
        }

        public void setType_name(String type_name) {
            this.type_name = type_name;
        }
    }

    public static class ForumPostsBestData {
        private int best;
        private String message;
        private boolean result;

        public int getBest() {
            return this.best;
        }

        public String getMessage() {
            return this.message;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setBest(int best) {
            this.best = best;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumPostsCommentData {
        private int error_type;
        private int floor;

        @JsonProperty("is_moderator")
        private boolean is_moderator;
        private String member_honor;
        private String msg;
        private List<String> pic_list;
        private int pid;
        private List<String> raw_pic_list;
        private boolean result;
        private int reward_exp;
        private int reward_money;

        public int getError_type() {
            return this.error_type;
        }

        public int getFloor() {
            return this.floor;
        }

        public String getMember_honor() {
            return this.member_honor;
        }

        public String getMsg() {
            return this.msg;
        }

        public List<String> getPic_list() {
            return this.pic_list;
        }

        public int getPid() {
            return this.pid;
        }

        public List<String> getRaw_pic_list() {
            return this.raw_pic_list;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public boolean isResult() {
            return this.result;
        }

        public boolean is_moderator() {
            return this.is_moderator;
        }

        public void setError_type(int error_type) {
            this.error_type = error_type;
        }

        public void setFloor(int floor) {
            this.floor = floor;
        }

        public void setIs_moderator(boolean is_moderator) {
            this.is_moderator = is_moderator;
        }

        public void setMember_honor(String member_honor) {
            this.member_honor = member_honor;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public void setPic_list(List<String> pic_list) {
            this.pic_list = pic_list;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setRaw_pic_list(List<String> raw_pic_list) {
            this.raw_pic_list = raw_pic_list;
        }

        public void setResult(boolean result) {
            this.result = result;
        }

        public void setReward_exp(int reward_exp) {
            this.reward_exp = reward_exp;
        }

        public void setReward_money(int reward_money) {
            this.reward_money = reward_money;
        }
    }

    public static class ForumPostsData {
        private List<ForumBean.ForumCommentBean> comment_list;
        private List<ForumBean.ForumGagType> forum_gag_type;
        private ForumBean.GameInfo game_info;
        private ForumBean.ForumPostsBean posts;

        public List<ForumBean.ForumCommentBean> getComment_list() {
            return this.comment_list;
        }

        public List<ForumBean.ForumGagType> getForum_gag_type() {
            return this.forum_gag_type;
        }

        public ForumBean.GameInfo getGame_info() {
            return this.game_info;
        }

        public ForumBean.ForumPostsBean getPosts() {
            return this.posts;
        }

        public void setComment_list(List<ForumBean.ForumCommentBean> comment_list) {
            this.comment_list = comment_list;
        }

        public void setForum_gag_type(List<ForumBean.ForumGagType> forum_gag_type) {
            this.forum_gag_type = forum_gag_type;
        }

        public void setGame_info(ForumBean.GameInfo game_info) {
            this.game_info = game_info;
        }

        public void setPosts(ForumBean.ForumPostsBean posts) {
            this.posts = posts;
        }
    }

    public static class ForumPostsDeleteData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumPostsFavoritesData {
        private boolean favorites;

        public boolean isFavorites() {
            return this.favorites;
        }

        public void setFavorites(boolean favorites) {
            this.favorites = favorites;
        }
    }

    public static class ForumPostsHelpSolveData {
        private String message;
        private boolean result;

        public String getMessage() {
            return this.message;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumPostsPraiseData {
        private boolean result;

        public ForumPostsPraiseData() {
        }

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean result) {
            this.result = result;
        }

        public ForumPostsPraiseData(boolean result) {
            this.result = result;
        }
    }

    public static class ForumPostsReportData {
        private boolean result;

        public boolean isResult() {
            return this.result;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumPostsSubmitData {
        boolean hasSensitiveWords;
        int pid;
        boolean result;
        private int reward_exp;
        private int reward_money;

        public int getPid() {
            return this.pid;
        }

        public int getReward_exp() {
            return this.reward_exp;
        }

        public int getReward_money() {
            return this.reward_money;
        }

        public boolean isHasSensitiveWords() {
            return this.hasSensitiveWords;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setHasSensitiveWords(boolean hasSensitiveWords) {
            this.hasSensitiveWords = hasSensitiveWords;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setResult(boolean result) {
            this.result = result;
        }

        public void setReward_exp(int reward_exp) {
            this.reward_exp = reward_exp;
        }

        public void setReward_money(int reward_money) {
            this.reward_money = reward_money;
        }

        public String toString() {
            return "ForumPostsSubmitData{result=" + this.result + ", pid=" + this.pid + '}';
        }
    }

    public static class ForumProfileCommentData {
        private long last_update_time;
        private List<ForumBean.ForumProfileCommentBean> list;
        private ForumBean.ForumPostsBean posts;

        public long getLast_update_time() {
            return this.last_update_time;
        }

        public List<ForumBean.ForumProfileCommentBean> getList() {
            return this.list;
        }

        public ForumBean.ForumPostsBean getPosts() {
            return this.posts;
        }

        public void setLast_update_time(long last_update_time) {
            this.last_update_time = last_update_time;
        }

        public void setList(List<ForumBean.ForumProfileCommentBean> list) {
            this.list = list;
        }

        public void setPosts(ForumBean.ForumPostsBean posts) {
            this.posts = posts;
        }
    }

    public static class ForumProfileFavoritesPostsData {
        private List<ForumBean.ForumPostsBean> posts_list;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> posts_list) {
            this.posts_list = posts_list;
        }
    }

    public static class ForumProfileMessageData {
        private List<ForumBean.ForumProfileMessageBean> message_list;

        public List<ForumBean.ForumProfileMessageBean> getMessage_list() {
            return this.message_list;
        }

        public void setMessage_list(List<ForumBean.ForumProfileMessageBean> message_list) {
            this.message_list = message_list;
        }
    }

    public static class ForumProfileMessageReplyData {
        ForumBean.ForumCommentBean comment;

        public ForumBean.ForumCommentBean getComment() {
            return this.comment;
        }

        public void setComment(ForumBean.ForumCommentBean comment) {
            this.comment = comment;
        }
    }

    public static class ForumProfilePostsData {
        private List<ForumBean.ForumPostsBean> posts_list;
        private ForumBean.ForumProfilePostUserInfoBean user_info;

        public List<ForumBean.ForumPostsBean> getPosts_list() {
            return this.posts_list;
        }

        public ForumBean.ForumProfilePostUserInfoBean getUser_info() {
            return this.user_info;
        }

        public void setPosts_list(List<ForumBean.ForumPostsBean> posts_list) {
            this.posts_list = posts_list;
        }

        public void setUser_info(ForumBean.ForumProfilePostUserInfoBean user_info) {
            this.user_info = user_info;
        }
    }

    public static class ForumProfileUnreadMessageCountData {
        private int unread;

        public int getUnread() {
            return this.unread;
        }

        public void setUnread(int unread) {
            this.unread = unread;
        }
    }

    public static class ForumResult {
        private boolean first;
        private String msg;
        private boolean result;

        public String getMsg() {
            return this.msg;
        }

        public boolean isFirst() {
            return this.first;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setFirst(boolean first) {
            this.first = first;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public void setResult(boolean result) {
            this.result = result;
        }
    }

    public static class ForumSearchIndexData {
        private List<ForumBean.ForumSearchIndexBean> history;
        private List<ForumBean.ForumSearchIndexBean> recommend;

        public List<ForumBean.ForumSearchIndexBean> getHistory() {
            return this.history;
        }

        public List<ForumBean.ForumSearchIndexBean> getRecommend() {
            return this.recommend;
        }

        public void setHistory(List<ForumBean.ForumSearchIndexBean> history) {
            this.history = history;
        }

        public void setRecommend(List<ForumBean.ForumSearchIndexBean> recommend) {
            this.recommend = recommend;
        }
    }

    public static class ForumSearchQueryData {
        private List<ForumBean.ForumSearchQueryBean> res;

        public List<ForumBean.ForumSearchQueryBean> getRes() {
            return this.res;
        }

        public void setRes(List<ForumBean.ForumSearchQueryBean> res) {
            this.res = res;
        }
    }

    public static class ForumUserFavoritesData {
        private DownloadTask downloadTask;
        private String fav_time;
        private CollectionBeanSub game;
        private ForumBean.ForumPostsBean post;
        private int type;

        public DownloadTask getDownloadTask() {
            return this.downloadTask;
        }

        public String getFav_time() {
            return this.fav_time;
        }

        public CollectionBeanSub getGame() {
            return this.game;
        }

        public ForumBean.ForumPostsBean getPost() {
            return this.post;
        }

        public int getType() {
            return this.type;
        }

        public void setDownloadTask(DownloadTask downloadTask) {
            this.downloadTask = downloadTask;
        }

        public void setFav_time(String fav_time) {
            this.fav_time = fav_time;
        }

        public void setGame(CollectionBeanSub game) {
            this.game = game;
        }

        public void setPost(ForumBean.ForumPostsBean posts) {
            this.post = posts;
        }

        public void setType(int type) {
            this.type = type;
        }
    }

    public static class ForumUserFavoritesDatas {
        private List<ForumUserFavoritesData> favorites_list;

        public List<ForumUserFavoritesData> getFavorites_list() {
            return this.favorites_list;
        }

        public void setFavorites_list(List<ForumUserFavoritesData> favorites_list) {
            this.favorites_list = favorites_list;
        }
    }

    public static class GroupFans {
        List<GroupMemberBean> list;
        List<GroupMemberBean> managers;

        /* JADX INFO: renamed from: me, reason: collision with root package name */
        GroupMemberBean f68052me;

        public List<GroupMemberBean> getList() {
            return this.list;
        }

        public List<GroupMemberBean> getManagers() {
            return this.managers;
        }

        public GroupMemberBean getMe() {
            return this.f68052me;
        }

        public void setList(List<GroupMemberBean> list) {
            this.list = list;
        }

        public void setManagers(List<GroupMemberBean> managers) {
            this.managers = managers;
        }

        public void setMe(GroupMemberBean me2) {
            this.f68052me = me2;
        }
    }

    public static class GroupMemberBean {
        private String avatar_src;
        private int grade;

        @JsonProperty("is_joined")
        private boolean is_joined;
        private String join_time;
        private String nickname;
        private String uid;

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getGrade() {
            return this.grade;
        }

        public String getJoin_time() {
            return this.join_time;
        }

        public String getNickname() {
            return this.nickname;
        }

        public String getUid() {
            return this.uid;
        }

        public boolean is_joined() {
            return this.is_joined;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setGrade(int grade) {
            this.grade = grade;
        }

        public void setIs_joined(boolean is_joined) {
            this.is_joined = is_joined;
        }

        public void setJoin_time(String join_time) {
            this.join_time = join_time;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public static class HomepageRecommendGroup {
        List<RecommenGroup> tuijianguanzhu;
        List<RecommenGroup> wodeguanzhu;

        public List<RecommenGroup> getTuijianguanzhu() {
            return this.tuijianguanzhu;
        }

        public List<RecommenGroup> getWodeguanzhu() {
            return this.wodeguanzhu;
        }

        public void setTuijianguanzhu(List<RecommenGroup> tuijianguanzhu) {
            this.tuijianguanzhu = tuijianguanzhu;
        }

        public void setWodeguanzhu(List<RecommenGroup> wodeguanzhu) {
            this.wodeguanzhu = wodeguanzhu;
        }
    }

    public static class HomepageRecommendLabel {
        List<RecommenGroupClassify> fenzu;
        int flag;
        int label_switcher;
        private String msg;
        List<ForumBean.ForumPostsBean> post_list;
        List<RecommendLabelTag> recommend_tags;
        private boolean result;
        List<RecommendLabelTag> tag_list;

        public List<RecommenGroupClassify> getFenzu() {
            return this.fenzu;
        }

        public int getFlag() {
            return this.flag;
        }

        public int getLabel_switcher() {
            return this.label_switcher;
        }

        public String getMsg() {
            return this.msg;
        }

        public List<ForumBean.ForumPostsBean> getPost_list() {
            return this.post_list;
        }

        public List<RecommendLabelTag> getRecommend_tags() {
            return this.recommend_tags;
        }

        public List<RecommendLabelTag> getTag_list() {
            return this.tag_list;
        }

        public boolean isResult() {
            return this.result;
        }

        public void setFenzu(List<RecommenGroupClassify> fenzu) {
            this.fenzu = fenzu;
        }

        public void setFlag(int flag) {
            this.flag = flag;
        }

        public void setLabel_switcher(int label_switcher) {
            this.label_switcher = label_switcher;
        }

        public void setMsg(String msg) {
            this.msg = msg;
        }

        public void setPost_list(List<ForumBean.ForumPostsBean> post_list) {
            this.post_list = post_list;
        }

        public void setRecommend_tags(List<RecommendLabelTag> recommend_tags) {
            this.recommend_tags = recommend_tags;
        }

        public void setResult(boolean result) {
            this.result = result;
        }

        public void setTag_list(List<RecommendLabelTag> tag_list) {
            this.tag_list = tag_list;
        }
    }

    public static class MyForumMain {
        private List<RecommenGroup> forum_follow;
        private List<RecommendLabelTag> tag_follow;

        public List<RecommenGroup> getForum_follow() {
            return this.forum_follow;
        }

        public List<RecommendLabelTag> getTag_follow() {
            return this.tag_follow;
        }

        public void setForum_follow(List<RecommenGroup> forum_follow) {
            this.forum_follow = forum_follow;
        }

        public void setTag_follow(List<RecommendLabelTag> tag_follow) {
            this.tag_follow = tag_follow;
        }
    }
}
