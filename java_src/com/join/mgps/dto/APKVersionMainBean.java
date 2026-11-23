package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class APKVersionMainBean implements Serializable {

    /* JADX INFO: renamed from: app, reason: collision with root package name */
    private List<ApkVersionbean> f68013app;
    private List<HomeViewSwich> cfg;
    private DownloadSpeedupCfgBean download_speedup_cfg;
    private SingleGameAdCfgBean mod_enhance_ad_cfg;
    private SingleGameAdCfgBean mod_normal_ad_cfg;
    private List<GameTimeLevel> play_game_time_lv_cfg;
    private List<ApkVersionbean> plugin;
    private PspGameAdCfgBean psp_game_ad_cfg;
    private PublicVideoCfgBean public_video_cfg;
    private List<SimulatorRunAdTextCfgBean> simulator_run_ad_text_cfg;
    private SingleGameAdCfgBean single_game_ad_cfg;
    private SingleGameRunAdTextCfgBean single_game_run_ad_text_cfg;

    public APKVersionMainBean() {
    }

    public List<ApkVersionbean> getApp() {
        return this.f68013app;
    }

    public List<HomeViewSwich> getCfg() {
        return this.cfg;
    }

    public DownloadSpeedupCfgBean getDownload_speedup_cfg() {
        return this.download_speedup_cfg;
    }

    public SingleGameAdCfgBean getMod_enhance_ad_cfg() {
        return this.mod_enhance_ad_cfg;
    }

    public SingleGameAdCfgBean getMod_normal_ad_cfg() {
        return this.mod_normal_ad_cfg;
    }

    public List<GameTimeLevel> getPlay_game_time_lv_cfg() {
        return this.play_game_time_lv_cfg;
    }

    public List<ApkVersionbean> getPlugin() {
        return this.plugin;
    }

    public PspGameAdCfgBean getPsp_game_ad_cfg() {
        return this.psp_game_ad_cfg;
    }

    public PublicVideoCfgBean getPublic_video_cfg() {
        return this.public_video_cfg;
    }

    public List<SimulatorRunAdTextCfgBean> getSimulator_run_ad_text_cfg() {
        return this.simulator_run_ad_text_cfg;
    }

    public SingleGameAdCfgBean getSingle_game_ad_cfg() {
        return this.single_game_ad_cfg;
    }

    public SingleGameRunAdTextCfgBean getSingle_game_run_ad_text_cfg() {
        return this.single_game_run_ad_text_cfg;
    }

    public void setApp(List<ApkVersionbean> app2) {
        this.f68013app = app2;
    }

    public void setCfg(List<HomeViewSwich> cfg) {
        this.cfg = cfg;
    }

    public void setDownload_speedup_cfg(DownloadSpeedupCfgBean download_speedup_cfg) {
        this.download_speedup_cfg = download_speedup_cfg;
    }

    public void setMod_enhance_ad_cfg(SingleGameAdCfgBean mod_enhance_ad_cfg) {
        this.mod_enhance_ad_cfg = mod_enhance_ad_cfg;
    }

    public void setMod_normal_ad_cfg(SingleGameAdCfgBean mod_normal_ad_cfg) {
        this.mod_normal_ad_cfg = mod_normal_ad_cfg;
    }

    public void setPlay_game_time_lv_cfg(List<GameTimeLevel> play_game_time_lv_cfg) {
        this.play_game_time_lv_cfg = play_game_time_lv_cfg;
    }

    public void setPlugin(List<ApkVersionbean> plugin) {
        this.plugin = plugin;
    }

    public void setPsp_game_ad_cfg(PspGameAdCfgBean psp_game_ad_cfg) {
        this.psp_game_ad_cfg = psp_game_ad_cfg;
    }

    public void setPublic_video_cfg(PublicVideoCfgBean public_video_cfg) {
        this.public_video_cfg = public_video_cfg;
    }

    public void setSimulator_run_ad_text_cfg(List<SimulatorRunAdTextCfgBean> simulator_run_ad_text_cfg) {
        this.simulator_run_ad_text_cfg = simulator_run_ad_text_cfg;
    }

    public void setSingle_game_ad_cfg(SingleGameAdCfgBean single_game_ad_cfg) {
        this.single_game_ad_cfg = single_game_ad_cfg;
    }

    public void setSingle_game_run_ad_text_cfg(SingleGameRunAdTextCfgBean single_game_run_ad_text_cfg) {
        this.single_game_run_ad_text_cfg = single_game_run_ad_text_cfg;
    }

    public APKVersionMainBean(List<ApkVersionbean> app2, List<ApkVersionbean> plugin) {
        this.f68013app = app2;
        this.plugin = plugin;
    }
}
