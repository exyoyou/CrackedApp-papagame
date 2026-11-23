package com.byazt.sz;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.webrtc.haima.HmDataChannelManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f20013a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f20014c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public long f20015n;
    public float tt;
    public long uj;
    public List<C0435c> ve;

    /* JADX INFO: renamed from: com.byazt.sz.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SUB, 44})
    public static class C0435c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f20016a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f20017c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public String f20018da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f20019i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f20020n;
        public float sp;
        public float tt;
        public long uj;
        public String ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float[] f20021x;

        public float a() {
            return this.sp;
        }

        public long c() {
            return this.f20017c;
        }

        public String getType() {
            return this.f20020n;
        }

        public String i() {
            return this.f20018da;
        }

        public float n() {
            return this.f20016a;
        }

        public float[] sp() {
            return this.f20021x;
        }

        public float tt() {
            return this.tt;
        }

        public long uj() {
            return this.uj;
        }

        public String ve() {
            return this.ve;
        }

        public String x() {
            return this.f20019i;
        }

        public void c(long j10) {
            this.f20017c = j10;
        }

        public void tt(long j10) {
            this.uj = j10;
        }

        public void uj(String str) {
            this.f20019i = str;
        }

        public void ve(float f10) {
            this.sp = f10;
        }

        public void c(float f10) {
            this.tt = f10;
        }

        public void tt(String str) {
            this.f20020n = str;
        }

        public void ve(String str) {
            this.f20018da = str;
        }

        public void c(String str) {
            this.ve = str;
        }

        public void tt(float f10) {
            this.f20016a = f10;
        }

        public void c(float[] fArr) {
            this.f20021x = fArr;
        }

        public static C0435c c(JSONObject jSONObject, com.byazt.xj.ve veVar) {
            if (jSONObject == null) {
                return null;
            }
            C0435c c0435c = new C0435c();
            c0435c.c(jSONObject.optLong("duration"));
            String strOptString = jSONObject.optString("loop");
            if (TextUtils.equals("infinite", strOptString)) {
                c0435c.c(-1.0f);
            } else {
                try {
                    c0435c.c(Float.parseFloat(strOptString));
                } catch (NumberFormatException unused) {
                    c0435c.c(0.0f);
                }
            }
            c0435c.c(jSONObject.optString("loopMode"));
            c0435c.tt(jSONObject.optString("type"));
            if (TextUtils.equals(c0435c.getType(), "ripple")) {
                c0435c.ve(jSONObject.optString("rippleColor"));
            }
            View viewI = veVar.i();
            Context context = viewI != null ? viewI.getContext() : null;
            if (TextUtils.equals(c0435c.getType(), "backgroundColor")) {
                String strC = com.byazt.wj.tt.c(jSONObject.optString("valueTo"), veVar.da());
                int iC = com.byazt.cd.c.c(jSONObject.optString("valueFrom"));
                int iC2 = com.byazt.cd.c.c(strC);
                c0435c.tt(iC);
                c0435c.ve(iC2);
            } else if ((TextUtils.equals(c0435c.getType(), "translateX") || TextUtils.equals(c0435c.getType(), "translateY")) && context != null) {
                try {
                    float fC = com.byazt.cd.x.c(context, (float) jSONObject.optDouble("valueFrom"));
                    float fC2 = com.byazt.cd.x.c(context, (float) jSONObject.optDouble("valueTo"));
                    c0435c.tt(fC);
                    c0435c.ve(fC2);
                } catch (Exception unused2) {
                    com.byazt.nr.m.uj("animation", "animation ");
                }
            } else {
                c0435c.tt((float) jSONObject.optDouble("valueFrom"));
                c0435c.ve((float) jSONObject.optDouble("valueTo"));
            }
            c0435c.uj(jSONObject.optString("interpolator"));
            c0435c.tt(com.byazt.cd.ve.c(com.byazt.wj.tt.c(jSONObject.optString("startDelay"), veVar.da()), 0L));
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(HmDataChannelManager.BEHAVIOR_VALUE);
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                float[] fArr = new float[jSONArrayOptJSONArray.length()];
                int i10 = 0;
                if ((TextUtils.equals(c0435c.getType(), "translateX") || TextUtils.equals(c0435c.getType(), "translateY")) && context != null) {
                    while (i10 < jSONArrayOptJSONArray.length()) {
                        fArr[i10] = com.byazt.cd.x.c(context, (float) c.c(jSONArrayOptJSONArray.optString(i10), veVar.da()));
                        i10++;
                    }
                } else {
                    while (i10 < jSONArrayOptJSONArray.length()) {
                        fArr[i10] = (float) c.c(jSONArrayOptJSONArray.optString(i10), veVar.da());
                        i10++;
                    }
                }
                c0435c.c(fArr);
            }
            return c0435c;
        }
    }

    public String a() {
        return this.f20013a;
    }

    public String c() {
        return this.f20014c;
    }

    public long n() {
        return this.f20015n;
    }

    public float tt() {
        return this.tt;
    }

    public long uj() {
        return this.uj;
    }

    public List<C0435c> ve() {
        return this.ve;
    }

    public void c(String str) {
        this.f20014c = str;
    }

    public void tt(long j10) {
        this.f20015n = j10;
    }

    public void c(float f10) {
        this.tt = f10;
    }

    public void tt(String str) {
        this.f20013a = str;
    }

    public void c(List<C0435c> list) {
        this.ve = list;
    }

    public void c(long j10) {
        this.uj = j10;
    }

    public static c c(String str, com.byazt.xj.ve veVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return c(new JSONObject(str), veVar);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
            return null;
        }
    }

    public static c c(JSONObject jSONObject, com.byazt.xj.ve veVar) {
        return c(jSONObject, null, veVar);
    }

    public static c c(JSONObject jSONObject, JSONObject jSONObject2, com.byazt.xj.ve veVar) {
        if (jSONObject == null) {
            return null;
        }
        c cVar = new c();
        cVar.c(jSONObject.optString("ordering"));
        String strOptString = jSONObject.optString("loop");
        if (TextUtils.equals("infinite", strOptString)) {
            cVar.c(-1.0f);
        } else {
            try {
                cVar.c(Float.parseFloat(strOptString));
            } catch (NumberFormatException unused) {
                cVar.c(0.0f);
            }
        }
        cVar.c(jSONObject.optLong("duration", 0L));
        cVar.tt(com.byazt.cd.ve.c(com.byazt.wj.tt.c(jSONObject.optString("startDelay"), veVar.da()), 0L));
        cVar.tt(jSONObject.optString("loopMode"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("animators");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i10);
                if (jSONObject2 != null) {
                    com.byazt.cd.tt.c(jSONObject2, jSONObjectOptJSONObject);
                }
                arrayList.add(C0435c.c(jSONObjectOptJSONObject, veVar));
            }
            cVar.c(arrayList);
        }
        return cVar;
    }

    public static double c(Object obj, JSONObject jSONObject) {
        if (obj instanceof String) {
            return com.byazt.cd.ve.c(com.byazt.wj.tt.c((String) obj, jSONObject), 0.0d);
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Long) {
            return ((Double) obj).doubleValue();
        }
        if (obj instanceof Integer) {
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }
}
