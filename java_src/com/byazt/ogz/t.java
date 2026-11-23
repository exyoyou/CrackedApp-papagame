package com.byazt.ogz;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1190, 66})
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17842a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17843c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f17844i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f17845n;
    public int sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f17846x;

    private boolean c(int i10, int i11) {
        return (i10 & i11) == i11;
    }

    private int uj(int i10) {
        switch (i10) {
            case 1:
                return this.f17843c;
            case 2:
            case 6:
            default:
                return 0;
            case 3:
            case 4:
                return this.tt;
            case 5:
                return this.uj;
            case 7:
                return this.ve;
            case 8:
            case 10:
                return this.f17842a;
            case 9:
                return this.f17845n;
        }
    }

    @NonNull
    public String toString() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("banner", this.f17843c);
            jSONObject.put(MediationConstant.RIT_TYPE_SPLASH, this.tt);
            jSONObject.put("rewarded", this.ve);
            jSONObject.put("feed", this.uj);
            jSONObject.put(MediationConstant.RIT_TYPE_DRAW, this.f17845n);
            jSONObject.put("full_screen", this.f17842a);
            jSONObject.put("slide_move_max_num", this.sp);
            jSONObject.put("motion_max_num", this.f17846x);
            jSONObject.put("sensor_interval", this.f17844i);
            return jSONObject.toString();
        } catch (Throwable unused) {
            return super.toString();
        }
    }

    public boolean tt(int i10) {
        return c(uj(i10), 1);
    }

    public boolean ve(int i10) {
        return c(uj(i10), 4);
    }

    public static t c(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        t tVar = new t();
        try {
            JSONObject jSONObject = new JSONObject(str);
            tVar.f17843c = jSONObject.optInt("banner");
            tVar.tt = jSONObject.optInt(MediationConstant.RIT_TYPE_SPLASH);
            tVar.ve = jSONObject.optInt("rewarded");
            tVar.uj = jSONObject.optInt("feed");
            tVar.f17845n = jSONObject.optInt(MediationConstant.RIT_TYPE_DRAW);
            tVar.f17842a = jSONObject.optInt("full_screen");
            tVar.sp = jSONObject.optInt("slide_move_max_num", 5);
            tVar.f17846x = jSONObject.optInt("motion_max_num", 300);
            tVar.f17844i = jSONObject.optInt("sensor_interval", 3);
        } catch (Throwable unused) {
        }
        return tVar;
    }

    public int tt() {
        return this.f17846x;
    }

    public int ve() {
        int i10 = this.f17844i;
        if (i10 < 0 || i10 > 3) {
            return 3;
        }
        return i10;
    }

    public boolean c(int i10) {
        return c(uj(i10), 2);
    }

    public int c() {
        return this.sp;
    }
}
