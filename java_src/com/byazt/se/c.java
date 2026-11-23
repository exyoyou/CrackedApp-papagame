package com.byazt.se;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 671, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f19617c;
    public JSONObject uj;
    public String ve = "";
    public final com.byazt.co.c tt = new com.byazt.co.c();

    public c(Context context, JSONObject jSONObject) {
        this.f19617c = context;
        this.uj = jSONObject;
    }

    private String uj() {
        return this.ve;
    }

    public com.byazt.co.c c() {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String strTt = tt();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            this.tt.tt(strTt);
            this.tt.c(ve());
            this.tt.c(jCurrentTimeMillis2 - jCurrentTimeMillis);
            this.tt.ve(uj());
            this.tt.ve();
            if (this.uj.has("index")) {
                this.tt.c(this.uj.optInt("index"));
            }
            return this.tt;
        } catch (Exception e10) {
            com.byazt.tf.c.tt("__kite" + ve() + " doLoad# error " + e10.getMessage());
            return this.tt;
        }
    }

    public abstract String tt();

    public abstract String ve();
}
