package com.byazt.jz;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.mg.m;
import com.byazt.uy.x;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 232, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile c f16029c;
    public volatile Context tt;

    private c(@NonNull Context context) {
        this.tt = context;
    }

    public static c c() {
        if (f16029c == null) {
            f16029c = new c(x.uj());
        }
        return f16029c;
    }

    public void tt(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() <= 0) {
            return;
        }
        try {
            String strC = tt.c(x.c().c());
            String strC2 = com.byazt.mg.uj.c(com.byazt.mg.x.c(this.tt), com.byazt.mg.x.tt(), strC, jSONObject, tt.tt());
            jSONObject.put("upload_scene", "direct");
            if (tt.c(strC, jSONObject.toString()).c()) {
                com.byazt.mg.uj.c(strC2);
            }
        } catch (Throwable unused) {
        }
    }

    public void ve(final JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            return;
        }
        m.c(new Runnable() { // from class: com.byazt.jz.c.1
            @Override // java.lang.Runnable
            public void run() {
                String strC = tt.c(x.c().c());
                try {
                    jSONObject.put("upload_scene", "direct");
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                }
                tt.c(strC, jSONObject.toString());
            }
        });
    }

    @Nullable
    public String c(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.length() > 0) {
            try {
                return com.byazt.mg.uj.c(com.byazt.mg.x.c(this.tt), com.byazt.mg.x.c(), tt.c(x.c().c()), jSONObject, tt.c());
            } catch (Throwable unused) {
            }
        }
        return null;
    }
}
