package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorAdCfgBean extends BaseBean {
    private int ad_num = 0;
    private int daily_times;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68111id;
    private int interval_times;
    private SimulatorGoldAdCfgBean open_cfg;
    private List<PlayCfgBean> play_cfg;
    private int show_times;
    private int switch_state;
    private SimulatorGoldAdCfgBean un_open_cfg;
    private List<PlayCfgBean> un_play_cfg;

    public SimulatorAdPlayRecord findCanPlayRecord(List<SimulatorAdPlayRecord> records, int sdkType) {
        if (records != null) {
            for (SimulatorAdPlayRecord simulatorAdPlayRecord : records) {
                if (simulatorAdPlayRecord.typeOf(sdkType)) {
                    return simulatorAdPlayRecord;
                }
            }
        }
        return null;
    }

    public int getAd_num() {
        return this.ad_num;
    }

    public int getDaily_times() {
        return this.daily_times;
    }

    public int getId() {
        return this.f68111id;
    }

    public int getInterval_times() {
        return this.interval_times;
    }

    public SimulatorGoldAdCfgBean getOpen_cfg() {
        return this.open_cfg;
    }

    public PlayCfgBean getPlayCfgBean(List<PlayCfgBean> list, int adType) {
        if (list != null) {
            for (PlayCfgBean playCfgBean : list) {
                if (playCfgBean.getSdk_type() == adType) {
                    return playCfgBean;
                }
            }
        }
        return null;
    }

    public List<PlayCfgBean> getPlay_cfg() {
        return this.play_cfg;
    }

    public int getShow_times() {
        return this.show_times;
    }

    public int getSwitch_state() {
        return this.switch_state;
    }

    public SimulatorGoldAdCfgBean getUn_open_cfg() {
        return this.un_open_cfg;
    }

    public List<PlayCfgBean> getUn_play_cfg() {
        return this.un_play_cfg;
    }

    public void setAd_num(int ad_num) {
        this.ad_num = ad_num;
    }

    public void setDaily_times(Integer daily_times) {
        this.daily_times = daily_times.intValue();
    }

    public void setId(int id2) {
        this.f68111id = id2;
    }

    public void setInterval_times(int interval_times) {
        this.interval_times = interval_times;
    }

    public void setOpen_cfg(SimulatorGoldAdCfgBean open_cfg) {
        this.open_cfg = open_cfg;
    }

    public void setPlay_cfg(List<PlayCfgBean> play_cfg) {
        this.play_cfg = play_cfg;
    }

    public void setShow_times(int show_times) {
        this.show_times = show_times;
    }

    public void setSwitch_state(int switch_state) {
        this.switch_state = switch_state;
    }

    public void setUn_open_cfg(SimulatorGoldAdCfgBean un_open_cfg) {
        this.un_open_cfg = un_open_cfg;
    }

    public void setUn_play_cfg(List<PlayCfgBean> un_play_cfg) {
        this.un_play_cfg = un_play_cfg;
    }

    public SimulatorAdPlayRecord findCanPlayRecord(List<SimulatorAdPlayRecord> records) {
        if (records != null) {
            for (SimulatorAdPlayRecord simulatorAdPlayRecord : records) {
                if (simulatorAdPlayRecord.canPlay()) {
                    return simulatorAdPlayRecord;
                }
            }
        }
        return null;
    }

    public PlayCfgBean getPlayCfgBean(List<PlayCfgBean> list, List<SimulatorAdPlayRecord> records) {
        if (list == null) {
            return null;
        }
        SimulatorAdPlayRecord simulatorAdPlayRecordFindCanPlayRecord = findCanPlayRecord(records);
        if (simulatorAdPlayRecordFindCanPlayRecord != null) {
            for (PlayCfgBean playCfgBean : list) {
                if (simulatorAdPlayRecordFindCanPlayRecord.typeOf(playCfgBean.getSdk_type())) {
                    return playCfgBean;
                }
            }
            return null;
        }
        for (PlayCfgBean playCfgBean2 : list) {
            if (findCanPlayRecord(records, playCfgBean2.getSdk_type()) == null) {
                return playCfgBean2;
            }
        }
        return null;
    }

    public PlayCfgBean getPlayCfgBean(List<PlayCfgBean> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }
}
