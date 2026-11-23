package com.tencent.stat;

/* JADX INFO: loaded from: classes2.dex */
public enum StatReportStrategy {
    INSTANT(1),
    ONLY_WIFI(2),
    BATCH(3),
    APP_LAUNCH(4),
    DEVELOPER(5),
    PERIOD(6),
    ONLY_WIFI_NO_CACHE(7);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f83805a;

    StatReportStrategy(int i10) {
        this.f83805a = i10;
    }

    public static StatReportStrategy getStatReportStrategy(int i10) {
        for (StatReportStrategy statReportStrategy : values()) {
            if (i10 == statReportStrategy.a()) {
                return statReportStrategy;
            }
        }
        return null;
    }

    public int a() {
        return this.f83805a;
    }
}
