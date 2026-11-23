package com.byazt.ddx;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 13})
public class tt implements com.byazt.whk.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static tt f12799c;

    private tt() {
    }

    @Override // com.byazt.whk.tt
    public String c(String str, String str2) {
        return "";
    }

    @Override // com.byazt.whk.tt
    public String tt() {
        return "AdEventCollector";
    }

    @Override // com.byazt.whk.tt
    public void c(String str, String str2, String str3) {
    }

    public static synchronized tt c() {
        if (f12799c == null) {
            f12799c = new tt();
        }
        return f12799c;
    }
}
