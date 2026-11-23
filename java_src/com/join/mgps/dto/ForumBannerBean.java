package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumBannerBean<T> {
    private String code;
    private String flag;
    private T messages;
    private String requesttype;
    private String version;

    public static class ForumAreaBannerMessagesData {

        /* JADX INFO: renamed from: ad, reason: collision with root package name */
        private ForumBannerDataBannerBean f68047ad;

        public ForumBannerDataBannerBean getAd() {
            return this.f68047ad;
        }

        public void setAd(ForumBannerDataBannerBean ad2) {
            this.f68047ad = ad2;
        }
    }

    public static class ForumBannerDataBannerBean {
        private List<BannerBean> banner;
        private String sub_title;
        private String title;

        public List<BannerBean> getBanner() {
            return this.banner;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public void setBanner(List<BannerBean> banner) {
            this.banner = banner;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class ForumBannerDataBannerCellBean {
        private int ad_switch;
        private String crc_link_type_val;
        private String game_info_tpl_type;
        private String jump_type;
        private String link_type;
        private String link_type_val;
        private String pic_remote;
        private String plugin_num = "";
        private String sync_memory;
        private String title;
        private String tpl_type;
        private String type;

        public int getAd_switch() {
            return this.ad_switch;
        }

        public String getCrc_link_type_val() {
            return this.crc_link_type_val;
        }

        public String getGame_info_tpl_type() {
            return this.game_info_tpl_type;
        }

        public String getJump_type() {
            return this.jump_type;
        }

        public String getLink_type() {
            return this.link_type;
        }

        public String getLink_type_val() {
            return this.link_type_val;
        }

        public String getPic_remote() {
            return this.pic_remote;
        }

        public String getPlugin_num() {
            return this.plugin_num;
        }

        public String getSync_memory() {
            return this.sync_memory;
        }

        public String getTitle() {
            return this.title;
        }

        public String getTpl_type() {
            return this.tpl_type;
        }

        public String getType() {
            return this.type;
        }

        public void setAd_switch(int ad_switch) {
            this.ad_switch = ad_switch;
        }

        public void setCrc_link_type_val(String crc_link_type_val) {
            this.crc_link_type_val = crc_link_type_val;
        }

        public void setGame_info_tpl_type(String game_info_tpl_type) {
            this.game_info_tpl_type = game_info_tpl_type;
        }

        public void setJump_type(String jump_type) {
            this.jump_type = jump_type;
        }

        public void setLink_type(String link_type) {
            this.link_type = link_type;
        }

        public void setLink_type_val(String link_type_val) {
            this.link_type_val = link_type_val;
        }

        public void setPic_remote(String pic_remote) {
            this.pic_remote = pic_remote;
        }

        public void setPlugin_num(String plugin_num) {
            this.plugin_num = plugin_num;
        }

        public void setSync_memory(String sync_memory) {
            this.sync_memory = sync_memory;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setTpl_type(String tpl_type) {
            this.tpl_type = tpl_type;
        }

        public void setType(String type) {
            this.type = type;
        }
    }

    public static class ForumBannerMessages {
        private ForumBannerMessagesData data;
        private String modeltype;

        public ForumBannerMessages() {
        }

        public ForumBannerMessagesData getData() {
            return this.data;
        }

        public String getModeltype() {
            return this.modeltype;
        }

        public void setData(ForumBannerMessagesData data) {
            this.data = data;
        }

        public void setModeltype(String modeltype) {
            this.modeltype = modeltype;
        }

        public ForumBannerMessages(String modeltype, ForumBannerMessagesData data) {
            this.modeltype = modeltype;
            this.data = data;
        }
    }

    public static class ForumBannerMessagesData {

        /* JADX INFO: renamed from: ad, reason: collision with root package name */
        private List<ForumBannerDataBannerBean> f68048ad;
        private List<ForumBannerDataBannerBean> live;
        private List<ForumBannerDataBannerBean> mid;
        private List<ForumBannerDataBannerBean> top;

        public List<ForumBannerDataBannerBean> getAd() {
            return this.f68048ad;
        }

        public List<ForumBannerDataBannerBean> getLive() {
            return this.live;
        }

        public List<ForumBannerDataBannerBean> getMid() {
            return this.mid;
        }

        public List<ForumBannerDataBannerBean> getTop() {
            return this.top;
        }

        public void setAd(List<ForumBannerDataBannerBean> ad2) {
            this.f68048ad = ad2;
        }

        public void setLive(List<ForumBannerDataBannerBean> live) {
            this.live = live;
        }

        public void setMid(List<ForumBannerDataBannerBean> mid) {
            this.mid = mid;
        }

        public void setTop(List<ForumBannerDataBannerBean> top) {
            this.top = top;
        }
    }

    public static class ForumBannerRequestBean {
        private String deviceid;
        private RequestMessages messages;
        private String requesttype;
        private String sign;
        private String version;

        public static class RequestMessages {
            private RequestMessagesArgs args;
            private String modeltype;

            public RequestMessages() {
            }

            public RequestMessagesArgs getArgs() {
                return this.args;
            }

            public String getModeltype() {
                return this.modeltype;
            }

            public void setArgs(RequestMessagesArgs args) {
                this.args = args;
            }

            public void setModeltype(String modeltype) {
                this.modeltype = modeltype;
            }

            public RequestMessages(String modeltype, RequestMessagesArgs args) {
                this.modeltype = modeltype;
                this.args = args;
            }
        }

        public static class RequestMessagesArgs {
            private int area_id;
            private int pn;

            public RequestMessagesArgs() {
            }

            public int getArea_id() {
                return this.area_id;
            }

            public int getPn() {
                return this.pn;
            }

            public void setArea_id(int area_id) {
                this.area_id = area_id;
            }

            public void setPn(int pn) {
                this.pn = pn;
            }

            public RequestMessagesArgs(Object... args) {
                this.pn = ((Integer) args[0]).intValue();
                this.area_id = ((Integer) args[0]).intValue();
            }
        }

        public ForumBannerRequestBean() {
        }

        public String getDeviceid() {
            return this.deviceid;
        }

        public RequestMessages getMessages() {
            return this.messages;
        }

        public String getRequesttype() {
            return this.requesttype;
        }

        public String getSign() {
            return this.sign;
        }

        public String getVersion() {
            return this.version;
        }

        public void setDeviceid(String deviceid) {
            this.deviceid = deviceid;
        }

        public void setMessages(RequestMessages messages) {
            this.messages = messages;
        }

        public void setRequesttype(String requesttype) {
            this.requesttype = requesttype;
        }

        public void setSign(String sign) {
            this.sign = sign;
        }

        public void setVersion(String version) {
            this.version = version;
        }

        public ForumBannerRequestBean(String version, String deviceid, String requesttype, String sign, RequestMessages messages) {
            this.version = version;
            this.deviceid = deviceid;
            this.requesttype = requesttype;
            this.sign = sign;
            this.messages = messages;
        }
    }

    public static class ForumBannerResponseBean {
        private String code;
        private String flag;
        private ForumBannerMessages messages;
        private String requesttype;
        private String version;

        public ForumBannerResponseBean() {
        }

        public String getCode() {
            return this.code;
        }

        public String getFlag() {
            return this.flag;
        }

        public ForumBannerMessages getMessages() {
            return this.messages;
        }

        public String getRequesttype() {
            return this.requesttype;
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

        public void setMessages(ForumBannerMessages messages) {
            this.messages = messages;
        }

        public void setRequesttype(String requesttype) {
            this.requesttype = requesttype;
        }

        public void setVersion(String version) {
            this.version = version;
        }

        public ForumBannerResponseBean(String flag, String code, String version, String requesttype, ForumBannerMessages messages) {
            this.flag = flag;
            this.code = code;
            this.version = version;
            this.requesttype = requesttype;
            this.messages = messages;
        }
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public T getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
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

    public void setMessages(T messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}
