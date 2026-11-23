package com.beizi.fusion.model;

import androidx.annotation.NonNull;
import com.haima.hmcp.widgets.BaseVideoView;
import com.join.mgps.activity.QuarkInstallAppActivity_;

/* JADX INFO: loaded from: classes6.dex */
public class FreqItem {

    @JsonNode(key = BaseVideoView.COMPONENT_TYPE)
    private int componentType;

    @JsonNode(key = "eventCode")
    private String eventCode;

    @JsonNode(key = "interval")
    private long interval = Long.MAX_VALUE;

    @JsonNode(key = QuarkInstallAppActivity_.COUNT_EXTRA)
    private int count = Integer.MAX_VALUE;

    public int getComponentType() {
        return this.componentType;
    }

    public int getCount() {
        return this.count;
    }

    public String getEventCode() {
        return this.eventCode;
    }

    public long getInterval() {
        return this.interval;
    }

    public void setComponentType(int i10) {
        this.componentType = i10;
    }

    public void setCount(int i10) {
        this.count = i10;
    }

    public void setEventCode(String str) {
        this.eventCode = str;
    }

    public void setInterval(long j10) {
        this.interval = j10;
    }

    @NonNull
    public String toString() {
        return "FreqItem{interval=" + this.interval + ", count=" + this.count + ", eventCode='" + this.eventCode + "', componentType=" + this.componentType + '}';
    }
}
