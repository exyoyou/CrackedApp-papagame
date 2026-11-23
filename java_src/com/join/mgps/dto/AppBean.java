package com.join.mgps.dto;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentToDetialBean;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AppBean extends DownloadPointBase implements Serializable {
    private String allow_start_up_ad;
    private String appSize;
    private String bespeak_count;
    private int bespeak_switch;
    private long bespeak_time;
    private int butnShowType;
    private int cdn_down_switch;
    private String cfg_down_url;
    private String cfg_lowest_ver;
    private String cfg_ver;
    private String cfg_ver_name;
    private String company_name;
    private int cpu_type;
    private String crc_sign_id;
    private int down_count;
    private int down_status;
    private int down_type;
    private String down_url_remote;
    private int downloadType;
    private int download_close;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;
    private String edit_recommend;
    private String fight_funv2;
    private int fight_type;
    private long forum_id;
    private int forum_switch;
    private int game_book;
    private String game_id;
    private String game_info_top_pic;
    private String game_info_tpl_type;
    private String game_name;
    private String game_open_time;
    private String gif_ico_remote;
    private int gift_package_switch;
    private String ico_remote;
    private String info;
    private int is_bespeak;
    private int is_boot_commented;
    private int is_fight;
    private int is_network;
    private int is_world;
    private int lock_sp;
    private int max_an_compatible_ver;
    private int min_an_compatible_ver;
    private ModInfoBean mod_info;
    private int other_down_switch;
    private String packageName;
    private String papa_explain;
    PayTagInfo pay_tag_info;
    private String plugin_lowest_ver;
    private String plugin_lowest_ver_name;
    private String plugin_num;
    private int plugin_screenshot;
    private String residual_time;
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
    private ArrayList<TipBean> tag_info;
    private List<DownloadUrlBean> tp_down_url;
    private String unzip_size;
    private String ver;
    private String ver_name;
    private WebDiskInfo web_disk_info;
    private int world_area;
    private int world_shop;

    public AppBean() {
        this.plugin_num = "";
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.GInfo
    @Nullable
    public DownloadTask buildDownloadTask() {
        return getDownloadtaskDown();
    }

    public String getAllow_start_up_ad() {
        return this.allow_start_up_ad;
    }

    public String getAppSize() {
        return this.appSize;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public int getBespeakSwitch() {
        return this.bespeak_switch;
    }

    public String getBespeak_count() {
        return this.bespeak_count;
    }

    public int getBespeak_switch() {
        return this.bespeak_switch;
    }

    public long getBespeak_time() {
        return this.bespeak_time;
    }

    public int getButnShowType() {
        return this.butnShowType;
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

    public String getCompany_name() {
        return this.company_name;
    }

    public int getCpu_type() {
        return this.cpu_type;
    }

    public String getCrc_sign_id() {
        return t2.h(this.crc_sign_id) ? this.game_id : this.crc_sign_id;
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

    public int getDown_type() {
        return this.down_type;
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

    @JsonIgnore
    public DownloadTask getDownloadtaskDown() {
        DownloadTask downloadTask = new DownloadTask();
        downloadTask.setPackageName(this.packageName);
        downloadTask.setPortraitURL(this.ico_remote);
        downloadTask.setShowName(this.game_name);
        downloadTask.setUrl(this.down_url_remote);
        downloadTask.setTipBeans(this.tag_info);
        downloadTask.setCrc_link_type_val(this.crc_sign_id);
        downloadTask.setVer(this.ver);
        downloadTask.setVer_name(this.ver_name);
        downloadTask.setRomType(this.plugin_num);
        downloadTask.setStatus(0);
        downloadTask.setDescribe(this.info);
        if (t2.h(this.size)) {
            downloadTask.setShowSize(this.appSize);
        } else {
            downloadTask.setShowSize(this.size);
        }
        downloadTask.setCfg_ver(this.cfg_ver);
        downloadTask.setCfg_ver_name(this.cfg_ver_name);
        downloadTask.setCfg_down_url(this.cfg_down_url);
        downloadTask.setDownloadType(this.downloadType);
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
        downloadTask.setGame_info_tpl_type(this.game_info_tpl_type);
        downloadTask.setSp_tpl_two_position(this.sp_tpl_two_position);
        downloadTask.setLock_sp(this.lock_sp);
        downloadTask.setUnzip_size(this.unzip_size);
        downloadTask.setSync_memory(this.sync_memory);
        downloadTask.setGift_package_switch(this.gift_package_switch);
        downloadTask.setDown_count(this.down_count);
        downloadTask.setSp_tag_info(this.sp_tag_info);
        downloadTask.setScore(this.score);
        PayTagInfo payTagInfo = this.pay_tag_info;
        downloadTask.setPay_game_amount(payTagInfo != null ? payTagInfo.getPay_game_amount() : 0);
        int i10 = this.down_status;
        if (i10 == 2 && this.bespeak_switch == 1) {
            downloadTask.setDown_status(6);
        } else {
            downloadTask.setDown_status(i10);
        }
        downloadTask.setDownload_source_url(this.download_source_url);
        downloadTask.setDownload_outside_url(this.download_outside_url);
        downloadTask.setDownload_original_switch(this.download_original_switch);
        downloadTask.setDownload_source_switch_v1(this.download_source_switch_v1);
        downloadTask.setDownload_source_switch_v2(this.download_source_switch_v2);
        downloadTask.setAllow_start_up_ad(this.allow_start_up_ad);
        downloadTask.set_from(get_from());
        downloadTask.set_from_type(get_from_type());
        downloadTask.setMin_an_compatible_ver(this.min_an_compatible_ver);
        downloadTask.setMax_an_compatible_ver(this.max_an_compatible_ver);
        if (t2.i(this.cfg_down_url)) {
            downloadTask.setResource_url_remote(this.cfg_down_url);
        }
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
        return downloadTask;
    }

    public String getEdit_recommend() {
        return this.edit_recommend;
    }

    public String getFight_funv2() {
        return this.fight_funv2;
    }

    public int getFight_type() {
        return this.fight_type;
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

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_info_top_pic() {
        return this.game_info_top_pic;
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

    public String getInfo() {
        return this.info;
    }

    @Override // com.join.kotlin.base.impl.IIntent, com.join.kotlin.base.impl.GInfo
    @JsonIgnore
    public IntentDateBean getIntentDataBean() {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(1);
        intentDateBean.setTpl_type(this.game_info_tpl_type);
        intentDateBean.setCrc_link_type_val(this.crc_sign_id);
        intentDateBean.setJump_type(this.sp_tpl_two_position);
        IntentToDetialBean intentToDetialBean = new IntentToDetialBean();
        intentToDetialBean.setAppId(this.crc_sign_id);
        intentToDetialBean.setAppName(this.game_name);
        intentToDetialBean.setIconUrl(this.ico_remote);
        intentToDetialBean.setDetialType(0);
        intentDateBean.setExtBean(getExtBean().set_from_type(get_from_type()));
        intentDateBean.setObject(intentToDetialBean);
        return intentDateBean;
    }

    public int getIs_bespeak() {
        return this.is_bespeak;
    }

    public int getIs_boot_commented() {
        return this.is_boot_commented;
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

    public String getResidual_time() {
        return this.residual_time;
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

    public ArrayList<TipBean> getTag_info() {
        return this.tag_info;
    }

    public List<DownloadUrlBean> getTp_down_url() {
        return this.tp_down_url;
    }

    public String getUnzip_size() {
        return this.unzip_size;
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

    public WebDiskInfo getWeb_disk_info() {
        return this.web_disk_info;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    @Override // com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isCpsGame() {
        return this.download_close == 0;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isModGameVm() {
        return super.isModGameVm() || getMod_info() != null;
    }

    @Override // com.join.mgps.dto.DownloadPointBase, com.join.kotlin.base.impl.BaseDownloadable, com.join.kotlin.base.impl.GameType
    public boolean isSingleGameVm() {
        return super.isSingleGameVm() || getSingle_game_mod_info() != null;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needPurchase() {
        return UtilsMy.x0(getPay_tag_info(), getGameId()) > 0;
    }

    @Override // com.join.kotlin.base.impl.GInfo
    public boolean needUpdate(int vCode) {
        return vCode < getVersionCode();
    }

    public void setAllow_start_up_ad(String allow_start_up_ad) {
        this.allow_start_up_ad = allow_start_up_ad;
    }

    public void setAppSize(String appSize) {
        this.appSize = appSize;
    }

    public void setBespeak_count(String bespeak_count) {
        this.bespeak_count = bespeak_count;
    }

    public void setBespeak_switch(int bespeak_switch) {
        this.bespeak_switch = bespeak_switch;
    }

    public void setBespeak_time(long bespeak_time) {
        this.bespeak_time = bespeak_time;
    }

    public void setButnShowType(int butnShowType) {
        this.butnShowType = butnShowType;
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

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public void setCpu_type(int cpu_type) {
        this.cpu_type = cpu_type;
    }

    public void setCrc_sign_id(String crc_sign_id) {
        this.crc_sign_id = crc_sign_id;
    }

    public void setDown_count(int down_count) {
        this.down_count = down_count;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setDown_type(int down_type) {
        this.down_type = down_type;
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

    public void setFight_funv2(String fight_funv2) {
        this.fight_funv2 = fight_funv2;
    }

    public void setFight_type(int fight_type) {
        this.fight_type = fight_type;
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

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_info_top_pic(String game_info_top_pic) {
        this.game_info_top_pic = game_info_top_pic;
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

    public void setInfo(String info) {
        this.info = info;
    }

    public void setIs_bespeak(int is_bespeak) {
        this.is_bespeak = is_bespeak;
    }

    public void setIs_boot_commented(int is_boot_commented) {
        this.is_boot_commented = is_boot_commented;
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

    public void setPapa_explain(String papa_explain) {
        this.papa_explain = papa_explain;
    }

    public void setPay_tag_info(PayTagInfo pay_tag_info) {
        this.pay_tag_info = pay_tag_info;
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

    public void setResidual_time(String residual_time) {
        this.residual_time = residual_time;
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

    public void setTag_info(ArrayList<TipBean> tag_info) {
        this.tag_info = tag_info;
    }

    public void setTp_down_url(List<DownloadUrlBean> tp_down_url) {
        this.tp_down_url = tp_down_url;
    }

    public void setUnzip_size(String unzip_size) {
        this.unzip_size = unzip_size;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
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

    public AppBean(String crc_sign_id, String game_name, String ico_remote, String packageName, String appSize, String down_url_remote, String info, String ver, String ver_name, String cfg_down_url, String cfg_ver, String cfg_ver_name, String screenshot_pic, int butnShowType, int downloadType, String plugin_num, int is_world, int is_network, String source_ver_name, String source_ver, String source_down_url, int plugin_screenshot, int forum_switch, long forum_id, int world_shop, int world_area, int is_fight, int fight_type, String fight_funv2, String plugin_lowest_ver_name, String plugin_lowest_ver, String rom_lowest_ver, String source_lowest_ver, String cfg_lowest_ver, String game_info_tpl_type, String company_name, int cdn_down_switch, int other_down_switch, String game_info_top_pic, String papa_explain, String edit_recommend, String sync_memory, int gift_package_switch, int down_status) {
        this.crc_sign_id = crc_sign_id;
        this.game_name = game_name;
        this.ico_remote = ico_remote;
        this.packageName = packageName;
        this.appSize = appSize;
        this.down_url_remote = down_url_remote;
        this.info = info;
        this.ver = ver;
        this.ver_name = ver_name;
        this.cfg_down_url = cfg_down_url;
        this.cfg_ver = cfg_ver;
        this.cfg_ver_name = cfg_ver_name;
        this.screenshot_pic = screenshot_pic;
        this.butnShowType = butnShowType;
        this.downloadType = downloadType;
        this.plugin_num = plugin_num;
        this.is_world = is_world;
        this.is_network = is_network;
        this.source_ver_name = source_ver_name;
        this.source_ver = source_ver;
        this.source_down_url = source_down_url;
        this.plugin_screenshot = plugin_screenshot;
        this.forum_switch = forum_switch;
        this.forum_id = forum_id;
        this.world_shop = world_shop;
        this.world_area = world_area;
        this.is_fight = is_fight;
        this.fight_type = fight_type;
        this.fight_funv2 = fight_funv2;
        this.plugin_lowest_ver_name = plugin_lowest_ver_name;
        this.plugin_lowest_ver = plugin_lowest_ver;
        this.rom_lowest_ver = rom_lowest_ver;
        this.source_lowest_ver = source_lowest_ver;
        this.cfg_lowest_ver = cfg_lowest_ver;
        this.game_info_tpl_type = game_info_tpl_type;
        this.company_name = company_name;
        this.cdn_down_switch = cdn_down_switch;
        this.other_down_switch = other_down_switch;
        this.game_info_top_pic = game_info_top_pic;
        this.papa_explain = papa_explain;
        this.edit_recommend = edit_recommend;
        this.sync_memory = sync_memory;
        this.gift_package_switch = gift_package_switch;
        this.down_status = down_status;
    }
}
