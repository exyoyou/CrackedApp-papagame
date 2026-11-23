package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PaMgrBean {

    public static class Request {

        public static class CancelAdmin {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class EnterGroup {
            private int flag;
            private String groupId;
            private String headPic;
            private String liveUserId;
            private String nickname;
            private String token;
            private String userId;

            public int getFlag() {
                return this.flag;
            }

            public String getGroupId() {
                return this.groupId;
            }

            public String getHeadPic() {
                return this.headPic;
            }

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getNickname() {
                return this.nickname;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setFlag(int flag) {
                this.flag = flag;
            }

            public void setGroupId(String groupId) {
                this.groupId = groupId;
            }

            public void setHeadPic(String headPic) {
                this.headPic = headPic;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setNickname(String nickname) {
                this.nickname = nickname;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class FollowAnchor {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class GetAnchorInfo {
            private String liveUserId;
            private String token;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }
        }

        public static class GetFreeDiamond {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class GetGiftList {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class InternalSendRequest {
            String fileId;
            int flag;
            int optype;
            int type;
            String userId;

            public String getFileId() {
                return this.fileId;
            }

            public int getFlag() {
                return this.flag;
            }

            public int getOptype() {
                return this.optype;
            }

            public int getType() {
                return this.type;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setFileId(String fileId) {
                this.fileId = fileId;
            }

            public void setFlag(int flag) {
                this.flag = flag;
            }

            public void setOptype(int optype) {
                this.optype = optype;
            }

            public void setType(int type) {
                this.type = type;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class Kick {
            private String liveUserId;
            String token;
            String userId;
            String viewUserId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getViewUserId() {
                return this.viewUserId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }

            public void setViewUserId(String viewUserId) {
                this.viewUserId = viewUserId;
            }
        }

        public static class MgrBanLive {
            private String liveUserId;
            private String token;
            private String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class MgrStopLive {
            private String liveUserId;
            private String token;
            private String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class MgrWarnLive {
            private String liveUserId;
            private String message;
            private String token;
            private String userId;
            private String version;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getMessage() {
                return this.message;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getVersion() {
                return this.version;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setMessage(String message) {
                this.message = message;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }

            public void setVersion(String version) {
                this.version = version;
            }
        }

        public static class QuitGroup {
            private int flag;
            private String groupId;
            private String liveUserId;
            private String token;
            private String userId;

            public int getFlag() {
                return this.flag;
            }

            public String getGroupId() {
                return this.groupId;
            }

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setFlag(int flag) {
                this.flag = flag;
            }

            public void setGroupId(String groupId) {
                this.groupId = groupId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class QuitRoom {
            String token;
            String userId;

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class Report {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class SendGift {
            String giftCount;
            String giftId;
            private int isCombo;
            private String liveUserId;
            String token;
            String userId;

            public String getGiftCount() {
                return this.giftCount;
            }

            public String getGiftId() {
                return this.giftId;
            }

            public int getIsCombo() {
                return this.isCombo;
            }

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setGiftCount(String giftCount) {
                this.giftCount = giftCount;
            }

            public void setGiftId(String giftId) {
                this.giftId = giftId;
            }

            public void setIsCombo(int isCombo) {
                this.isCombo = isCombo;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class SetAdmin {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class Silence {
            private String liveUserId;
            String token;
            String userId;
            String viewUserId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public String getViewUserId() {
                return this.viewUserId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }

            public void setViewUserId(String viewUserId) {
                this.viewUserId = viewUserId;
            }
        }

        public static class UnFollowAnchor {
            private String liveUserId;
            String token;
            String userId;

            public String getLiveUserId() {
                return this.liveUserId;
            }

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setLiveUserId(String liveUserId) {
                this.liveUserId = liveUserId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }

        public static class UplocadCover {
            String token;
            String userId;

            public String getToken() {
                return this.token;
            }

            public String getUserId() {
                return this.userId;
            }

            public void setToken(String token) {
                this.token = token;
            }

            public void setUserId(String userId) {
                this.userId = userId;
            }
        }
    }

    public static class Response<T> {
        private T data;
        private int error;

        public static class CancelAdmin {
            private boolean res;

            public boolean isRes() {
                return this.res;
            }

            public void setRes(boolean res) {
                this.res = res;
            }
        }

        public static class EnterGroup {
            private AnchorBean anchor;
            private int error;
            private int giftSeconds;
            private boolean isAdmin;
            private boolean isFollow;
            private String message;
            private String status;
            private String systemPact;
            private List<ViewersBean> viewers;

            public static class AnchorBean {
                private String avatar;
                private int charm;
                private int fans;
                private String intro;
                private String nickname;
                private int uid;

                public String getAvatar() {
                    return this.avatar;
                }

                public int getCharm() {
                    return this.charm;
                }

                public int getFans() {
                    return this.fans;
                }

                public String getIntro() {
                    return this.intro;
                }

                public String getNickname() {
                    return this.nickname;
                }

                public int getUid() {
                    return this.uid;
                }

                public void setAvatar(String avatar) {
                    this.avatar = avatar;
                }

                public void setCharm(int charm) {
                    this.charm = charm;
                }

                public void setFans(int fans) {
                    this.fans = fans;
                }

                public void setIntro(String intro) {
                    this.intro = intro;
                }

                public void setNickname(String nickname) {
                    this.nickname = nickname;
                }

                public void setUid(int uid) {
                    this.uid = uid;
                }
            }

            public static class ViewersBean {
                private String avatar;
                private String nickname;
                private int svipLevel;
                private int uid;

                public String getAvatar() {
                    return this.avatar;
                }

                public String getNickname() {
                    return this.nickname;
                }

                public int getSvipLevel() {
                    return this.svipLevel;
                }

                public int getUid() {
                    return this.uid;
                }

                public void setAvatar(String avatar) {
                    this.avatar = avatar;
                }

                public void setNickname(String nickname) {
                    this.nickname = nickname;
                }

                public void setSvipLevel(int svipLevel) {
                    this.svipLevel = svipLevel;
                }

                public void setUid(int uid) {
                    this.uid = uid;
                }
            }

            public Boolean getAdmin() {
                return Boolean.valueOf(this.isAdmin);
            }

            public AnchorBean getAnchor() {
                return this.anchor;
            }

            public int getError() {
                return this.error;
            }

            public boolean getFollow() {
                return this.isFollow;
            }

            public int getGiftSeconds() {
                return this.giftSeconds;
            }

            public String getMessage() {
                return this.message;
            }

            public String getStatus() {
                return this.status;
            }

            public String getSystemPact() {
                return this.systemPact;
            }

            public List<ViewersBean> getViewers() {
                return this.viewers;
            }

            public boolean isAdmin() {
                return this.isAdmin;
            }

            public boolean isFollow() {
                return this.isFollow;
            }

            public void setAdmin(boolean admin) {
                this.isAdmin = admin;
            }

            public void setAnchor(AnchorBean anchor) {
                this.anchor = anchor;
            }

            public void setError(int error) {
                this.error = error;
            }

            public void setFollow(boolean follow) {
                this.isFollow = follow;
            }

            public void setGiftSeconds(int giftSeconds) {
                this.giftSeconds = giftSeconds;
            }

            public void setMessage(String message) {
                this.message = message;
            }

            public void setStatus(String status) {
                this.status = status;
            }

            public void setSystemPact(String systemPact) {
                this.systemPact = systemPact;
            }

            public void setViewers(List<ViewersBean> viewers) {
                this.viewers = viewers;
            }

            public void setAdmin(Boolean admin) {
                this.isAdmin = admin.booleanValue();
            }

            public void setFollow(Boolean follow) {
                this.isFollow = follow.booleanValue();
            }
        }

        public static class FollowAnchor {
        }

        public static class GetAnchorInfo {
            private String avatar;
            private int charm;
            private int fans;
            private String intro;
            private boolean isFollowed;
            private String nickname;
            private int svipLevel;
            private List<WeekViewerBean> weekViewer;

            public String getAvatar() {
                return this.avatar;
            }

            public int getCharm() {
                return this.charm;
            }

            public int getFans() {
                return this.fans;
            }

            public String getIntro() {
                return this.intro;
            }

            public String getNickname() {
                return this.nickname;
            }

            public int getSvipLevel() {
                return this.svipLevel;
            }

            public List<WeekViewerBean> getWeekViewer() {
                return this.weekViewer;
            }

            public boolean isFollowed() {
                return this.isFollowed;
            }

            public void setAvatar(String avatar) {
                this.avatar = avatar;
            }

            public void setCharm(int charm) {
                this.charm = charm;
            }

            public void setFans(int fans) {
                this.fans = fans;
            }

            public void setFollowed(boolean followed) {
                this.isFollowed = followed;
            }

            public void setIntro(String intro) {
                this.intro = intro;
            }

            public void setNickname(String nickname) {
                this.nickname = nickname;
            }

            public void setSvipLevel(int svipLevel) {
                this.svipLevel = svipLevel;
            }

            public void setWeekViewer(List<WeekViewerBean> weekViewer) {
                this.weekViewer = weekViewer;
            }
        }

        public static class GetFreeDiamond {
            private int diamond;
            private int nextSeconds;

            public int getDiamond() {
                return this.diamond;
            }

            public int getNextSeconds() {
                return this.nextSeconds;
            }

            public void setDiamond(int diamond) {
                this.diamond = diamond;
            }

            public void setNextSeconds(int nextSeconds) {
                this.nextSeconds = nextSeconds;
            }
        }

        public static class GetGiftList {
            private List<GiftsBean> gifts;

            public static class GiftsBean {
                private String animate;

                /* JADX INFO: renamed from: id, reason: collision with root package name */
                private int f68085id;
                private boolean isCombo;
                private String name;
                private String pic;
                private int price;

                public String getAnimate() {
                    return this.animate;
                }

                public int getId() {
                    return this.f68085id;
                }

                public String getName() {
                    return this.name;
                }

                public String getPic() {
                    return this.pic;
                }

                public int getPrice() {
                    return this.price;
                }

                public boolean isIsCombo() {
                    return this.isCombo;
                }

                public void setAnimate(String animate) {
                    this.animate = animate;
                }

                public void setId(int id2) {
                    this.f68085id = id2;
                }

                public void setIsCombo(boolean isCombo) {
                    this.isCombo = isCombo;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public void setPic(String pic) {
                    this.pic = pic;
                }

                public void setPrice(int price) {
                    this.price = price;
                }
            }

            public List<GiftsBean> getGifts() {
                return this.gifts;
            }

            public void setGifts(List<GiftsBean> gifts) {
                this.gifts = gifts;
            }
        }

        public static class InternalSendRequest {
        }

        public static class Kick {
        }

        public static class MgrBanLive {
            private int error;
            private String message;

            public int getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public void setError(int error) {
                this.error = error;
            }

            public void setMessage(String message) {
                this.message = message;
            }
        }

        public static class MgrStopLive {
            private int error;
            private String message;

            public int getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public void setError(int error) {
                this.error = error;
            }

            public void setMessage(String message) {
                this.message = message;
            }
        }

        public static class MgrWarnLive {
            private int error;
            private String message;

            public int getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public void setError(int error) {
                this.error = error;
            }

            public void setMessage(String message) {
                this.message = message;
            }
        }

        public static class QuitGroup {
            private int charmCount;
            private int currentCharm;
            private String error;
            private String message;
            private int viewerCount;

            public int getCharmCount() {
                return this.charmCount;
            }

            public int getCurrentCharm() {
                return this.currentCharm;
            }

            public String getError() {
                return this.error;
            }

            public String getMessage() {
                return this.message;
            }

            public int getViewerCount() {
                return this.viewerCount;
            }

            public void setCharmCount(int charmCount) {
                this.charmCount = charmCount;
            }

            public void setCurrentCharm(int currentCharm) {
                this.currentCharm = currentCharm;
            }

            public void setError(String error) {
                this.error = error;
            }

            public void setMessage(String message) {
                this.message = message;
            }

            public void setViewerCount(int viewerCount) {
                this.viewerCount = viewerCount;
            }
        }

        public static class QuitRoom {
            private int charmCount;
            private int currentCharm;
            private String error;
            private long liveTime;
            private String message;
            private int viewerCount;

            public int getCharmCount() {
                return this.charmCount;
            }

            public int getCurrentCharm() {
                return this.currentCharm;
            }

            public String getError() {
                return this.error;
            }

            public long getLiveTime() {
                return this.liveTime;
            }

            public String getMessage() {
                return this.message;
            }

            public int getViewerCount() {
                return this.viewerCount;
            }

            public void setCharmCount(int charmCount) {
                this.charmCount = charmCount;
            }

            public void setCurrentCharm(int currentCharm) {
                this.currentCharm = currentCharm;
            }

            public void setError(String error) {
                this.error = error;
            }

            public void setLiveTime(long liveTime) {
                this.liveTime = liveTime;
            }

            public void setMessage(String message) {
                this.message = message;
            }

            public void setViewerCount(int viewerCount) {
                this.viewerCount = viewerCount;
            }
        }

        public static class Report {
        }

        public static class SendGift {
            private int diamond;
            private int status;

            public int getDiamond() {
                return this.diamond;
            }

            public int getStatus() {
                return this.status;
            }

            public void setDiamond(int diamond) {
                this.diamond = diamond;
            }

            public void setStatus(int status) {
                this.status = status;
            }
        }

        public static class SetAdmin {
            private String errorMessage;
            private boolean res;

            public String getErrorMessage() {
                return this.errorMessage;
            }

            public boolean isRes() {
                return this.res;
            }

            public void setErrorMessage(String errorMessage) {
                this.errorMessage = errorMessage;
            }

            public void setRes(boolean res) {
                this.res = res;
            }
        }

        public static class Silence {
        }

        public static class UnFollowAnchor {
        }

        public static class UplocadCover {
            private String appId;
            private String bucket;
            private String file;
            private String signature;
            private String uploadDir;

            public String getAppId() {
                return this.appId;
            }

            public String getBucket() {
                return this.bucket;
            }

            public String getFile() {
                return this.file;
            }

            public String getSignature() {
                return this.signature;
            }

            public String getUploadDir() {
                return this.uploadDir;
            }

            public void setAppId(String appId) {
                this.appId = appId;
            }

            public void setBucket(String bucket) {
                this.bucket = bucket;
            }

            public void setFile(String file) {
                this.file = file;
            }

            public void setSignature(String signature) {
                this.signature = signature;
            }

            public void setUploadDir(String uploadDir) {
                this.uploadDir = uploadDir;
            }
        }

        public static class WeekViewerBean implements Serializable {
            private String avatar;
            private String nickname;
            private int uid;

            public String getAvatar() {
                return this.avatar;
            }

            public String getNickname() {
                return this.nickname;
            }

            public int getUid() {
                return this.uid;
            }

            public void setAvatar(String avatar) {
                this.avatar = avatar;
            }

            public void setNickname(String nickname) {
                this.nickname = nickname;
            }

            public void setUid(int uid) {
                this.uid = uid;
            }
        }

        public Response() {
        }

        public T getData() {
            return this.data;
        }

        public int getError() {
            return this.error;
        }

        public void setData(T data) {
            this.data = data;
        }

        public void setError(int error) {
            this.error = error;
        }

        public Response(int error, T data) {
            this.error = error;
            this.data = data;
        }
    }
}
