package com.join.mgps.dto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionBeanSub extends DownloadPointBase implements Serializable {
    private long actual_size;
    private String allow_start_up_ad;
    private String appSize;
    private String battle_upload_pic;
    private int bespeak_switch;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String collection_game_describe;
    private int cpu_type;
    private String crc_sign_id;
    private String customer_info;
    private int down_count;
    private int down_status;
    private String down_url_remote;
    private int downloadType;
    private int download_close;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private ExtInfoBean ext_info;
    private String fight_funv2;
    private String fight_screenshot_pic;
    private int fight_type;
    private String first_hot_comment;
    private long forum_id;
    private int forum_switch;
    private int game_book;
    private String game_dimension;
    private String game_id;
    private String game_info_top_pic;
    private String game_info_top_video_url;
    private String game_info_tpl_type;
    private String game_name;
    private String game_open_time;
    private String gif_ico_remote;
    private int gift_package_switch;
    private String ico_remote;
    private int index;
    private String info;
    private boolean isAd;
    private boolean isSelected;
    private int is_fight;
    private int is_network;
    private int is_world;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int min_an_compatible_ver;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String packageName;
    private String package_name;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private List<String> permission_list;
    private List<DetialShowImageBean> pic_info;
    private int pic_position;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private int plugin_screenshot;
    private List<RecGameTagBean> rec_game_tags;
    private String recommend_game_big_gif;
    private String recommend_game_big_pic;
    private long resourceSize;
    private String resourceUrl;
    private String rom_lowest_ver;
    private String score;
    private String screenshot_pic;
    private SingleGameModInfoBean single_game_mod_info;
    private String size;
    private String source_down_url;
    private String source_lowest_ver;
    private String source_ver;
    private String source_ver_name;
    private TipNew sp_tag_info;
    private int sp_tpl_two_position;
    private String sync_memory;
    private List<TipBean> tag_info;
    private boolean the_new;
    private boolean the_update;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String vedio_cover_pic;
    private String vedio_url;
    private String ver;
    private String ver_name;
    private int viewType;
    private WebDiskInfo web_disk_info;
    private int world_area;
    private int world_shop;
    private String plugin_num = "";
    private int downType = 0;
    private int vm_device_switch = 1;
    private int cost_type = 0;

    public static class GameTagInfo {
        private String color;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68030id;
        private String name;
        private String type;

        public String getColor() {
            return this.color;
        }

        public String getId() {
            return this.f68030id;
        }

        public String getName() {
            return this.name;
        }

        public String getType() {
            return this.type;
        }

        public void setColor(String color) {
            this.color = color;
        }

        public void setId(String id2) {
            this.f68030id = id2;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setType(String type) {
            this.type = type;
        }
    }

    public static class GameTagInfoBean {
        private String color;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68031id;
        private String name;
        private String type;

        public String getColor() {
            return this.color;
        }

        public String getId() {
            return this.f68031id;
        }

        public String getName() {
            return this.name;
        }

        public String getType() {
            return this.type;
        }

        public void setColor(String color) {
            this.color = color;
        }

        public void setId(String id2) {
            this.f68031id = id2;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setType(String type) {
            this.type = type;
        }
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public DownloadTask buildDownloadTask() {
        DownloadTask downloadTask = new DownloadTask();
        int i10 = this.down_status;
        if (i10 == 2 && this.bespeak_switch == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(i10);
        }
        downloadTask.setPackageName(this.package_name);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        if (t2.i(this.game_id)) {
            downloadTask.setCrc_link_type_val(this.game_id);
        } else {
            downloadTask.setCrc_link_type_val(this.crc_sign_id);
        }
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        downloadTask.setShowSize(this.size);
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(0);
        downloadTask.setScreenshot_pic(this.screenshot_pic);
        downloadTask.setPlugin_num(this.plugin_num);
        downloadTask.setIs_world(this.is_world);
        downloadTask.setIs_network(this.is_network);
        downloadTask.setSource_ver(this.source_ver);
        downloadTask.setSource_ver_name(this.source_ver_name);
        downloadTask.setSource_down_url(this.source_down_url);
        downloadTask.setPlugin_screenshot(this.plugin_screenshot);
        downloadTask.setPlugin_area(this.forum_switch);
        downloadTask.setPlugin_area_val(this.forum_id);
        downloadTask.setWorld_shop(this.world_shop);
        downloadTask.setWorld_area(this.world_area);
        downloadTask.setIs_fight(this.is_fight);
        downloadTask.setFight_type(this.fight_type);
        downloadTask.setFight_fun(this.fight_funv2);
        downloadTask.setFight_screenshot_pic(this.fight_screenshot_pic);
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setBattle_upload_pic(this.battle_upload_pic);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setGame_info_top_pic(this.game_info_top_pic);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        PayTagInfo payTagInfo = this.pay_tag_info;
        downloadTask.setPay_game_amount(payTagInfo != null ? payTagInfo.getPay_game_amount() : 0);
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.setRes_actual_size(this.resourceSize);
        if (t2.i(this.resourceUrl)) {
            downloadTask.setResource_url_remote(this.resourceUrl);
        } else {
            downloadTask.setResource_url_remote(this.cfg_down_url);
        }
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        downloadTask.setActual_size(this.actual_size);
        downloadTask.setSp_tag_info_s(JsonMapper.toJsonString(getSp_tag_info()));
        ModInfoBean modInfoBean = this.mod_info;
        if (modInfoBean != null) {
            if (modInfoBean.getMod_game_id().equals(this.crc_sign_id)) {
                downloadTask.setResource_url_remote(this.mod_info.getDown_url());
                downloadTask.setRef_crc_sign_id(this.mod_info.getMain_game_id());
            } else {
                downloadTask.setRef_crc_sign_id(this.mod_info.getMod_game_id());
            }
            downloadTask.setMod_info(JsonMapper.toJsonString(this.mod_info));
        }
        SingleGameModInfoBean singleGameModInfoBean = this.single_game_mod_info;
        if (singleGameModInfoBean != null) {
            downloadTask.setResource_url_remote(singleGameModInfoBean.getDownUrl());
            downloadTask.setSingle_game_mod_info(JsonMapper.toJsonString(this.single_game_mod_info));
        }
        ExtBean extBean = new ExtBean();
        extBean.setFrom(get_from() + "");
        extBean.set_from_type(get_from_type());
        extBean.setRecPosition(getRecPosition());
        extBean.setReMarks(getReMarks());
        extBean.setNodeId(getNodeId());
        extBean.setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "");
        extBean.setOnlineGame(UtilsMy.t2(this.tag_info));
        extBean.setReMarks(getReMarks());
        extBean.setWhere(getWhere());
        downloadTask.setExt(JsonMapper.toJsonString(extBean));
        downloadTask.setVm_device_switch(this.vm_device_switch);
        downloadTask.setCost_type(this.cost_type);
        List<String> list = this.permission_list;
        if (list != null && !list.isEmpty()) {
            downloadTask.setPermission_list(JsonMapper.toJsonString(this.permission_list));
        }
        return downloadTask;
    }

    public long getActual_size() {
        return this.actual_size;
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public String getBattle_upload_pic() {
        return this.battle_upload_pic;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getBespeakSwitch() {
        return this.bespeak_switch;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_lowest_ver() {
        return this.cfg_lowest_ver;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getCollection_game_describe() {
        return this.collection_game_describe;
    }

    public int getCost_type() {
        return this.cost_type;
    }

    public int getCpu_type() {
        return this.cpu_type;
    }

    public String getCrc_sign_id() {
        return t2.h(this.crc_sign_id) ? this.game_id : this.crc_sign_id;
    }

    public String getCustomer_info() {
        return this.customer_info;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getDownStatus() {
        int i10 = this.down_status;
        if (i10 != 2 || this.bespeak_switch != 1) {
            return i10;
        }
        this.down_status = 6;
        return 6;
    }

    public int getDownType() {
        return this.downType;
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

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public int getDownloadType() {
        return this.downloadType;
    }

    public int getDownload_close() {
        return this.download_close;
    }

    public String getDownload_original_switch() {
        return this.download_original_switch;
    }

    public String getDownload_outside_url() {
        return this.download_outside_url;
    }

    public String getDownload_source_switch_v1() {
        return this.download_source_switch_v1;
    }

    public String getDownload_source_switch_v2() {
        return this.download_source_switch_v2;
    }

    public String getDownload_source_url() {
        return this.download_source_url;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public ExtInfoBean getExt_info() {
        return this.ext_info;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public String getFirst_hot_comment() {
        return this.first_hot_comment;
    }

    public long getForum_id() {
        return this.forum_id;
    }

    public int getForum_switch() {
        return this.forum_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getGameBook() {
        return this.game_book;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getGameId() {
        return getGame_id();
    }

    public int getGame_book() {
        return this.game_book;
    }

    public String getGame_dimension() {
        return this.game_dimension;
    }

    public String getGame_id() {
        return t2.h(this.game_id) ? this.crc_sign_id : this.game_id;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
    }

    public String getGame_info_top_video_url() {
        return this.game_info_top_video_url;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getGame_open_time() {
        return this.game_open_time;
    }

    public String getGif_ico_remote() {
        return this.gif_ico_remote;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getIcon() {
        return this.ico_remote;
    }

    public int getIndex() {
        return this.index;
    }

    public String getInfo() {
        return this.info;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setTpl_type(this.game_info_tpl_type);
        if (t2.i(this.game_id)) {
            intentDateBean.setCrc_link_type_val(this.game_id);
        } else {
            intentDateBean.setCrc_link_type_val(this.crc_sign_id);
        }
        intentDateBean.setJump_type(this.sp_tpl_two_position);
        getExtBean().set_from_type(get_from_type()).setRecPosition(getRecPosition()).setReMarks(getReMarks()).setVolcanoOther(getPosition_path() != null ? JsonMapper.toJsonString(getPosition_path()) : "").setOnlineGame(UtilsMy.t2(this.tag_info));
        intentDateBean.setExtBean(getExtBean());
        IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
        intentToDetialBean.setAppId(this.game_id);
        intentToDetialBean.setAppName(this.game_name);
        intentToDetialBean.setIconUrl(this.ico_remote);
        intentToDetialBean.setDetialType(0);
        intentDateBean.setObject(intentToDetialBean);
        return intentDateBean;
    }

    public int getIs_fight() {
        return this.is_fight;
    }

    public int getIs_network() {
        return this.is_network;
    }

    public int getIs_world() {
        return this.is_world;
    }

    public int getLock_sp() {
        return this.lock_sp;
    }

    public int getMax_an_compatible_ver() {
        return this.max_an_compatible_ver;
    }

    public int getMin_an_compatible_ver() {
        return this.min_an_compatible_ver;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public String getModGameId() {
        ModInfoBean modInfoBean = this.mod_info;
        return modInfoBean != null ? modInfoBean.getMod_game_id() : "";
    }

    public ModInfoBean getMod_info() {
        return this.mod_info;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public String getPackageName() {
        return this.packageName;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPapa_explain() {
        return this.papa_explain;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @Nullable
    public PayTagInfo getPayTagInfo() {
        return this.pay_tag_info;
    }

    public PayTagInfo getPay_tag_info() {
        return this.pay_tag_info;
    }

    public List<String> getPermission_list() {
        return this.permission_list;
    }

    public List<DetialShowImageBean> getPic_info() {
        return this.pic_info;
    }

    public int getPic_position() {
        return this.pic_position;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    @NonNull
    public String getPluginNum() {
        return this.plugin_num;
    }

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public String getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public List<RecGameTagBean> getRec_game_tags() {
        return this.rec_game_tags;
    }

    public String getRecommend_game_big_gif() {
        return this.recommend_game_big_gif;
    }

    public String getRecommend_game_big_pic() {
        return this.recommend_game_big_pic;
    }

    public long getResourceSize() {
        return this.resourceSize;
    }

    public String getResourceUrl() {
        return this.resourceUrl;
    }

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
    }

    public String getScore() {
        return this.score;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public SingleGameModInfoBean getSingle_game_mod_info() {
        return this.single_game_mod_info;
    }

    public String getSize() {
        return this.size;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_lowest_ver() {
        return this.source_lowest_ver;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public TipNew getSpTagInfo() {
        return this.sp_tag_info;
    }

    public TipNew getSp_tag_info() {
        return this.sp_tag_info;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public List<TipBean> getTagInfo() {
        return this.tag_info;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public String getUnzip_size() {
        return this.unzip_size;
    }

    public String getVedio_cover_pic() {
        return this.vedio_cover_pic;
    }

    public String getVedio_url() {
        return this.vedio_url;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getVersionCode() {
        if (!t2.i(getVer())) {
            return 0;
        }
        try {
            return Integer.valueOf(getVer()).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public int getViewType() {
        return this.viewType;
    }

    public int getVm_device_switch() {
        return this.vm_device_switch;
    }

    public WebDiskInfo getWeb_disk_info() {
        return this.web_disk_info;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public boolean isAd() {
        return this.isAd;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        return this.download_close == 0;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        return super.isModGameVm() || getMod_info() != null;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        return super.isSingleGameVm() || getSingle_game_mod_info() != null;
    }

    public boolean isThe_new() {
        return this.the_new;
    }

    public boolean isThe_update() {
        return this.the_update;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needPurchase() {
        return UtilsMy.x0(getPay_tag_info(), getGameId()) > 0;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needUpdate(int vCode) {
        return vCode < getVersionCode();
    }

    public void setActual_size(long actual_size) {
        this.actual_size = actual_size;
    }

    public void setAd(boolean ad2) {
        this.isAd = ad2;
    }

    public void setAllow_start_up_ad(String allow_start_up_ad) {
        this.allow_start_up_ad = allow_start_up_ad;
    }

    public void setAppSize(String appSize) {
        this.appSize = appSize;
    }

    public void setBattle_upload_pic(String battle_upload_pic) {
        this.battle_upload_pic = battle_upload_pic;
    }

    public void setBespeak_switch(int bespeak_switch) {
        this.bespeak_switch = bespeak_switch;
    }

    public void setCdn_down_switch(int cdn_down_switch) {
        this.cdn_down_switch = cdn_down_switch;
    }

    public void setCfg_down_url(String cfg_down_url) {
        this.cfg_down_url = cfg_down_url;
    }

    public void setCfg_lowest_ver(String cfg_lowest_ver) {
        this.cfg_lowest_ver = cfg_lowest_ver;
    }

    public void setCfg_ver(String cfg_ver) {
        this.cfg_ver = cfg_ver;
    }

    public void setCfg_ver_name(String cfg_ver_name) {
        this.cfg_ver_name = cfg_ver_name;
    }

    public void setCollection_game_describe(String collection_game_describe) {
        this.collection_game_describe = collection_game_describe;
    }

    public void setCost_type(int cost_type) {
        this.cost_type = cost_type;
    }

    public void setCpu_type(int cpu_type) {
        this.cpu_type = cpu_type;
    }

    public void setCrc_sign_id(String crc_sign_id) {
        this.crc_sign_id = crc_sign_id;
    }

    public void setCustomer_info(String customer_info) {
        this.customer_info = customer_info;
    }

    public void setDownType(int downType) {
        this.downType = downType;
    }

    public void setDown_count(int down_count) {
        this.down_count = down_count;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setDown_url_remote(String down_url_remote) {
        this.down_url_remote = down_url_remote;
    }

    public void setDownloadType(int downloadType) {
        this.downloadType = downloadType;
    }

    public void setDownload_close(int download_close) {
        this.download_close = download_close;
    }

    public void setDownload_original_switch(String download_original_switch) {
        this.download_original_switch = download_original_switch;
    }

    public void setDownload_outside_url(String download_outside_url) {
        this.download_outside_url = download_outside_url;
    }

    public void setDownload_source_switch_v1(String download_source_switch_v1) {
        this.download_source_switch_v1 = download_source_switch_v1;
    }

    public void setDownload_source_switch_v2(String download_source_switch_v2) {
        this.download_source_switch_v2 = download_source_switch_v2;
    }

    public void setDownload_source_url(String download_source_url) {
        this.download_source_url = download_source_url;
    }

    public void setEdit_recommend(String edit_recommend) {
        this.edit_recommend = edit_recommend;
    }

    public void setExt_info(ExtInfoBean ext_info) {
        this.ext_info = ext_info;
    }

    public void setFight_funv2(String fight_funv2) {
        this.fight_funv2 = fight_funv2;
    }

    public void setFight_screenshot_pic(String fight_screenshot_pic) {
        this.fight_screenshot_pic = fight_screenshot_pic;
    }

    public void setFight_type(int fight_type) {
        this.fight_type = fight_type;
    }

    public void setFirst_hot_comment(String first_hot_comment) {
        this.first_hot_comment = first_hot_comment;
    }

    public void setForum_id(long forum_id) {
        this.forum_id = forum_id;
    }

    public void setForum_switch(int forum_switch) {
        this.forum_switch = forum_switch;
    }

    public void setGame_book(int game_book) {
        this.game_book = game_book;
    }

    public void setGame_dimension(String game_dimension) {
        this.game_dimension = game_dimension;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_info_top_pic(String game_info_top_pic) {
        this.game_info_top_pic = game_info_top_pic;
    }

    public void setGame_info_top_video_url(String game_info_top_video_url) {
        this.game_info_top_video_url = game_info_top_video_url;
    }

    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGame_open_time(String game_open_time) {
        this.game_open_time = game_open_time;
    }

    public void setGif_ico_remote(String gif_ico_remote) {
        this.gif_ico_remote = gif_ico_remote;
    }

    public void setGift_package_switch(int gift_package_switch) {
        this.gift_package_switch = gift_package_switch;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setIs_fight(int is_fight) {
        this.is_fight = is_fight;
    }

    public void setIs_network(int is_network) {
        this.is_network = is_network;
    }

    public void setIs_world(int is_world) {
        this.is_world = is_world;
    }

    public void setLock_sp(int lock_sp) {
        this.lock_sp = lock_sp;
    }

    public void setMax_an_compatible_ver(int max_an_compatible_ver) {
        this.max_an_compatible_ver = max_an_compatible_ver;
    }

    public void setMin_an_compatible_ver(int min_an_compatible_ver) {
        this.min_an_compatible_ver = min_an_compatible_ver;
    }

    public void setMod_info(ModInfoBean mod_info) {
        this.mod_info = mod_info;
    }

    public void setOther_down_switch(int other_down_switch) {
        this.other_down_switch = other_down_switch;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setPapa_explain(String papa_explain) {
        this.papa_explain = papa_explain;
    }

    public void setPay_tag_info(PayTagInfo pay_tag_info) {
        this.pay_tag_info = pay_tag_info;
    }

    public void setPermission_list(List<String> permission_list) {
        this.permission_list = permission_list;
    }

    public void setPic_info(List<DetialShowImageBean> pic_info) {
        this.pic_info = pic_info;
    }

    public void setPic_position(int pic_position) {
        this.pic_position = pic_position;
    }

    public void setPlugin_lowest_ver(String plugin_lowest_ver) {
        this.plugin_lowest_ver = plugin_lowest_ver;
    }

    public void setPlugin_lowest_ver_name(String plugin_lowest_ver_name) {
        this.plugin_lowest_ver_name = plugin_lowest_ver_name;
    }

    public void setPlugin_num(String plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setPlugin_screenshot(int plugin_screenshot) {
        this.plugin_screenshot = plugin_screenshot;
    }

    public void setRec_game_tags(List<RecGameTagBean> rec_game_tags) {
        this.rec_game_tags = rec_game_tags;
    }

    public void setRecommend_game_big_gif(String recommend_game_big_gif) {
        this.recommend_game_big_gif = recommend_game_big_gif;
    }

    public void setRecommend_game_big_pic(String recommend_game_big_pic) {
        this.recommend_game_big_pic = recommend_game_big_pic;
    }

    public void setResourceSize(long resourceSize) {
        this.resourceSize = resourceSize;
    }

    public void setResourceUrl(String resourceUrl) {
        this.resourceUrl = resourceUrl;
    }

    public void setRom_lowest_ver(String rom_lowest_ver) {
        this.rom_lowest_ver = rom_lowest_ver;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public void setSingle_game_mod_info(SingleGameModInfoBean single_game_mod_info2) {
        this.single_game_mod_info = single_game_mod_info2;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public void setSource_down_url(String source_down_url) {
        this.source_down_url = source_down_url;
    }

    public void setSource_lowest_ver(String source_lowest_ver) {
        this.source_lowest_ver = source_lowest_ver;
    }

    public void setSource_ver(String source_ver) {
        this.source_ver = source_ver;
    }

    public void setSource_ver_name(String source_ver_name) {
        this.source_ver_name = source_ver_name;
    }

    public void setSp_tag_info(TipNew sp_tag_info) {
        this.sp_tag_info = sp_tag_info;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setTag_info(List<TipBean> tag_info) {
        this.tag_info = tag_info;
    }

    public void setThe_new(boolean the_new) {
        this.the_new = the_new;
    }

    public void setThe_update(boolean the_update) {
        this.the_update = the_update;
    }

    public void setTp_down_url(List<DownloadUrlBean> tp_down_url) {
        this.tp_down_url = tp_down_url;
    }

    public void setUnzip_size(String unzip_size) {
        this.unzip_size = unzip_size;
    }

    public void setVedio_cover_pic(String vedio_cover_pic) {
        this.vedio_cover_pic = vedio_cover_pic;
    }

    public void setVedio_url(String vedio_url) {
        this.vedio_url = vedio_url;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }

    public void setViewType(int viewType) {
        this.viewType = viewType;
    }

    public void setVm_device_switch(int vm_device_switch) {
        this.vm_device_switch = vm_device_switch;
    }

    public void setWeb_disk_info(WebDiskInfo web_disk_info) {
        this.web_disk_info = web_disk_info;
    }

    public void setWorld_area(int world_area) {
        this.world_area = world_area;
    }

    public void setWorld_shop(int world_shop) {
        this.world_shop = world_shop;
    }

    public boolean showLabel() {
        return this.the_new || this.the_update;
    }

    public String toString() {
        return "CollectionBeanSub{game_id='" + this.game_id + "', crc_sign_id='" + this.crc_sign_id + "', game_name='" + this.game_name + "', cfg_ver_name='" + this.cfg_ver_name + "', cfg_ver='" + this.cfg_ver + "', cfg_down_url='" + this.cfg_down_url + "', screenshot_pic='" + this.screenshot_pic + "', ico_remote='" + this.ico_remote + "', package_name='" + this.package_name + "', down_url_remote='" + this.down_url_remote + "', info='" + this.info + "', size='" + this.size + "', actual_size=" + this.actual_size + ", ver_name='" + this.ver_name + "', ver='" + this.ver + "', plugin_num='" + this.plugin_num + "', is_world=" + this.is_world + ", is_network=" + this.is_network + ", source_ver_name='" + this.source_ver_name + "', source_ver='" + this.source_ver + "', source_down_url='" + this.source_down_url + "', plugin_screenshot=" + this.plugin_screenshot + ", forum_switch=" + this.forum_switch + ", forum_id=" + this.forum_id + ", world_shop=" + this.world_shop + ", world_area=" + this.world_area + ", is_fight=" + this.is_fight + ", fight_type=" + this.fight_type + ", fight_funv2='" + this.fight_funv2 + "', plugin_lowest_ver_name='" + this.plugin_lowest_ver_name + "', plugin_lowest_ver='" + this.plugin_lowest_ver + "', fight_screenshot_pic='" + this.fight_screenshot_pic + "', rom_lowest_ver='" + this.rom_lowest_ver + "', source_lowest_ver='" + this.source_lowest_ver + "', cfg_lowest_ver='" + this.cfg_lowest_ver + "', game_info_tpl_type='" + this.game_info_tpl_type + "', papa_explain='" + this.papa_explain + "', edit_recommend='" + this.edit_recommend + "', cdn_down_switch=" + this.cdn_down_switch + ", other_down_switch=" + this.other_down_switch + ", lock_sp=" + this.lock_sp + ", sp_tpl_two_position=" + this.sp_tpl_two_position + ", unzip_size='" + this.unzip_size + "', tag_info=" + this.tag_info + ", sp_tag_info=" + this.sp_tag_info + ", tp_down_url=" + this.tp_down_url + ", sync_memory='" + this.sync_memory + "', gift_package_switch=" + this.gift_package_switch + ", down_status=" + this.down_status + ", battle_upload_pic='" + this.battle_upload_pic + "', game_open_time='" + this.game_open_time + "', down_count=" + this.down_count + ", collection_game_describe='" + this.collection_game_describe + "', game_info_top_video_url='" + this.game_info_top_video_url + "', game_info_top_pic='" + this.game_info_top_pic + "', score='" + this.score + "', pay_tag_info=" + this.pay_tag_info + ", pic_position=" + this.pic_position + ", vedio_url='" + this.vedio_url + "', vedio_cover_pic='" + this.vedio_cover_pic + "', pic_info=" + this.pic_info + ", viewType=" + this.viewType + ", isAd=" + this.isAd + ", allow_start_up_ad='" + this.allow_start_up_ad + "', download_source_url='" + this.download_source_url + "', download_outside_url='" + this.download_outside_url + "', download_original_switch='" + this.download_original_switch + "', download_source_switch_v1='" + this.download_source_switch_v1 + "', download_source_switch_v2='" + this.download_source_switch_v2 + "'}";
    }
}
