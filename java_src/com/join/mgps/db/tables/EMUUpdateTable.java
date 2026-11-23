package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.CheckAppVersionBean;
import com.join.mgps.dto.CheckGameVersionResponseData;

/* JADX INFO: loaded from: classes3.dex */
public class EMUUpdateTable {

    @DatabaseField
    private String cfg_down_url;

    @DatabaseField
    private String cfg_lowest_ver;

    @DatabaseField
    private String cfg_ver;

    @DatabaseField
    private String cfg_ver_name;

    @DatabaseField
    private String crc_sign_id;

    @DatabaseField
    private int down_type;

    @DatabaseField
    private String down_url_remote;

    @DatabaseField
    private String fight_fun;

    @DatabaseField
    private int fight_type;

    @DatabaseField
    private long forum_id;

    @DatabaseField
    private int forum_switch;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67247id;

    @DatabaseField
    private int is_fight;

    @DatabaseField
    private int is_network;

    @DatabaseField
    private int is_world;

    @DatabaseField
    private int lock_sp;

    @DatabaseField
    private String plugin_lowest_ver;

    @DatabaseField
    private String plugin_lowest_ver_name;

    @DatabaseField
    private int plugin_screenshot;

    @DatabaseField
    private String remark;

    @DatabaseField
    private String rom_lowest_ver;

    @DatabaseField
    private String screenshot_pic;

    @DatabaseField
    private String source_down_url;

    @DatabaseField
    private String source_lowest_ver;

    @DatabaseField
    private String source_ver;

    @DatabaseField
    private String source_ver_name;
    private String sync_memory;

    @DatabaseField
    private String ver;

    @DatabaseField
    private String ver_name;

    @DatabaseField
    private int world_area;

    @DatabaseField
    private int world_shop;

