package com.join.mgps.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;

/* JADX INFO: loaded from: classes3.dex */
public class WarMatchAndLocalTable {

    @DatabaseField
    private String appSize;

    @DatabaseField
    private int cdn_down_switch;

    @DatabaseField
    private String cfg_down_url;

    @DatabaseField
    private String cfg_ver;

    @DatabaseField
    private String cfg_ver_name;

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    int down_status;

    @DatabaseField
    private String down_url_remote;
    private String download_original_switch;
    private String download_outside_url;
    private String download_source_switch_v1;
    private String download_source_switch_v2;
    private String download_source_url;

    @DatabaseField
    private String fight_fun;

    @DatabaseField
    private String fight_screenshot_pic;

    @DatabaseField
    private int fight_type;

    @DatabaseField
    private int forum_id;

    @DatabaseField
    private int forum_switch;

    @DatabaseField
    String game_info_tpl_type;

    @DatabaseField
    private String game_name;

    @DatabaseField
    int gift_package_switch;

    @DatabaseField
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67273id;

    @DatabaseField
    private String info;

    @DatabaseField
    private int is_fight;

    @DatabaseField
    private int is_network;

    @DatabaseField
    private int is_world;

    @DatabaseField
    private int lock_sp;

    @DatabaseField
    String main_sub_title;

    @DatabaseField
    String main_title;

    @DatabaseField
    private int other_down_switch;

    @DatabaseField
    private String packageName;

    @DatabaseField
    int pay_game_amount;

    @DatabaseField
    String pic_remote;

    @DatabaseField
    private String plugin_lowest_ver;

    @DatabaseField
    private String plugin_lowest_ver_name;

    @DatabaseField
    private int plugin_num;

    @DatabaseField
    private int plugin_screenshot;

    @DatabaseField
    private String screenshot_pic;

    @DatabaseField
    private String showName;

    @DatabaseField
    private String source_down_url;

    @DatabaseField
    private String source_ver;

    @DatabaseField
    private String source_ver_name;

    @DatabaseField
    String sync_memory;

    @DatabaseField
    private String tips;

    @ForeignCollectionField(eager = false)
    ForeignCollection<DownloadUrlTable> tp_down_url;

    @DatabaseField
    private String unzip_size;

    @DatabaseField
    private String ver;

    @DatabaseField
    private String ver_name;

    @DatabaseField
    private int warType;

    @DatabaseField
    private int world_area;

    @DatabaseField
    private int world_shop;

    public WarMatchAndLocalTable() {
    }

    public String getAppSize() {
        return this.appSize;
    }

    public int getCdn_down_switch() {
        return this.cdn_down_switch;
    }

    public String getCfg_down_url() {
        return this.cfg_down_url;
    }

    public String getCfg_ver() {
        return this.cfg_ver;
    }

