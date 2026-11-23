package com.byazt.ouz;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.haima.hmcp.proto.GSSDK;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 27, 117})
public class rl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, c> f18484c;
    public String tt;

    public rl(String str) {
        this.tt = str;
    }

    public void c(Map<String, c> map) {
        this.f18484c = map;
    }

    @NonNull
    public String toString() {
        if (this.f18484c == null) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, c> entry : this.f18484c.entrySet()) {
            c value = entry.getValue();
            JSONArray jSONArray = new JSONArray();
            if (value != null) {
                jSONArray.put(value.c());
                jSONArray.put(value.tt());
                try {
                    jSONObject.put(entry.getKey(), jSONArray);
                } catch (JSONException e10) {
                    com.byazt.nr.m.c(e10);
                }
            }
        }
        return jSONObject.toString();
    }

    public int tt(String str) {
        int iC = c(false);
        Map<String, c> map = this.f18484c;
        if (map != null && map.containsKey(str)) {
            c cVar = this.f18484c.get(str);
            iC = cVar != null ? iC + cVar.tt() : iC + 5000;
        }
        return iC + 5000;
    }

    public int c(String str) {
        int iC = c(true);
        Map<String, c> map = this.f18484c;
        if (map != null && map.containsKey(str)) {
            c cVar = this.f18484c.get(str);
            iC = cVar != null ? iC + cVar.c() : iC + 5000;
        }
        return iC + 5000;
    }

    @com.byazt.zqa.c(c = {0, 1, 27, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_CLEAR_VALUE})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18485c;
        public int tt;

        public c(int i10, int i11) {
            this.f18485c = i10;
            this.tt = i11;
        }

        public int c() {
            return this.f18485c;
        }

        public int tt() {
            return this.tt;
        }

        public c() {
        }
    }

    private int c(boolean z10) {
        float fHs;
        int iNe = 0;
        if (!com.byazt.omf.gt.tt().ix()) {
            return 0;
        }
        double d10 = 0.0d;
        try {
            String strC = com.byazt.whk.c.c().c("DeviceRate", "bytebench_value", this.tt);
            if (!TextUtils.isEmpty(strC)) {
                double d11 = Double.parseDouble(strC);
                if (d11 >= 0.0d) {
                    try {
                        if (d11 < com.byazt.omf.gt.tt().te()) {
                            iNe = 0 + com.byazt.omf.gt.tt().ne();
                        }
                    } catch (NumberFormatException e10) {
                        e = e10;
                        d10 = d11;
                        com.byazt.nr.m.c(e);
                    }
                }
                d10 = d11;
            }
        } catch (NumberFormatException e11) {
            e = e11;
        }
        try {
            int i10 = Integer.parseInt(com.byazt.whk.c.c().c("ugen_render", z10 ? "h5_render_success" : "native_render_success", this.tt));
            int i11 = Integer.parseInt(com.byazt.whk.c.c().c("ugen_render", z10 ? "h5_render_fail" : "native_render_fail", this.tt));
            int i12 = i10 + i11;
            float f10 = i12 > 0 ? (i11 / i12) * 100.0f : 0.0f;
            com.byazt.nr.m.c("RenderTimeoutControl", "successCount: " + i10 + "failCount: " + i11 + " errorRate: " + f10);
            if (z10) {
                fHs = com.byazt.omf.gt.tt().lz();
            } else {
                fHs = com.byazt.omf.gt.tt().hs();
            }
            if (f10 >= fHs) {
                iNe += com.byazt.omf.gt.tt().ne();
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isH5", z10);
            jSONObject.put("bytebenchScore", d10);
            jSONObject.put("successCount", i10);
            jSONObject.put("failCount", i11);
            jSONObject.put("errorRate", f10);
            jSONObject.put("result", iNe);
            com.byazt.ukr.yp.c().x(jSONObject);
        } catch (NumberFormatException | JSONException e12) {
            com.byazt.nr.m.c(e12);
        }
        return iNe;
    }

    public static rl c(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        rl rlVar = new rl(str2);
        try {
            JSONObject jSONObject = new JSONObject(str);
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(next);
                if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() == 2) {
                    map.put(next, new c(jSONArrayOptJSONArray.optInt(0), jSONArrayOptJSONArray.optInt(1)));
                }
            }
            rlVar.c(map);
        } catch (JSONException e10) {
            com.byazt.nr.m.c(e10);
        }
        return rlVar;
    }
}
