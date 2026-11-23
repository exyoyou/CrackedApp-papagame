package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorAreaDataBean implements Serializable {
    private List<CollectionRecommendBean> collection_recommend;
    private List<GameTypeBean> game_type;
    private List<SimulatorFbaEncyclopediasBean> simulator_fba_encyclopedias;
    private List<SimulatorFbaEncyclopediasBean> simulator_fc_encyclopedias;
    private List<SimulatorFbaEncyclopediasBean> simulator_gba_encyclopedias;
    private List<SimulatorFbaEncyclopediasBean> simulator_psp_encyclopedias;
    private List<SubjectListBean> subject_list;
    private List<CollectionBeanSub> the_new_release;
    private List<CollectionBeanSub> top_5;

    public static class CollectionRecommendBean implements Serializable {
        private CollectionInfoBean collection_info;
        private List<CollectionBeanSub> game_list;

        public static class CollectionInfoBean implements Serializable {
            private String collection_id;
            private String title;

            public String getCollection_id() {
                return this.collection_id;
            }

            public String getTitle() {
                return this.title;
            }

            public void setCollection_id(String collection_id) {
                this.collection_id = collection_id;
            }

            public void setTitle(String title) {
                this.title = title;
            }
        }

        public CollectionInfoBean getCollection_info() {
            return this.collection_info;
        }

        public List<CollectionBeanSub> getGame_list() {
            return this.game_list;
        }

        public void setCollection_info(CollectionInfoBean collection_info) {
            this.collection_info = collection_info;
        }

        public void setGame_list(List<CollectionBeanSub> game_list) {
            this.game_list = game_list;
        }
    }

    public static class GameTypeBean implements Serializable {
        private String describe;
        private String game_count;
        private String ico_remote;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68112id;
        private String show_index;
        private String title;

        public String getDescribe() {
            return this.describe;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public String getIco_remote() {
            return this.ico_remote;
        }

        public String getId() {
            return this.f68112id;
        }

        public String getShow_index() {
            return this.show_index;
        }

        public String getTitle() {
            return this.title;
        }

        public void setDescribe(String describe) {
            this.describe = describe;
        }

        public void setGame_count(String game_count) {
            this.game_count = game_count;
        }

        public void setIco_remote(String ico_remote) {
            this.ico_remote = ico_remote;
        }

        public void setId(String id2) {
            this.f68112id = id2;
        }

        public void setShow_index(String show_index) {
            this.show_index = show_index;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public static class SimulatorFbaEncyclopediasBean implements Serializable {
        private SubjectListBean.MainBean main;
        private List<SubjectListBean.SubBean> sub;

        public SubjectListBean.MainBean getMain() {
            return this.main;
        }

        public List<SubjectListBean.SubBean> getSub() {
            return this.sub;
        }

        public void setMain(SubjectListBean.MainBean main) {
            this.main = main;
        }

        public void setSub(List<SubjectListBean.SubBean> sub) {
            this.sub = sub;
        }
    }

    public static class SubjectListBean implements Serializable {
        private MainBean main;
        private List<SubBean> sub;

        public static class MainBean implements Serializable {
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

        public static class SubBean implements Serializable {
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

    public List<CollectionRecommendBean> getCollection_recommend() {
        return this.collection_recommend;
    }

    public List<GameTypeBean> getGame_type() {
        return this.game_type;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_fba_encyclopedias() {
        return this.simulator_fba_encyclopedias;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_fc_encyclopedias() {
        return this.simulator_fc_encyclopedias;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_gba_encyclopedias() {
        return this.simulator_gba_encyclopedias;
    }

    public List<SimulatorFbaEncyclopediasBean> getSimulator_psp_encyclopedias() {
        return this.simulator_psp_encyclopedias;
    }

    public List<SubjectListBean> getSubject_list() {
        return this.subject_list;
    }

    public List<CollectionBeanSub> getThe_new_release() {
        return this.the_new_release;
    }

    public List<CollectionBeanSub> getTop_5() {
        return this.top_5;
    }

    public void setCollection_recommend(List<CollectionRecommendBean> collection_recommend) {
        this.collection_recommend = collection_recommend;
    }

    public void setGame_type(List<GameTypeBean> game_type) {
        this.game_type = game_type;
    }

    public void setSimulator_fba_encyclopedias(List<SimulatorFbaEncyclopediasBean> simulator_fba_encyclopedias) {
        this.simulator_fba_encyclopedias = simulator_fba_encyclopedias;
    }

    public void setSimulator_fc_encyclopedias(List<SimulatorFbaEncyclopediasBean> simulator_fc_encyclopedias) {
        this.simulator_fc_encyclopedias = simulator_fc_encyclopedias;
    }

    public void setSimulator_gba_encyclopedias(List<SimulatorFbaEncyclopediasBean> simulator_gba_encyclopedias) {
        this.simulator_gba_encyclopedias = simulator_gba_encyclopedias;
    }

    public void setSimulator_psp_encyclopedias(List<SimulatorFbaEncyclopediasBean> simulator_psp_encyclopedias) {
        this.simulator_psp_encyclopedias = simulator_psp_encyclopedias;
    }

    public void setSubject_list(List<SubjectListBean> subject_list) {
        this.subject_list = subject_list;
    }

    public void setThe_new_release(List<CollectionBeanSub> the_new_release) {
        this.the_new_release = the_new_release;
    }

    public void setTop_5(List<CollectionBeanSub> top_5) {
        this.top_5 = top_5;
    }
}
