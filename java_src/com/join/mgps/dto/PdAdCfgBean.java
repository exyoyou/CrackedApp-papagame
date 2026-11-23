package com.join.mgps.dto;

import com.MApplication;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes3.dex */
public class PdAdCfgBean {
    private int download_limit;
    private int download_show_times;
    private long lastUpdateConfigTime;
    private int simulator_startup_popup_limit;
    private int simulator_startup_show_times;
    private int single_show_times;
    private int single_startup_limit;
    private int startup_limit;

    public static PdAdCfgBean convertStr2Bean(String jsonStr) {
        if (t2.h(jsonStr)) {
            return null;
        }
        try {
            return (PdAdCfgBean) JsonMapper.getInstance().fromJson(jsonStr, PdAdCfgBean.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public boolean canShowDownload() {
        return this.download_show_times < this.download_limit;
    }

    public boolean canShowSimulatorPopup() {
        return this.simulator_startup_show_times < this.simulator_startup_popup_limit;
    }

    public boolean canShowSingleStartUp() {
        return this.single_show_times < this.single_startup_limit;
    }

    public boolean canShowStartUp(int times) {
        return times < this.startup_limit;
    }

    public int getDownload_limit() {
        return this.download_limit;
    }

    public int getDownload_show_times() {
        return this.download_show_times;
    }

    public long getLastUpdateConfigTime() {
        return this.lastUpdateConfigTime;
    }

    public int getSimulator_startup_popup_limit() {
        return this.simulator_startup_popup_limit;
    }

    public int getSimulator_startup_show_times() {
        return this.simulator_startup_show_times;
    }

    public int getSingle_show_times() {
        return this.single_show_times;
    }

    public int getSingle_startup_limit() {
        return this.single_startup_limit;
    }

    public int getStartup_limit() {
        return this.startup_limit;
    }

    public void setDownload_limit(int download_limit) {
        this.download_limit = download_limit;
    }

    public void setDownload_show_times(int download_show_times) {
        this.download_show_times = download_show_times;
    }

    public void setLastUpdateConfigTime(long lastUpdateConfigTime) {
        this.lastUpdateConfigTime = lastUpdateConfigTime;
    }

    public void setSimulator_startup_popup_limit(int simulator_startup_popup_limit) {
        this.simulator_startup_popup_limit = simulator_startup_popup_limit;
    }

    public void setSimulator_startup_show_times(int simulator_startup_show_times) {
        this.simulator_startup_show_times = simulator_startup_show_times;
    }

    public void setSingle_show_times(int single_show_times) {
        this.single_show_times = single_show_times;
    }

    public void setSingle_startup_limit(int single_startup_limit) {
        this.single_startup_limit = single_startup_limit;
    }

    public void setStartup_limit(int startup_limit) {
        this.startup_limit = startup_limit;
    }

    public void updateDownloadShowTimes() {
        this.download_show_times++;
        MApplication.f3182z.p().pd_ad_config().g(JsonMapper.toJsonString(this));
    }

    public void updateSimulatorPopupShowTimes() {
        this.simulator_startup_show_times++;
        MApplication.f3182z.p().pd_ad_config().g(JsonMapper.toJsonString(this));
    }

    public void updateSingleShowTimes() {
        this.single_show_times++;
        MApplication.f3182z.p().pd_ad_config().g(JsonMapper.toJsonString(this));
    }
}
