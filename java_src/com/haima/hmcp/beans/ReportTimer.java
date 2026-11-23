package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class ReportTimer implements Serializable {
    private static final long serialVersionUID = 1;
    public String action;
    public long duration;
    public boolean isRepeat;
    public String timerId;
    public String timerKey;

    public enum Action {
        CREATE("create"),
        EXECUTE("execute"),
        CANCEL("cancel");

        private String action;

        Action(String str) {
            this.action = str;
        }
    }

    public ReportTimer(String str, String str2, long j10, boolean z10, Action action) {
        this.timerKey = str;
        this.timerId = str2;
        this.duration = j10;
        this.isRepeat = z10;
        this.action = action.action.intern();
    }
}