    public EMUUpdateTable() {
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

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public int getDown_type() {
        return this.down_type;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public String getFight_fun() {
        return this.fight_fun;
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

    public int getId() {
        return this.f67247id;
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

    public String getPlugin_lowest_ver() {
        return this.plugin_lowest_ver;
    }

    public String getPlugin_lowest_ver_name() {
        return this.plugin_lowest_ver_name;
    }

    public int getPlugin_screenshot() {
        return this.plugin_screenshot;
    }

    public String getRemark() {
        return this.remark;
    }

    public String getRom_lowest_ver() {
        return this.rom_lowest_ver;
    }

    public String getScreenshot_pic() {
        return this.screenshot_pic;
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

    public String getSync_memory() {
        return this.sync_memory;
    }

    public String getVer() {
        return this.ver;
    }

    public String getVer_name() {
        return this.ver_name;
    }

    public int getWorld_area() {
        return this.world_area;
    }

    public int getWorld_shop() {
        return this.world_shop;
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

    public void setCrc_sign_id(String crc_sign_id) {
        this.crc_sign_id = crc_sign_id;
    }

    public void setDown_type(int down_type) {
        this.down_type = down_type;
    }

    public void setDown_url_remote(String down_url_remote) {
        this.down_url_remote = down_url_remote;
    }

    public void setFight_fun(String fight_fun) {
        this.fight_fun = fight_fun;
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

    public void setId(int id2) {
        this.f67247id = id2;
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

    public void setPlugin_lowest_ver(String plugin_lowest_ver) {
        this.plugin_lowest_ver = plugin_lowest_ver;
    }

    public void setPlugin_lowest_ver_name(String plugin_lowest_ver_name) {
        this.plugin_lowest_ver_name = plugin_lowest_ver_name;
    }

    public void setPlugin_screenshot(int plugin_screenshot) {
        this.plugin_screenshot = plugin_screenshot;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public void setRom_lowest_ver(String rom_lowest_ver) {
        this.rom_lowest_ver = rom_lowest_ver;
    }

    public void setScreenshot_pic(String screenshot_pic) {
        this.screenshot_pic = screenshot_pic;
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

    public void setSync_memory(String sync_memory) {
        this.sync_memory = sync_memory;
    }

    public void setVer(String ver) {
        this.ver = ver;
    }

    public void setVer_name(String ver_name) {
        this.ver_name = ver_name;
    }

    public void setWorld_area(int world_area) {
        this.world_area = world_area;
    }

    public void setWorld_shop(int world_shop) {
        this.world_shop = world_shop;
    }

    public EMUUpdateTable(CheckAppVersionBean checkAppVersionBean) {
        this.ver_name = checkAppVersionBean.getVer_name();
        this.ver = checkAppVersionBean.getVer();
        this.plugin_lowest_ver_name = checkAppVersionBean.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = checkAppVersionBean.getPlugin_lowest_ver();
        this.crc_sign_id = checkAppVersionBean.getCrc_sign_id();
        this.down_url_remote = checkAppVersionBean.getDown_url_remote();
        this.cfg_ver_name = checkAppVersionBean.getCfg_ver_name();
        this.cfg_ver = checkAppVersionBean.getCfg_ver();
        this.cfg_down_url = checkAppVersionBean.getCfg_down_url();
        this.source_ver_name = checkAppVersionBean.getSource_ver_name();
        this.source_ver = checkAppVersionBean.getSource_ver();
        this.source_down_url = checkAppVersionBean.getSource_down_url();
        this.screenshot_pic = checkAppVersionBean.getScreenshot_pic();
        this.rom_lowest_ver = checkAppVersionBean.getRom_lowest_ver();
        this.source_lowest_ver = checkAppVersionBean.getSource_lowest_ver();
        this.cfg_lowest_ver = checkAppVersionBean.getCfg_lowest_ver();
        this.is_world = checkAppVersionBean.getIs_world();
        this.is_network = checkAppVersionBean.getIs_network();
        this.plugin_screenshot = checkAppVersionBean.getPlugin_screenshot();
        this.forum_switch = checkAppVersionBean.getForum_switch();
        this.forum_id = checkAppVersionBean.getForum_id();
        this.world_shop = checkAppVersionBean.getWorld_shop();
        this.world_area = checkAppVersionBean.getWorld_area();
        this.is_fight = checkAppVersionBean.getIs_fight();
        this.fight_type = checkAppVersionBean.getFight_type();
        this.fight_fun = checkAppVersionBean.getFight_funv2();
        this.lock_sp = checkAppVersionBean.getLock_sp();
        this.sync_memory = checkAppVersionBean.getSync_memory();
        this.down_type = checkAppVersionBean.getDown_type();
    }

    public EMUUpdateTable(CheckGameVersionResponseData.VersionInfo checkAppVersionBean) {
        this.ver_name = checkAppVersionBean.getVer_name();
        this.ver = checkAppVersionBean.getVer();
        this.plugin_lowest_ver_name = checkAppVersionBean.getPlugin_lowest_ver_name();
        this.plugin_lowest_ver = checkAppVersionBean.getPlugin_lowest_ver();
        this.crc_sign_id = checkAppVersionBean.getCrc_sign_id();
        this.down_url_remote = checkAppVersionBean.getDown_url_remote();
        this.cfg_ver_name = checkAppVersionBean.getCfg_ver_name();
        this.cfg_ver = checkAppVersionBean.getCfg_ver();
        this.cfg_down_url = checkAppVersionBean.getCfg_down_url();
        this.source_ver_name = checkAppVersionBean.getSource_ver_name();
        this.source_ver = checkAppVersionBean.getSource_ver();
        this.source_down_url = checkAppVersionBean.getSource_down_url();
        this.screenshot_pic = checkAppVersionBean.getScreenshot_pic();
        this.rom_lowest_ver = checkAppVersionBean.getRom_lowest_ver();
        this.source_lowest_ver = checkAppVersionBean.getSource_lowest_ver();
        this.cfg_lowest_ver = checkAppVersionBean.getCfg_lowest_ver();
        this.is_world = checkAppVersionBean.getIs_world();
        this.is_network = checkAppVersionBean.getIs_network();
        this.plugin_screenshot = checkAppVersionBean.getPlugin_screenshot();
        this.forum_switch = checkAppVersionBean.getForum_switch();
        this.forum_id = checkAppVersionBean.getForum_id();
        this.world_shop = checkAppVersionBean.getWorld_shop();
        this.world_area = checkAppVersionBean.getWorld_area();
        this.is_fight = checkAppVersionBean.getIs_fight();
        this.fight_type = checkAppVersionBean.getFight_type();
        this.fight_fun = checkAppVersionBean.getFight_funv2();
        this.lock_sp = checkAppVersionBean.getLock_sp();
        this.sync_memory = checkAppVersionBean.getSync_memory();
        this.down_type = checkAppVersionBean.getDown_type();
    }

    public EMUUpdateTable(int id2, String ver_name, String ver, String plugin_lowest_ver_name, String plugin_lowest_ver, String crc_sign_id, String down_url_remote, String cfg_ver_name, String cfg_ver, String cfg_down_url, String source_ver_name, String source_ver, String source_down_url, String screenshot_pic, String rom_lowest_ver, String source_lowest_ver, String cfg_lowest_ver, int is_world, int is_network, int plugin_screenshot, int forum_switch, long forum_id, int world_shop, int world_area, int is_fight, int fight_type, String fight_fun) {
        this.f67247id = id2;
        this.ver_name = ver_name;
        this.ver = ver;
        this.plugin_lowest_ver_name = plugin_lowest_ver_name;
        this.plugin_lowest_ver = plugin_lowest_ver;
        this.crc_sign_id = crc_sign_id;
        this.down_url_remote = down_url_remote;
        this.cfg_ver_name = cfg_ver_name;
        this.cfg_ver = cfg_ver;
        this.cfg_down_url = cfg_down_url;
        this.source_ver_name = source_ver_name;
        this.source_ver = source_ver;
        this.source_down_url = source_down_url;
        this.screenshot_pic = screenshot_pic;
        this.rom_lowest_ver = rom_lowest_ver;
        this.source_lowest_ver = source_lowest_ver;
        this.cfg_lowest_ver = cfg_lowest_ver;
        this.is_world = is_world;
        this.is_network = is_network;
        this.plugin_screenshot = plugin_screenshot;
        this.forum_id = forum_id;
        this.forum_switch = forum_switch;
        this.world_shop = world_shop;
        this.world_area = world_area;
        this.is_fight = is_fight;
        this.fight_type = fight_type;
        this.fight_fun = fight_fun;
    }
}