    public String getCfg_ver_name() {
        return this.cfg_ver_name;
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getDown_status() {
        return this.down_status;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
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

    public String getFight_fun() {
        return this.fight_fun;
    }

    public String getFight_screenshot_pic() {
        return this.fight_screenshot_pic;
    }

    public int getFight_type() {
        return this.fight_type;
    }

    public int getForum_id() {
        return this.forum_id;
    }

    public int getForum_switch() {
        return this.forum_switch;
    }

    public String getGame_info_tpl_type() {
        return this.game_info_tpl_type;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public int getGift_package_switch() {
        return this.gift_package_switch;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.f67273id;
    }

    public String getInfo() {
        return this.info;
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

    public String getMain_sub_title() {
        return this.main_sub_title;
    }

    public String getMain_title() {
        return this.main_title;
    }

    public int getOther_down_switch() {
        return this.other_down_switch;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public int getPlugin_num() {
        return this.plugin_num;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
    }

    public String getShowName() {
        return this.showName;
    }

    public String getSource_down_url() {
        return this.source_down_url;
    }

    public String getSource_ver() {
        return this.source_ver;
    }

    public String getSource_ver_name() {
        return this.source_ver_name;
    }

    public String getSync_memory() {
        return this.sync_memory;
    }

    public String getTips() {
        return this.tips;
    }

    public ForeignCollection<DownloadUrlTable> getTp_down_url() {
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

    public int getWarType() {
        return this.warType;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
    }

    public void setAppSize(String appSize) {
        this.appSize = appSize;
    }

    public void setCdn_down_switch(int cdn_down_switch) {
        this.cdn_down_switch = cdn_down_switch;
    }

    public void setCfg_down_url(String cfg_down_url) {
        this.cfg_down_url = cfg_down_url;
    }

    public void setCfg_ver(String cfg_ver) {
        this.cfg_ver = cfg_ver;
    }

    public void setCfg_ver_name(String cfg_ver_name) {
        this.cfg_ver_name = cfg_ver_name;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setDown_status(int down_status) {
        this.down_status = down_status;
    }

    public void setDown_url_remote(String down_url_remote) {
        this.down_url_remote = down_url_remote;
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

    public void setFight_fun(String fight_fun) {
        this.fight_fun = fight_fun;
    }

    public void setFight_screenshot_pic(String fight_screenshot_pic) {
        this.fight_screenshot_pic = fight_screenshot_pic;
    }

    public void setFight_type(int fight_type) {
        this.fight_type = fight_type;
    }

    public void setForum_id(int forum_id) {
        this.forum_id = forum_id;
    }

    public void setForum_switch(int forum_switch) {
        this.forum_switch = forum_switch;
    }

    public void setGame_info_tpl_type(String game_info_tpl_type) {
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGift_package_switch(int gift_package_switch) {
        this.gift_package_switch = gift_package_switch;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(int id2) {
        this.f67273id = id2;
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

    public void setMain_sub_title(String main_sub_title) {
        this.main_sub_title = main_sub_title;
    }

    public void setMain_title(String main_title) {
        this.main_title = main_title;
    }

    public void setOther_down_switch(int other_down_switch) {
        this.other_down_switch = other_down_switch;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setPay_game_amount(int pay_game_amount) {
        this.pay_game_amount = pay_game_amount;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setPlugin_lowest_ver(String plugin_lowest_ver) {
        this.plugin_lowest_ver = plugin_lowest_ver;
    }

    public void setPlugin_lowest_ver_name(String plugin_lowest_ver_name) {
        this.plugin_lowest_ver_name = plugin_lowest_ver_name;
    }

    public void setPlugin_num(int plugin_num) {
        this.plugin_num = plugin_num;
    }

    public void setPlugin_screenshot(int plugin_screenshot) {
        this.plugin_screenshot = plugin_screenshot;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
    }

    public void setShowName(String showName) {
        this.showName = showName;
    }

    public void setSource_down_url(String source_down_url) {
        this.source_down_url = source_down_url;
    }

    public void setSource_ver(String source_ver) {
        this.source_ver = source_ver;
    }

    public void setSource_ver_name(String source_ver_name) {
        this.source_ver_name = source_ver_name;
    }

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    public void setTp_down_url(ForeignCollection<DownloadUrlTable> tp_down_url) {
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

    public void setWarType(int warType) {
        this.warType = warType;
    }

    public void setWorld_area(int world_area) {
        this.world_area = world_area;
    }

    public void setWorld_shop(int world_shop) {
        this.world_shop = world_shop;
    }

    public WarMatchAndLocalTable(WarMatchAndLocalTable warMatchAndLocalTable) {
        if (warMatchAndLocalTable == null) {
            return;
        }
        this.f67273id = warMatchAndLocalTable.getId();
        this.crc_link_type_val = warMatchAndLocalTable.getCrc_link_type_val();
        this.showName = warMatchAndLocalTable.getShowName();
        this.fight_screenshot_pic = warMatchAndLocalTable.getFight_screenshot_pic();
        this.warType = warMatchAndLocalTable.getWarType();
        this.game_name = warMatchAndLocalTable.getGame_name();
        this.ico_remote = warMatchAndLocalTable.getIco_remote();
        this.packageName = warMatchAndLocalTable.getPackageName();
        this.appSize = warMatchAndLocalTable.getAppSize();
        this.tips = warMatchAndLocalTable.getTips();
        this.down_url_remote = warMatchAndLocalTable.getDown_url_remote();
        this.info = warMatchAndLocalTable.getInfo();
        this.ver = warMatchAndLocalTable.getVer();
        this.ver_name = warMatchAndLocalTable.getVer_name();
        this.plugin_num = warMatchAndLocalTable.getPlugin_num();
        this.is_world = warMatchAndLocalTable.getIs_world();
        this.is_network = warMatchAndLocalTable.getIs_network();
        this.source_ver_name = warMatchAndLocalTable.getSource_ver_name();
        this.source_ver = warMatchAndLocalTable.getSource_ver();
        this.source_down_url = warMatchAndLocalTable.getSource_down_url();
        this.plugin_screenshot = warMatchAndLocalTable.getPlugin_screenshot();
        this.forum_switch = warMatchAndLocalTable.getForum_switch();
        this.forum_id = warMatchAndLocalTable.getForum_id();
        this.world_shop = warMatchAndLocalTable.getWorld_shop();
        this.world_area = warMatchAndLocalTable.getWorld_area();
        this.is_fight = warMatchAndLocalTable.getIs_fight();
        this.fight_type = warMatchAndLocalTable.getFight_type();
        this.fight_fun = warMatchAndLocalTable.getFight_fun();
        this.plugin_lowest_ver_name = warMatchAndLocalTable.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = warMatchAndLocalTable.getPlugin_lowest_ver();
        this.cfg_ver_name = warMatchAndLocalTable.getCfg_ver_name();
        this.cfg_ver = warMatchAndLocalTable.getCfg_ver();
        this.cfg_down_url = warMatchAndLocalTable.getCfg_down_url();
        this.screenshot_pic = warMatchAndLocalTable.getScreenshot_pic();
        this.other_down_switch = warMatchAndLocalTable.getOther_down_switch();
        this.cdn_down_switch = warMatchAndLocalTable.getCdn_down_switch();
        this.game_info_tpl_type = warMatchAndLocalTable.getGame_info_tpl_type();
        this.pic_remote = warMatchAndLocalTable.getPic_remote();
        this.sync_memory = warMatchAndLocalTable.getSync_memory();
        this.gift_package_switch = this.gift_package_switch;
        this.pay_game_amount = this.pay_game_amount;
        this.download_source_url = warMatchAndLocalTable.getDownload_source_url();
        this.download_outside_url = warMatchAndLocalTable.getDownload_outside_url();
        this.download_original_switch = warMatchAndLocalTable.getDownload_original_switch();
    }
}
