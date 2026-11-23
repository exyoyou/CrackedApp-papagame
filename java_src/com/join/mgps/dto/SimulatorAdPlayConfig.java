package com.join.mgps.dto;

import java.util.Calendar;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorAdPlayConfig extends BaseBean {
    private long record_time;
    private List<SimulatorAdPlayRecord> simulator_fc_cfg;
    private List<SimulatorAdPlayRecord> simulator_gba_cfg;
    private List<SimulatorAdPlayRecord> simulator_gold_finger_cfg;
    private List<SimulatorAdPlayRecord> simulator_jj_cfg;
    private List<SimulatorAdPlayRecord> simulator_psp_cfg;

    public SimulatorAdPlayRecord getPlayConfig(List<SimulatorAdPlayRecord> list) {
        if (list != null) {
            for (SimulatorAdPlayRecord simulatorAdPlayRecord : list) {
                if (simulatorAdPlayRecord.canPlay()) {
                    return simulatorAdPlayRecord;
                }
            }
        }
        return null;
    }

    public long getRecord_time() {
        return this.record_time;
    }

    public List<SimulatorAdPlayRecord> getSimulator_fc_cfg() {
        return this.simulator_fc_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_gba_cfg() {
        return this.simulator_gba_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_gold_finger_cfg() {
        return this.simulator_gold_finger_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_jj_cfg() {
        return this.simulator_jj_cfg;
    }

    public List<SimulatorAdPlayRecord> getSimulator_psp_cfg() {
        return this.simulator_psp_cfg;
    }

    public boolean needReset() {
        return this.record_time != ((long) Calendar.getInstance().get(6));
    }

    public void setRecord_time(long record_time) {
        this.record_time = record_time;
    }

    public void setSimulator_fc_cfg(List<SimulatorAdPlayRecord> simulator_fc_cfg) {
        this.simulator_fc_cfg = simulator_fc_cfg;
    }

    public void setSimulator_gba_cfg(List<SimulatorAdPlayRecord> simulator_gba_cfg) {
        this.simulator_gba_cfg = simulator_gba_cfg;
    }

    public void setSimulator_gold_finger_cfg(List<SimulatorAdPlayRecord> simulator_gold_finger_cfg) {
        this.simulator_gold_finger_cfg = simulator_gold_finger_cfg;
    }

    public void setSimulator_jj_cfg(List<SimulatorAdPlayRecord> simulator_jj_cfg) {
        this.simulator_jj_cfg = simulator_jj_cfg;
    }

    public void setSimulator_psp_cfg(List<SimulatorAdPlayRecord> simulator_psp_cfg) {
        this.simulator_psp_cfg = simulator_psp_cfg;
    }

    public SimulatorAdPlayRecord getPlayConfig(List<SimulatorAdPlayRecord> list, int adType) {
        if (list != null) {
            for (SimulatorAdPlayRecord simulatorAdPlayRecord : list) {
                if (simulatorAdPlayRecord.typeOf(adType)) {
                    return simulatorAdPlayRecord;
                }
            }
        }
        return null;
    }
}
