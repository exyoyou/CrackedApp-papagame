package com.byazt.jb;

/* JADX INFO: loaded from: classes6.dex */
public enum tt {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    REFUSED_STREAM(7),
    CANCEL(8);

    public final int sp;

    tt(int i10) {
        this.sp = i10;
    }

    public static tt c(int i10) {
        try {
            for (tt ttVar : values()) {
                if (ttVar.sp == i10) {
                    return ttVar;
                }
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }
}
