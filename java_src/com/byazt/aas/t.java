package com.byazt.aas;

import android.content.Intent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 66})
public class t {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile t f11478c;
    public com.byazt.iy.n tt;

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.iy.n tt() {
        if (this.tt == null) {
            this.tt = eo.c("hide_recent_activity_recorder");
        }
        return this.tt;
    }

    public static t c() {
        if (f11478c == null) {
            synchronized (t.class) {
                if (f11478c == null) {
                    f11478c = new t();
                }
            }
        }
        return f11478c;
    }

    public void c(Intent intent) {
        if (intent == null) {
            return;
        }
        final boolean z10 = (intent.getFlags() & 8388608) == 8388608;
        com.byazt.nr.da.c().post(new Runnable() { // from class: com.byazt.aas.t.1
            @Override // java.lang.Runnable
            public void run() {
                int i10 = 0;
                int i11 = t.this.tt().get("all_activity_count", 0) + 1;
                if (z10) {
                    int i12 = t.this.tt().get("hide_activity_count", 0) + 1;
                    if (i12 >= 10) {
                        t.this.c(i11);
                        i11 = 0;
                    } else {
                        i10 = i12;
                    }
                    t.this.tt().put("hide_activity_count", i10);
                }
                t.this.tt().put("all_activity_count", i11);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final int i10) {
        try {
            com.byazt.ukr.yp.c().tt(new com.byazt.ee.c() { // from class: com.byazt.aas.t.2
                @Override // com.byazt.ee.c
                public com.byazt.qal.c c() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ac", i10);
                    return com.byazt.qal.tt.tt().c("hide_activity_record").tt(jSONObject.toString());
                }
            }, "hide_activity_record");
        } catch (Throwable unused) {
        }
    }
}
