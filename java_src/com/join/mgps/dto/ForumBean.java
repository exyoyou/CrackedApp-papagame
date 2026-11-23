package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.github.snowdream.android.app.downloader.DownloadTask;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumBean implements Serializable, Cloneable {
    private long add_time;
    private String description;
    private int fid;
    private int follow_count;
    private long follow_time;
    private String game_collections;
    private String icon_src;

    @JsonProperty("is_follow")
    private boolean is_follow;
    private int member_is_write;
    private String name;
    private int posts;
    private int svip_is_write;
    private int today_posts;
    private int users;
    private int vip_is_write;

    public static class ForumCommentBean implements Cloneable {
        private long add_time;
        private int answer_flg;
        private String avatar_src;
        private int floor;
        private int forum_auth;

        @JsonProperty("is_moderator")
        private boolean is_moderator;
        private String member_honor;
        private String message;
        private String nickname;
        private boolean officialAccount;
        private List<String> pic_list;
        private int pid;
        private List<String> raw_pic_list;
        private List<ForumCommentReplyBean> reply_list;
        private int svip_level;
        private int uid;
        private int vip_level;

        public ForumCommentBean() {
        }

        public Object clone() {
            try {
                return super.clone();
            } catch (CloneNotSupportedException e10) {
                e10.printStackTrace();
                return new ForumCommentBean();
            }
        }

        public long getAdd_time() {
            return this.add_time;
        }

        public int getAnswer_flg() {
            return this.answer_flg;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getFloor() {
            return this.floor;
        }

        public int getForum_auth() {
            return this.forum_auth;
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

        public List<String> getPic_list() {
            return this.pic_list;
        }

        public int getPid() {
            return this.pid;
        }

        public List<String> getRaw_pic_list() {
            return this.raw_pic_list;
        }

        public List<ForumCommentReplyBean> getReply_list() {
            return this.reply_list;
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

        public boolean isOfficialAccount() {
            return this.officialAccount;
        }

        public boolean is_moderator() {
            return this.is_moderator;
        }

        public void setAdd_time(long add_time) {
            this.add_time = add_time;
        }

        public void setAnswer_flg(int answer_flg) {
            this.answer_flg = answer_flg;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setFloor(int floor) {
            this.floor = floor;
        }

        public void setForum_auth(int forum_auth) {
            this.forum_auth = forum_auth;
        }

        public void setIs_moderator(boolean is_moderator) {
            this.is_moderator = is_moderator;
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

        public void setOfficialAccount(boolean officialAccount) {
            this.officialAccount = officialAccount;
        }

        public void setPic_list(List<String> pic_list) {
            if (this.pic_list == null) {
                this.pic_list = new ArrayList();
            }
            this.pic_list.clear();
            this.pic_list.addAll(pic_list);
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setRaw_pic_list(List<String> raw_pic_list) {
            this.raw_pic_list = raw_pic_list;
        }

        public void setReply_list(List<ForumCommentReplyBean> reply_list) {
            if (this.reply_list == null) {
                this.reply_list = new ArrayList();
            }
            this.reply_list.clear();
            this.reply_list.addAll(reply_list);
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

        public ForumCommentBean(ForumCommentBean bean) {
            this.pid = bean.getPid();
            this.uid = bean.getUid();
            this.floor = bean.getFloor();
            this.nickname = bean.getNickname();
            this.avatar_src = bean.getAvatar_src();
            this.message = bean.getMessage();
            this.add_time = bean.getAdd_time();
            this.raw_pic_list = bean.getRaw_pic_list();
            this.pic_list = bean.getPic_list();
            setReply_list(bean.getReply_list());
            this.forum_auth = bean.getForum_auth();
            this.officialAccount = bean.isOfficialAccount();
            this.answer_flg = bean.getAnswer_flg();
        }
    }

    public static class ForumCommentReplyBean {
        private long add_time;
        private BannerBean jump_info;
        private String message;
        private String nickname;
        private boolean officialAccount;
        private boolean rOfficialAccount;
        private int rid;
        private String rnickname;
        private int rrid;
        private int ruid;
        private int uid;

        public long getAdd_time() {
            return this.add_time;
        }

        public BannerBean getJump_info() {
            return this.jump_info;
        }

        public String getMessage() {
            return this.message;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getRid() {
            return this.rid;
        }

        public String getRnickname() {
            return this.rnickname;
        }

        public int getRrid() {
            return this.rrid;
        }

        public int getRuid() {
            return this.ruid;
        }

        public int getUid() {
            return this.uid;
        }

        public boolean isOfficialAccount() {
            return this.officialAccount;
        }

        public boolean isrOfficialAccount() {
            return this.rOfficialAccount;
        }

        public void setAdd_time(long add_time) {
            this.add_time = add_time;
        }

        public void setJump_info(BannerBean jump_info) {
            this.jump_info = jump_info;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setOfficialAccount(boolean officialAccount) {
            this.officialAccount = officialAccount;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }

        public void setRnickname(String rnickname) {
            this.rnickname = rnickname;
        }

        public void setRrid(int rrid) {
            this.rrid = rrid;
        }

        public void setRuid(int ruid) {
            this.ruid = ruid;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setrOfficialAccount(boolean rOfficialAccount) {
            this.rOfficialAccount = rOfficialAccount;
        }
    }

    public static class ForumCopperTitle {
        private String battleColor;
        private String battleTitle;

        public String getBattleColor() {
            return this.battleColor;
        }

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public void setBattleColor(String battleColor) {
            this.battleColor = battleColor;
        }

        public void setBattleTitle(String battleTitle) {
            this.battleTitle = battleTitle;
        }
    }

    public enum ForumEvent {
        ForumWelcomeBanner,
        ForumWelcome,
        ForumWelcomePosts,
        Forum,
        ForumPosts,
        ForumAll,
        PostsSubmit,
        Posts,
        PostsIndex2,
        PostsDelete,
        PostsComment,
        PostsPraise,
        CommentReply,
        CommentReplyDelete,
        ProfilePosts,
        ProfileGetUnreadMessageCount,
        ProfileMessage,
        ProfileComment,
        MyProfileFavorites,
        ForumIndexBanner,
        HomepageRecommendGroup,
        HomepageRecommendLabel,
        HomeGameCarefully,
        DownloadCenterAd,
        SearchListData
    }

    public static class ForumExtBean {
        List<ForumBean> followedForums;
        boolean isContainHelp;
        boolean refresh;
        int requestCode;
        int startFlags;
        ForumTabBean tabBean;

        public List<ForumBean> getFollowedForums() {
            return this.followedForums;
        }

        public int getRequestCode() {
            return this.requestCode;
        }

        public int getStartFlags() {
            int i10 = this.startFlags;
            if (i10 == 0) {
                return 67108864;
            }
            if (i10 < 0) {
                return 0;
            }
            return i10;
        }

        public ForumTabBean getTabBean() {
            return this.tabBean;
        }

        public boolean isContainHelp() {
            return this.isContainHelp;
        }

        public boolean isRefresh() {
            return this.refresh;
        }

        public void setContainHelp(boolean containHelp) {
            this.isContainHelp = containHelp;
        }

        public void setFollowedForums(List<ForumBean> followedForums) {
            this.followedForums = followedForums;
        }

        public void setRefresh(boolean refresh) {
            this.refresh = refresh;
        }

        public void setRequestCode(int requestCode) {
            this.requestCode = requestCode;
        }

        public void setStartFlags(int startFlags) {
            this.startFlags = startFlags;
        }

        public void setTabBean(ForumTabBean tabBean) {
            this.tabBean = tabBean;
        }
    }

    public static class ForumGagType {
        private String name;
        private int type;

        public String getName() {
            return this.name;
        }

        public int getType() {
            return this.type;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setType(int type) {
            this.type = type;
        }
    }

    public static class ForumGameStrategyTagBean {
        private String tag_id;
        private String tag_name;

        public String getTag_id() {
            return this.tag_id;
        }

        public String getTag_name() {
            return this.tag_name;
        }

        public void setTag_id(String tag_id) {
            this.tag_id = tag_id;
        }

        public void setTag_name(String tag_name) {
            this.tag_name = tag_name;
        }
    }

    public static class ForumGiftBean {
        private String cdk_code;
        private String oem_end_time;
        private String oem_icon;
        private String oem_id;
        private String oem_name;
        private String oem_title;
        private String oem_type;
        private Boolean receive;
        private String surplus_count;

        public String getCdk_code() {
            return this.cdk_code;
        }

        public String getOem_end_time() {
            return this.oem_end_time;
        }

        public String getOem_icon() {
            return this.oem_icon;
        }

        public String getOem_id() {
            return this.oem_id;
        }

        public String getOem_name() {
            return this.oem_name;
        }

        public String getOem_title() {
            return this.oem_title;
        }

        public String getOem_type() {
            return this.oem_type;
        }

        public Boolean getReceive() {
            return this.receive;
        }

        public String getSurplus_count() {
            return this.surplus_count;
        }

        public void setCdk_code(String cdk_code) {
            this.cdk_code = cdk_code;
        }

        public void setOem_end_time(String oem_end_time) {
            this.oem_end_time = oem_end_time;
        }

        public void setOem_icon(String oem_icon) {
            this.oem_icon = oem_icon;
        }

        public void setOem_id(String oem_id) {
            this.oem_id = oem_id;
        }

        public void setOem_name(String oem_name) {
            this.oem_name = oem_name;
        }

        public void setOem_title(String oem_title) {
            this.oem_title = oem_title;
        }

        public void setOem_type(String oem_type) {
            this.oem_type = oem_type;
        }

        public void setReceive(Boolean receive) {
            this.receive = receive;
        }

        public void setSurplus_count(String surplus_count) {
            this.surplus_count = surplus_count;
        }
    }

    public static class ForumMemberBean {
        private long add_time;
        private String avatar_src;
        private String nickname;
        private int svip_level;
        private int uid;
        private int vip_level;

        public long getAdd_time() {
            return this.add_time;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public String getNickname() {
            return this.nickname;
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

        public void setAdd_time(long add_time) {
            this.add_time = add_time;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
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

    public static class ForumPostsBean implements Serializable, Cloneable {
        private long add_time;
        private boolean attach_pic;
        private boolean attach_video;
        private int auth;
        private String avatar_src;
        private int best;
        private String cdn_url;
        private String comment;
        private int commit;
        private ForumCopperTitle copper_title;
        private List<RecommendLabelTag> employ_tags;
        private int fid;
        private int first;
        private String fname;
        private int forum_auth;
        private String forum_name;
        private String game_id;
        private int help;
        private int help_money;

        @JsonProperty("is_add_tag_allow")
        private boolean is_add_tag_allow;

        @JsonProperty("is_best_allow")
        private boolean is_best_allow;

        @JsonProperty("is_del_allow")
        private boolean is_del_allow;

        @JsonProperty("is_favorite")
        private boolean is_favorite;

        @JsonProperty("is_first")
        private boolean is_first;

        @JsonProperty("is_gag")
        private boolean is_gag;

        @JsonProperty("is_moderator")
        private boolean is_moderator;

        @JsonProperty("is_praise")
        private boolean is_praise;

        @JsonProperty("is_remove_tag_allow")
        private boolean is_remove_tag_allow;
        private String last_comment_time;
        private String member_honor;
        private String message;
        private String nickname;
        private boolean officialAccount;
        private int pid;
        private int post_type;
        private int praise;
        private GameInfo relation_game;
        private String resource_url;
        private List<ResBean> rs_list;
        private List<ResBean> small_thumb_pic_list;
        private int solve_flg;
        private int strategy;
        private String subject;
        private int svip_level;
        private List<TagInfo> tag_info;
        private List<RecommendLabelTag> tag_list;
        private List<RecommendLabelTag> tags;
        private int uid;
        private int view;
        private int vip_level;
        private boolean ui_expand = false;
        private String post_detail = "";

        public static class ResBean {
            private String raw;
            private String thumb;
            private String type;

            public ResBean() {
            }

            public String getRaw() {
                return this.raw;
            }

            public String getThumb() {
                return this.thumb;
            }

            public String getType() {
                return this.type;
            }

            public void setRaw(String raw) {
                this.raw = raw;
            }

            public void setThumb(String thumb) {
                this.thumb = thumb;
            }

            public void setType(String type) {
                this.type = type;
            }

            public ResBean(String type, String thumb, String raw) {
                this.type = type;
                this.thumb = thumb;
                this.raw = raw;
            }
        }

        public static class TagInfo {
            private String border_color;
            private String color;
            private String font_color;

            /* JADX INFO: renamed from: id, reason: collision with root package name */
            private String f68049id;
            private String name;
            private int resId;

            public String getBorder_color() {
                return this.border_color;
            }

            public String getColor() {
                return this.color;
            }

            public String getFont_color() {
                return this.font_color;
            }

            public String getId() {
                return this.f68049id;
            }

            public String getName() {
                return this.name;
            }

            public int getResId() {
                return this.resId;
            }

            public void setBorder_color(String border_color) {
                this.border_color = border_color;
            }

            public void setColor(String color) {
                this.color = color;
            }

            public void setFont_color(String font_color) {
                this.font_color = font_color;
            }

            public void setId(String id2) {
                this.f68049id = id2;
            }

            public void setName(String name) {
                this.name = name;
            }

            public void setResId(int resId) {
                this.resId = resId;
            }
        }

        public Object clone() throws CloneNotSupportedException {
            return super.clone();
        }

        public long getAdd_time() {
            return this.add_time;
        }

        public int getAuth() {
            return this.auth;
        }

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public int getBest() {
            return this.best;
        }

        public String getCdn_url() {
            return this.cdn_url;
        }

        public String getComment() {
            return this.comment;
        }

        public int getCommit() {
            return this.commit;
        }

        public ForumCopperTitle getCopper_title() {
            return this.copper_title;
        }

        public List<RecommendLabelTag> getEmploy_tags() {
            return this.employ_tags;
        }

        public int getFid() {
            return this.fid;
        }

        public int getFirst() {
            return this.first;
        }

        public String getFname() {
            return this.fname;
        }

        public int getForum_auth() {
            return this.forum_auth;
        }

        public String getForum_name() {
            return this.forum_name;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public int getHelp() {
            return this.help;
        }

        public int getHelp_money() {
            return this.help_money;
        }

        public String getLast_comment_time() {
            return this.last_comment_time;
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

        public String getPost_detail() {
            return this.post_detail;
        }

        public int getPost_type() {
            return this.post_type;
        }

        public int getPraise() {
            return this.praise;
        }

        public GameInfo getRelation_game() {
            return this.relation_game;
        }

        public String getResource_url() {
            return this.resource_url;
        }

        public List<ResBean> getRs_list() {
            return this.rs_list;
        }

        public List<ResBean> getSmall_thumb_pic_list() {
            return this.small_thumb_pic_list;
        }

        public int getSolve_flg() {
            return this.solve_flg;
        }

        public int getStrategy() {
            return this.strategy;
        }

        public String getSubject() {
            return this.subject;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public List<TagInfo> getTag_info() {
            return this.tag_info;
        }

        public List<RecommendLabelTag> getTag_list() {
            return this.tag_list;
        }

        public List<RecommendLabelTag> getTags() {
            return this.tags;
        }

        public int getUid() {
            return this.uid;
        }

        public int getView() {
            return this.view;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public boolean isAttach_pic() {
            return this.attach_pic;
        }

        public boolean isAttach_video() {
            return this.attach_video;
        }

        public boolean isOfficialAccount() {
            return this.officialAccount;
        }

        public boolean isUi_expand() {
            return this.ui_expand;
        }

        public boolean is_add_tag_allow() {
            return this.is_add_tag_allow;
        }

        public boolean is_best_allow() {
            return this.is_best_allow;
        }

        public boolean is_del_allow() {
            return this.is_del_allow;
        }

        public boolean is_favorite() {
            return this.is_favorite;
        }

        public boolean is_first() {
            return this.is_first;
        }

        public boolean is_gag() {
            return this.is_gag;
        }

        public boolean is_moderator() {
            return this.is_moderator;
        }

        public boolean is_praise() {
            return this.is_praise;
        }

        public boolean is_remove_tag_allow() {
            return this.is_remove_tag_allow;
        }

        public void setAdd_time(long add_time) {
            this.add_time = add_time;
        }

        public void setAttach_pic(boolean attach_pic) {
            this.attach_pic = attach_pic;
        }

        public void setAttach_video(boolean attach_video) {
            this.attach_video = attach_video;
        }

        public void setAuth(int auth) {
            this.auth = auth;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setBest(int best) {
            this.best = best;
        }

        public void setCdn_url(String cdn_url) {
            this.cdn_url = cdn_url;
        }

        public void setComment(String comment) {
            this.comment = comment;
        }

        public void setCommit(int commit) {
            this.commit = commit;
        }

        public void setCopper_title(ForumCopperTitle copper_title) {
            this.copper_title = copper_title;
        }

        public void setEmploy_tags(List<RecommendLabelTag> employ_tags) {
            this.employ_tags = employ_tags;
        }

        public void setFid(int fid) {
            this.fid = fid;
        }

        public void setFirst(int first) {
            this.first = first;
        }

        public void setFname(String fname) {
            this.fname = fname;
        }

        public void setForum_auth(int forum_auth) {
            this.forum_auth = forum_auth;
        }

        public void setForum_name(String forum_name) {
            this.forum_name = forum_name;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setHelp(int help) {
            this.help = help;
        }

        public void setHelp_money(int help_money) {
            this.help_money = help_money;
        }

        public void setIs_add_tag_allow(boolean is_add_tag_allow) {
            this.is_add_tag_allow = is_add_tag_allow;
        }

        public void setIs_best_allow(boolean is_best_allow) {
            this.is_best_allow = is_best_allow;
        }

        public void setIs_del_allow(boolean is_del_allow) {
            this.is_del_allow = is_del_allow;
        }

        public void setIs_favorite(boolean is_favorite) {
            this.is_favorite = is_favorite;
        }

        public void setIs_first(boolean is_first) {
            this.is_first = is_first;
        }

        public void setIs_gag(boolean is_gag) {
            this.is_gag = is_gag;
        }

        public void setIs_moderator(boolean is_moderator) {
            this.is_moderator = is_moderator;
        }

        public void setIs_praise(boolean is_praise) {
            this.is_praise = is_praise;
        }

        public void setIs_remove_tag_allow(boolean is_remove_tag_allow) {
            this.is_remove_tag_allow = is_remove_tag_allow;
        }

        public void setLast_comment_time(String last_comment_time) {
            this.last_comment_time = last_comment_time;
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

        public void setOfficialAccount(boolean officialAccount) {
            this.officialAccount = officialAccount;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setPost_detail(String post_detail) {
            this.post_detail = post_detail;
        }

        public void setPost_type(int post_type) {
            this.post_type = post_type;
        }

        public void setPraise(int praise) {
            this.praise = praise;
        }

        public void setRelation_game(GameInfo relation_game) {
            this.relation_game = relation_game;
        }

        public void setResource_url(String resource_url) {
            this.resource_url = resource_url;
        }

        public void setRs_list(List<ResBean> rs_list) {
            this.rs_list = rs_list;
        }

        public void setSmall_thumb_pic_list(List<ResBean> small_thumb_pic_list) {
            this.small_thumb_pic_list = small_thumb_pic_list;
        }

        public void setSolve_flg(int solve_flg) {
            this.solve_flg = solve_flg;
        }

        public void setStrategy(int strategy) {
            this.strategy = strategy;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        public void setSvip_level(int svip_level) {
            this.svip_level = svip_level;
        }

        public void setTag_info(List<TagInfo> tag_info) {
            this.tag_info = tag_info;
        }

        public void setTag_list(List<RecommendLabelTag> tag_list) {
            this.tag_list = tag_list;
        }

        public void setTags(List<RecommendLabelTag> tags) {
            this.tags = tags;
        }

        public void setUi_expand(boolean ui_expand) {
            this.ui_expand = ui_expand;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setView(int view) {
            this.view = view;
        }

        public void setVip_level(int vip_level) {
            this.vip_level = vip_level;
        }
    }

    public static class ForumProfileCommentBean {
        public static final String TYPE_COMMENT = "comment";
        public static final String TYPE_REPLY = "reply";
        private String message;
        private String rnickname;
        private int ruid;
        private String type;

        public String getMessage() {
            return this.message;
        }

        public String getRnickname() {
            return this.rnickname;
        }

        public int getRuid() {
            return this.ruid;
        }

        public String getType() {
            return this.type;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setRnickname(String rnickname) {
            this.rnickname = rnickname;
        }

        public void setRuid(int ruid) {
            this.ruid = ruid;
        }

        public void setType(String type) {
            this.type = type;
        }
    }

    public static class ForumProfileMessageBean {
        public static final String TYPE_BEST = "best";
        public static final String TYPE_BESTANSWER = "bestanswer";
        public static final String TYPE_COMMENT = "comment";
        public static final String TYPE_PRAISE = "praise";
        public static final String TYPE_REPLY = "reply";
        private long add_time;
        private int comment_id;
        private String from_avatar_src;
        private String from_nickname;
        private boolean from_officialAccount;
        private String from_type;
        private int from_uid;
        private String message;
        private int pid;
        private ForumPostsBean posts;
        private int rid;
        private int svip_level;
        private int vip_level;

        public long getAdd_time() {
            return this.add_time;
        }

        public int getComment_id() {
            return this.comment_id;
        }

        public String getFrom_avatar_src() {
            return this.from_avatar_src;
        }

        public String getFrom_nickname() {
            return this.from_nickname;
        }

        public String getFrom_type() {
            return this.from_type;
        }

        public int getFrom_uid() {
            return this.from_uid;
        }

        public String getMessage() {
            return this.message;
        }

        public int getPid() {
            return this.pid;
        }

        public ForumPostsBean getPosts() {
            return this.posts;
        }

        public int getRid() {
            return this.rid;
        }

        public int getSvip_level() {
            return this.svip_level;
        }

        public int getVip_level() {
            return this.vip_level;
        }

        public boolean isFrom_officialAccount() {
            return this.from_officialAccount;
        }

        public void setAdd_time(long add_time) {
            this.add_time = add_time;
        }

        public void setComment_id(int comment_id) {
            this.comment_id = comment_id;
        }

        public void setComment_pid(int comment_pid) {
            this.comment_id = comment_pid;
        }

        public void setFrom_avatar_src(String from_avatar_src) {
            this.from_avatar_src = from_avatar_src;
        }

        public void setFrom_nickname(String from_nickname) {
            this.from_nickname = from_nickname;
        }

        public void setFrom_officialAccount(boolean from_officialAccount) {
            this.from_officialAccount = from_officialAccount;
        }

        public void setFrom_type(String from_type) {
            this.from_type = from_type;
        }

        public void setFrom_uid(int from_uid) {
            this.from_uid = from_uid;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setPid(int pid) {
            this.pid = pid;
        }

        public void setPosts(ForumPostsBean posts) {
            this.posts = posts;
        }

        public void setRid(int rid) {
            this.rid = rid;
        }

        public void setSvip_level(int svip_level) {
            this.svip_level = svip_level;
        }

        public void setVip_level(int vip_level) {
            this.vip_level = vip_level;
        }
    }

    public static class ForumProfilePostUserInfoBean {
        private String avatar_src;
        private boolean is_sign;
        private String nickname;
        private int papa_money;
        private int uid;
        private int unread_message;

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getPapa_money() {
            return this.papa_money;
        }

        public int getUid() {
            return this.uid;
        }

        public int getUnread_message() {
            return this.unread_message;
        }

        public boolean is_sign() {
            return this.is_sign;
        }

        public void setAvatar_src(String avatar_src) {
            this.avatar_src = avatar_src;
        }

        public void setIs_sign(boolean is_sign) {
            this.is_sign = is_sign;
        }

        public void setNickname(String nickname) {
            this.nickname = nickname;
        }

        public void setPapa_money(int papa_money) {
            this.papa_money = papa_money;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }

        public void setUnread_message(int unread_message) {
            this.unread_message = unread_message;
        }
    }

    public static class ForumSearchIndexBean {
        private String color;
        private String keyword;

        public String getColor() {
            return this.color;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public void setColor(String color) {
            this.color = color;
        }

        public void setKeyword(String keyword) {
            this.keyword = keyword;
        }
    }

    public static class ForumSearchQueryBean {
        private String comment;
        private String keyword;
        private String message;
        private String pid;
        private String praise;
        private boolean showDivider;
        private String subject;
        private String view;

        public String getComment() {
            return this.comment;
        }

        public String getKeyword() {
            return this.keyword;
        }

        public String getMessage() {
            return this.message;
        }

        public String getPid() {
            return this.pid;
        }

        public String getPraise() {
            return this.praise;
        }

        public String getSubject() {
            return this.subject;
        }

        public String getView() {
            return this.view;
        }

        public boolean isShowDivider() {
            return this.showDivider;
        }

        public void setComment(String comment) {
            this.comment = comment;
        }

        public void setKeyword(String keyword) {
            this.keyword = keyword;
        }

        public void setMessage(String message) {
            this.message = message;
        }

        public void setPid(String pid) {
            this.pid = pid;
        }

        public void setPraise(String praise) {
            this.praise = praise;
        }

        public void setShowDivider(boolean showDivider) {
            this.showDivider = showDivider;
        }

        public void setSubject(String subject) {
            this.subject = subject;
        }

        public void setView(String view) {
            this.view = view;
        }
    }

    public static class ForumTabBean {
        private String tab_name;
        private String tab_type;

        public enum Type {
            TAB_TYPE_NORMAL("normal_posts"),
            TAB_TYPE_HELP("help_posts"),
            TAB_TYPE_LAST("last_posts"),
            TAB_TYPE_BEST("best_posts"),
            TAB_TYPE_FORUM_MEMBER("forum_members"),
            TAB_TYPE_ACTIVITY("activity_posts"),
            TAB_TYPE_GIFT("gift_posts"),
            TAB_TYPE_STRATEGY("strategy_posts");

            String name;

            Type(String name) {
                this.name = name;
            }

            public String getName() {
                return this.name;
            }
        }

        public String getTab_name() {
            return this.tab_name;
        }

        public String getTab_type() {
            return this.tab_type;
        }

        public void setTab_name(String tab_name) {
            this.tab_name = tab_name;
        }

        public void setTab_type(String tab_type) {
            this.tab_type = tab_type;
        }
    }

    public static class ForumTopicBean {
        private String icon_src;
        private String name;
        private int tid;

        public String getIcon_src() {
            return this.icon_src;
        }

        public String getName() {
            return this.name;
        }

        public int getTid() {
            return this.tid;
        }

        public void setIcon_src(String icon_src) {
            this.icon_src = icon_src;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setTid(int tid) {
            this.tid = tid;
        }
    }

    public static class ForumWelcomeAdBean {
        public List<BannerBean> adBeans;
        private int position;
        private String sub_title;
        private String title;

        public List<BannerBean> getAdBeans() {
            return this.adBeans;
        }

        public int getPosition() {
            return this.position;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public void setAdBeans(List<BannerBean> adBeans) {
            if (this.adBeans == null) {
                this.adBeans = new ArrayList();
            }
            this.adBeans.clear();
            this.adBeans.addAll(adBeans);
        }

        public void setPosition(int position) {
            this.position = position;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class ForumWelcomeAdItemBean {
    }

    public static class ForumWelcomeBannerBean {
        public BannerBean bannerDataCellBean;

        public BannerBean getBannerDataCellBean() {
            return this.bannerDataCellBean;
        }

        public void setBannerDataCellBean(BannerBean bannerDataCellBean) {
            this.bannerDataCellBean = bannerDataCellBean;
        }
    }

    public static class GameInfo {
        private int bespeak_switch;
        private int comment_score_switch;
        private int down_count;
        private int down_status;

        @JsonIgnore
        private DownloadTask downloadTask;
        private int download_close;
        private String game_desc;
        private String game_down_url_remote;
        private String game_ico;
        private String game_ico_remote;
        private String game_id;
        private String game_info_tpl_type;
        private String game_name;
        private String game_size;
        private List<GameTagInfo> game_tag_info;
        PayTagInfo pay_tag_info;
        private String plugin_num = "";
        private String score;
        private TipNew sp_tag_info;
        private int sp_tpl_two_position;

        public static class GameTagInfo {
            private String color;

            /* JADX INFO: renamed from: id, reason: collision with root package name */
            private String f68050id;
            private String name;

            public String getColor() {
                return this.color;
            }

            public String getId() {
                return this.f68050id;
            }

            public String getName() {
                return this.name;
            }

            public void setColor(String color) {
                this.color = color;
            }

            public void setId(String id2) {
                this.f68050id = id2;
            }

            public void setName(String name) {
                this.name = name;
            }
        }

        public int getBespeak_switch() {
            return this.bespeak_switch;
        }

        public int getComment_score_switch() {
            return this.comment_score_switch;
        }

        public int getDown_count() {
            return this.down_count;
        }

        public int getDown_status() {
            int i10 = this.down_status;
            if (i10 == 2 && this.bespeak_switch == 1) {
                return 6;
            }
            return i10;
        }

        public DownloadTask getDownloadTask() {
            return this.downloadTask;
        }

        public int getDownload_close() {
            return this.download_close;
        }

        public String getGame_desc() {
            return this.game_desc;
        }

        public String getGame_down_url_remote() {
            return this.game_down_url_remote;
        }

        public String getGame_ico() {
            return this.game_ico;
        }

        public String getGame_ico_remote() {
            return this.game_ico_remote;
        }

        public String getGame_id() {
            return this.game_id;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getGame_name() {
            return this.game_name;
        }

        public String getGame_size() {
            return this.game_size;
        }

        public List<GameTagInfo> getGame_tag_info() {
            return this.game_tag_info;
        }

        public PayTagInfo getPay_tag_info() {
            return this.pay_tag_info;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public String getScore() {
            return this.score;
        }

        public TipNew getSp_tag_info() {
            return this.sp_tag_info;
        }

        public int getSp_tpl_two_position() {
            return this.sp_tpl_two_position;
        }

        public void setBespeak_switch(int bespeak_switch) {
            this.bespeak_switch = bespeak_switch;
        }

        public void setComment_score_switch(int comment_score_switch) {
            this.comment_score_switch = comment_score_switch;
        }

        public void setDown_count(int down_count) {
            this.down_count = down_count;
        }

        public void setDown_status(int down_status) {
            this.down_status = down_status;
        }

        public void setDownloadTask(DownloadTask downloadTask) {
            this.downloadTask = downloadTask;
        }

        public void setDownload_close(int download_close) {
            this.download_close = download_close;
        }

        public void setGame_desc(String game_desc) {
            this.game_desc = game_desc;
        }

        public void setGame_down_url_remote(String game_down_url_remote) {
            this.game_down_url_remote = game_down_url_remote;
        }

        public void setGame_ico(String game_ico) {
            this.game_ico = game_ico;
        }

        public void setGame_ico_remote(String game_ico_remote) {
            this.game_ico_remote = game_ico_remote;
        }

        public void setGame_id(String game_id) {
            this.game_id = game_id;
        }

        public void setGame_info_tpl_type(String game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setGame_name(String game_name) {
            this.game_name = game_name;
        }

        public void setGame_size(String game_size) {
            this.game_size = game_size;
        }

        public void setGame_tag_info(List<GameTagInfo> game_tag_info) {
            this.game_tag_info = game_tag_info;
        }

        public void setPay_tag_info(PayTagInfo pay_tag_info) {
            this.pay_tag_info = pay_tag_info;
        }

        public void setPlugin_num(String plugin_num) {
            this.plugin_num = plugin_num;
        }

        public void setScore(String score) {
            this.score = score;
        }

        public void setSp_tag_info(TipNew sp_tag_info) {
            this.sp_tag_info = sp_tag_info;
        }

        public void setSp_tpl_two_position(int sp_tpl_two_position) {
            this.sp_tpl_two_position = sp_tpl_two_position;
        }
    }

    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public long getAdd_time() {
        return this.add_time;
    }

    public String getDescription() {
        return this.description;
    }

    public int getFid() {
        return this.fid;
    }

    public int getFollow_count() {
        return this.follow_count;
    }

    public long getFollow_time() {
        return this.follow_time;
    }

    public String getGame_collections() {
        return this.game_collections;
    }

    public String getIcon_src() {
        return this.icon_src;
    }

    public int getMember_is_write() {
        return this.member_is_write;
    }

    public String getName() {
        return this.name;
    }

    public int getPosts() {
        return this.posts;
    }

    public int getSvip_is_write() {
        return this.svip_is_write;
    }

    public int getToday_posts() {
        return this.today_posts;
    }

    public int getUsers() {
        return this.users;
    }

    public int getVip_is_write() {
        return this.vip_is_write;
    }

    public boolean is_follow() {
        return this.is_follow;
    }

    public void setAdd_time(long add_time) {
        this.add_time = add_time;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public void setFollow_count(int follow_count) {
        this.follow_count = follow_count;
    }

    public void setFollow_time(long follow_time) {
        this.follow_time = follow_time;
    }

    public void setGame_collections(String game_collections) {
        this.game_collections = game_collections;
    }

    public void setIcon_src(String icon_src) {
        this.icon_src = icon_src;
    }

    public void setIs_follow(boolean is_follow) {
        this.is_follow = is_follow;
    }

    public void setMember_is_write(int member_is_write) {
        this.member_is_write = member_is_write;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPosts(int posts) {
        this.posts = posts;
    }

    public void setSvip_is_write(int svip_is_write) {
        this.svip_is_write = svip_is_write;
    }

    public void setToday_posts(int today_posts) {
        this.today_posts = today_posts;
    }

    public void setUsers(int users) {
        this.users = users;
    }

    public void setVip_is_write(int vip_is_write) {
        this.vip_is_write = vip_is_write;
    }
}
