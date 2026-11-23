package com.windmill.sdk.common;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class WMReportInfo {
    String budget_ecpm;
    String budget_id;
    int budget_type;
    Map<String, String> extra;
    boolean isToBidWin;

    public WMReportInfo(int budget_type, String budget_id, String budget_ecpm, boolean isToBidWin) {
        this.budget_type = budget_type;
        this.budget_id = budget_id;
        this.budget_ecpm = budget_ecpm;
        this.isToBidWin = isToBidWin;
    }

    public void setExtra(Map<String, String> extra) {
        if (extra != null) {
            this.extra = new HashMap(extra);
        }
    }

    public String toString() {
        return "WMReportInfo{budget_type=" + this.budget_type + ", budget_id='" + this.budget_id + "', budget_ecpm='" + this.budget_ecpm + "', isToBidWin=" + this.isToBidWin + ", extra=" + this.extra + '}';
    }
}
