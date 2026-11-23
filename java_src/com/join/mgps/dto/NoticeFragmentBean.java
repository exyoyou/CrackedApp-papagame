package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class NoticeFragmentBean {
    private DataBean data;
    private int error;

    public static class DataBean {
        private List<NotificationListBean> notification_list;

        public static class NotificationListBean {
            private String add_time;
            private String cover_pic;
            private List<JumpInfoBean> jump_info;
            private String title;

            public static class JumpInfoBean {
                private MainBean main;
                private List<SubBean> sub;

                public static class MainBean {
                    private int ad_switch;
                    private String color;
                    private String ico_remote;
                    private String label;
                    private String margin;
                    private String model_type;
                    private String pic_remote;
                    private int quit_switch;
                    private String sub_title;
                    private String title;
                    private String title_type;
                    private String vedio_url;

                    public int getAd_switch() {
                        return this.ad_switch;
                    }

                    public String getColor() {
                        return this.color;
                    }

                    public String getIco_remote() {
                        return this.ico_remote;
                    }

                    public String getLabel() {
                        return this.label;
                    }

                    public String getMargin() {
                        return this.margin;
                    }

                    public String getModel_type() {
                        return this.model_type;
                    }

                    public String getPic_remote() {
                        return this.pic_remote;
                    }

                    public int getQuit_switch() {
                        return this.quit_switch;
                    }

                    public String getSub_title() {
                        return this.sub_title;
                    }

                    public String getTitle() {
                        return this.title;
                    }

                    public String getTitle_type() {
                        return this.title_type;
                    }

                    public String getVedio_url() {
                        return this.vedio_url;
                    }

                    public void setAd_switch(int ad_switch) {
                        this.ad_switch = ad_switch;
                    }

                    public void setColor(String color) {
                        this.color = color;
                    }

                    public void setIco_remote(String ico_remote) {
                        this.ico_remote = ico_remote;
                    }

                    public void setLabel(String label) {
                        this.label = label;
                    }

                    public void setMargin(String margin) {
                        this.margin = margin;
                    }

                    public void setModel_type(String model_type) {
                        this.model_type = model_type;
                    }

                    public void setPic_remote(String pic_remote) {
                        this.pic_remote = pic_remote;
                    }

                    public void setQuit_switch(int quit_switch) {
                        this.quit_switch = quit_switch;
                    }

                    public void setSub_title(String sub_title) {
                        this.sub_title = sub_title;
                    }

                    public void setTitle(String title) {
                        this.title = title;
                    }

                    public void setTitle_type(String title_type) {
                        this.title_type = title_type;
                    }

                    public void setVedio_url(String vedio_url) {
                        this.vedio_url = vedio_url;
                    }
                }

                public static class SubBean {
                    private String crc_link_type_val;
                    private String is_more;
                    private String jump_type;
                    private String link_type;
                    private String link_type_val;
                    private String tpl_type;

                    public String getCrc_link_type_val() {
                        return this.crc_link_type_val;
                    }

                    public String getIs_more() {
                        return this.is_more;
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

                    public String getTpl_type() {
                        return this.tpl_type;
                    }

                    public void setCrc_link_type_val(String crc_link_type_val) {
                        this.crc_link_type_val = crc_link_type_val;
                    }

                    public void setIs_more(String is_more) {
                        this.is_more = is_more;
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

                    public void setTpl_type(String tpl_type) {
                        this.tpl_type = tpl_type;
                    }
                }

                public MainBean getMain() {
                    return this.main;
                }

                public List<SubBean> getSub() {
                    return this.sub;
                }

                public void setMain(MainBean main) {
                    this.main = main;
                }

                public void setSub(List<SubBean> sub) {
                    this.sub = sub;
                }
            }

            public String getAdd_time() {
                return this.add_time;
            }

            public String getCover_pic() {
                return this.cover_pic;
            }

            public List<JumpInfoBean> getJump_info() {
                return this.jump_info;
            }

            public String getTitle() {
                return this.title;
            }

            public void setAdd_time(String add_time) {
                this.add_time = add_time;
            }

            public void setCover_pic(String cover_pic) {
                this.cover_pic = cover_pic;
            }

            public void setJump_info(List<JumpInfoBean> jump_info) {
                this.jump_info = jump_info;
            }

            public void setTitle(String title) {
                this.title = title;
            }
        }

        public List<NotificationListBean> getNotification_list() {
            return this.notification_list;
        }

        public void setNotification_list(List<NotificationListBean> notification_list) {
            this.notification_list = notification_list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }
}
