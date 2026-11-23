package com.byazt.hn;

import android.content.Context;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.baidu.mobads.sdk.api.IAdInterListener;
import com.byazt.cd.x;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.Database.SQLiteMTAHelper;
import com.papa91.common.BaseAppConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 25, 13})
public final class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ve f14986c;
    public final List<uj> tt;

    @com.byazt.zqa.c(c = {0, 1, 25, 194})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f14987c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f14988n;
        public final int tt;
        public final float uj;
        public final float ve;

        private c(String str, float f10, float f11, int i10) {
            this.f14987c = str;
            this.tt = tt.ve(str);
            this.ve = f10;
            this.uj = f11;
            this.f14988n = i10;
        }

        public static c c(Context context, JSONObject jSONObject) {
            return jSONObject == null ? new c("circle", x.c(context, 6.0f), x.c(context, 6.0f), -1) : new c(jSONObject.optString("shape", "circle"), x.c(context, (float) jSONObject.optDouble("width", 6.0d)), x.c(context, (float) jSONObject.optDouble("height", 6.0d)), com.byazt.cd.c.c(jSONObject.optString(TypedValues.Custom.S_COLOR, "#FFFFFF"), -1));
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 25, 1886})
    public static final class uj {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f14990a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f14991c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public final float f14992da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final float f14993i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final float f14994n;
        public final float sl;
        public final float sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final c f14995t;
        public final float tt;
        public final float uj;
        public final float ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final float f14996x;

        private uj(String str, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, c cVar) {
            this.f14991c = str;
            this.tt = f10;
            this.ve = f11;
            this.uj = f12;
            this.f14994n = f13;
            this.f14990a = f14;
            this.sp = f15;
            this.f14996x = f16;
            this.f14993i = f17;
            this.f14992da = f18;
            this.sl = f19;
            this.f14995t = cVar;
        }

        public static uj c(Context context, JSONObject jSONObject) {
            return new uj(jSONObject.optString("name", ""), (float) jSONObject.optDouble("birthRate", 1.0d), (float) jSONObject.optDouble("lifetime", 1.0d), (float) jSONObject.optDouble("lifetimeRange", 0.0d), (float) jSONObject.optDouble("scale", 1.0d), (float) jSONObject.optDouble("scaleRange", 0.0d), (float) jSONObject.optDouble("velocity", 0.0d), (float) jSONObject.optDouble("velocityRange", 0.0d), (float) jSONObject.optDouble("emissionRange", 0.0d), (float) jSONObject.optDouble("alphaRange", 0.0d), (float) jSONObject.optDouble("alphaSpeed", 0.0d), c.c(context, jSONObject.optJSONObject("content")));
        }
    }

    private tt(ve veVar, List<uj> list) {
        this.f14986c = veVar;
        this.tt = list;
    }

    public static int c(String str) {
        if ("line".equals(str)) {
            return 1;
        }
        if ("rectangle".equals(str)) {
            return 2;
        }
        if ("circle".equals(str)) {
            return 3;
        }
        return "sphere".equals(str) ? 4 : 0;
    }

    public static int tt(String str) {
        if ("outline".equals(str)) {
            return 1;
        }
        return "surface".equals(str) ? 2 : 0;
    }

    public static int uj(String str) {
        if ("additive".equals(str)) {
            return 1;
        }
        if ("backToFront".equals(str) || "oldestFirst".equals(str)) {
            return 3;
        }
        return "oldestLast".equals(str) ? 4 : 0;
    }

    public static int ve(String str) {
        if ("rect".equals(str)) {
            return 1;
        }
        return "star".equals(str) ? 2 : 0;
    }

    public List<uj> tt() {
        return this.tt;
    }

    public boolean ve() {
        List<uj> list = this.tt;
        return (list == null || list.isEmpty()) ? false : true;
    }

    public ve c() {
        return this.f14986c;
    }

    public static tt c(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return c(context, new JSONObject(str));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: com.byazt.hn.tt$tt, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 25, MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA})
    public static final class C0329tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f14989c;
        public final boolean tt;

        public C0329tt(float f10, boolean z10) {
            this.f14989c = f10;
            this.tt = z10;
        }

        public static C0329tt c(Object obj, C0329tt c0329tt) {
            if (obj == null) {
                return c0329tt;
            }
            if (obj instanceof Number) {
                return new C0329tt(((Number) obj).floatValue(), false);
            }
            String strTrim = obj.toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                return c0329tt;
            }
            try {
                return strTrim.endsWith("%") ? new C0329tt(Float.parseFloat(strTrim.substring(0, strTrim.length() - 1)) / 100.0f, true) : new C0329tt(Float.parseFloat(strTrim), false);
            } catch (NumberFormatException unused) {
                return c0329tt;
            }
        }

        public float c(float f10) {
            return this.tt ? f10 * this.f14989c : this.f14989c;
        }
    }

    public static tt c(Context context, JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ve veVarC = ve.c(jSONObject.optJSONObject("layer"));
        List<uj> listC = c(context, jSONObject.optJSONArray("particles"));
        if (listC.isEmpty()) {
            return null;
        }
        return new tt(veVarC, listC);
    }

    @com.byazt.zqa.c(c = {0, 1, 25, 519})
    public static final class ve {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14997a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f14998c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public final C0329tt f14999da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final C0329tt f15000i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final int f15001n;
        public final C0329tt sp;
        public final String tt;
        public final int uj;
        public final String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final C0329tt f15002x;

        private ve(String str, String str2, String str3, C0329tt c0329tt, C0329tt c0329tt2, C0329tt c0329tt3, C0329tt c0329tt4) {
            this.f14998c = str;
            this.tt = str2;
            this.ve = str3;
            this.uj = tt.c(str);
            this.f15001n = tt.tt(str2);
            this.f14997a = tt.uj(str3);
            this.sp = c0329tt;
            this.f15002x = c0329tt2;
            this.f15000i = c0329tt3;
            this.f14999da = c0329tt4;
        }

        public static ve c(JSONObject jSONObject) {
            if (jSONObject == null) {
                return c();
            }
            String strOptString = jSONObject.optString("emitterShape", SQLiteMTAHelper.TABLE_POINT);
            String strOptString2 = jSONObject.optString("emitterMode", "points");
            String strOptString3 = jSONObject.optString(BaseAppConfig.PREF_RENDER_MODE, "unordered");
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("emitterPosition");
            C0329tt c0329ttC = C0329tt.c(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.opt("x") : null, new C0329tt(0.5f, true));
            C0329tt c0329ttC2 = C0329tt.c(jSONObjectOptJSONObject != null ? jSONObjectOptJSONObject.opt("y") : null, new C0329tt(0.0f, true));
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("emitterSize");
            return new ve(strOptString, strOptString2, strOptString3, c0329ttC, c0329ttC2, C0329tt.c(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.opt(IAdInterListener.AdReqParam.WIDTH) : null, new C0329tt(1.0f, true)), C0329tt.c(jSONObjectOptJSONObject2 != null ? jSONObjectOptJSONObject2.opt("h") : null, new C0329tt(1.0f, true)));
        }

        private static ve c() {
            return new ve(SQLiteMTAHelper.TABLE_POINT, "points", "unordered", new C0329tt(0.5f, true), new C0329tt(0.0f, true), new C0329tt(1.0f, true), new C0329tt(1.0f, true));
        }
    }

    private static List<uj> c(Context context, JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(uj.c(context, jSONObjectOptJSONObject));
                }
            }
            return arrayList;
        }
        return Collections.emptyList();
    }
}
