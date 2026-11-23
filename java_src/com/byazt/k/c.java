package com.byazt.k;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.byazt.nr.m;
import com.byazt.t.DownloadInfo;
import com.byazt.w.x;
import com.byazt.zz.Downloader;
import com.byazt.zz.ve;
import com.join.mgps.Util.v0;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 981, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f16087a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static Boolean f16089n;
    public static c sp;
    public static JSONObject uj;
    public static JSONObject ve;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Boolean f16090da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final JSONObject f16091i;
    public int sl;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final JSONObject f16092x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final x<Integer, c> f16088c = new x<>(16, 16);
    public static final c tt = new c(null);

    static {
        c();
    }

    private c(JSONObject jSONObject) {
        Boolean bool;
        this.f16092x = jSONObject;
        JSONObject jSONObject2 = null;
        boolValueOf = null;
        boolValueOf = null;
        Boolean boolValueOf = null;
        if (jSONObject == null || a("bugfix")) {
            bool = null;
        } else {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("bugfix");
            if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.has(v0.f50057a) && !a(v0.f50057a)) {
                boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject.optInt(v0.f50057a, 0) == 1);
            }
            Boolean bool2 = boolValueOf;
            jSONObject2 = jSONObjectOptJSONObject;
            bool = bool2;
        }
        this.f16091i = jSONObject2;
        this.f16090da = bool;
    }

    public static boolean a(String str) {
        JSONObject jSONObject = ve;
        return jSONObject != null && jSONObject.optInt(str, 0) == 1;
    }

    public static void c() {
        Boolean boolValueOf;
        JSONObject jSONObjectZb = ve.zb();
        f16087a = jSONObjectZb.optInt("disable_task_setting", 0) == 1;
        ve = jSONObjectZb.optJSONObject("disabled_task_keys");
        JSONObject jSONObjectOptJSONObject = jSONObjectZb.optJSONObject("bugfix");
        if (jSONObjectOptJSONObject == null || !jSONObjectOptJSONObject.has(v0.f50057a)) {
            boolValueOf = null;
        } else {
            boolValueOf = Boolean.valueOf(jSONObjectOptJSONObject.optInt(v0.f50057a, 0) == 1);
        }
        uj = jSONObjectOptJSONObject;
        f16089n = boolValueOf;
    }

    @NonNull
    public static JSONObject tt() {
        return ve.zb();
    }

    @NonNull
    public static c ve() {
        return tt;
    }

    public JSONArray n(String str) {
        JSONObject jSONObject = this.f16092x;
        return (jSONObject == null || !jSONObject.has(str) || a(str)) ? tt().optJSONArray(str) : this.f16092x.optJSONArray(str);
    }

    public JSONObject uj(String str) {
        JSONObject jSONObject = this.f16092x;
        return (jSONObject == null || !jSONObject.has(str) || a(str)) ? tt().optJSONObject(str) : this.f16092x.optJSONObject(str);
    }

    public boolean tt(String str, boolean z10) {
        if (this.f16091i != null && !a(str)) {
            if (this.f16091i.has(str)) {
                return this.f16091i.optInt(str, z10 ? 1 : 0) == 1;
            }
            Boolean bool = this.f16090da;
            if (bool != null) {
                return bool.booleanValue();
            }
        }
        JSONObject jSONObject = uj;
        if (jSONObject != null) {
            if (jSONObject.has(str)) {
                return uj.optInt(str, z10 ? 1 : 0) == 1;
            }
            Boolean bool2 = f16089n;
            if (bool2 != null) {
                return bool2.booleanValue();
            }
        }
        return z10;
    }

    public String ve(String str) {
        return c(str, "");
    }

    private static c ve(int i10) {
        DownloadInfo downloadInfo;
        if (f16087a) {
            return tt;
        }
        Context contextIc = ve.ic();
        if (contextIc != null && (downloadInfo = Downloader.getInstance(contextIc).getDownloadInfo(i10)) != null) {
            return tt(downloadInfo);
        }
        return tt;
    }

    public static void c(String str, boolean z10) {
        try {
            if (uj == null) {
                uj = new JSONObject();
            }
            uj.put(str, z10 ? 1 : 0);
        } catch (JSONException unused) {
        }
    }

    @NonNull
    public static c c(int i10) {
        return c(i10, (DownloadInfo) null);
    }

    public int tt(String str) {
        return c(str, 0);
    }

    @NonNull
    public static c c(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return tt;
        }
        return c(downloadInfo.getId(), downloadInfo);
    }

    public static void tt(int i10) {
        c cVar = sp;
        if (cVar != null && cVar.sl == i10) {
            sp = null;
        }
        x<Integer, c> xVar = f16088c;
        synchronized (xVar) {
            xVar.remove(Integer.valueOf(i10));
        }
    }

    private static c c(int i10, DownloadInfo downloadInfo) {
        c cVarVe;
        c cVar = sp;
        if (cVar != null && cVar.sl == i10) {
            return cVar;
        }
        x<Integer, c> xVar = f16088c;
        synchronized (xVar) {
            cVarVe = xVar.get(Integer.valueOf(i10));
        }
        if (cVarVe == null) {
            cVarVe = downloadInfo == null ? ve(i10) : tt(downloadInfo);
            synchronized (xVar) {
                xVar.put(Integer.valueOf(i10), cVarVe);
            }
        }
        cVarVe.sl = i10;
        sp = cVarVe;
        return cVarVe;
    }

    private static c tt(DownloadInfo downloadInfo) {
        if (f16087a) {
            return tt;
        }
        try {
            String downloadSettingString = downloadInfo.getDownloadSettingString();
            if (!TextUtils.isEmpty(downloadSettingString)) {
                return new c(new JSONObject(downloadSettingString));
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return tt;
    }

    public boolean c(String str) {
        return tt(str, false);
    }

    public int c(String str, int i10) {
        JSONObject jSONObject = this.f16092x;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f16092x.optInt(str, i10);
        }
        return tt().optInt(str, i10);
    }

    public long c(String str, long j10) {
        JSONObject jSONObject = this.f16092x;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f16092x.optLong(str, j10);
        }
        return tt().optLong(str, j10);
    }

    public double c(String str, double d10) {
        JSONObject jSONObject = this.f16092x;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f16092x.optDouble(str, d10);
        }
        return tt().optDouble(str, d10);
    }

    public String c(String str, String str2) {
        JSONObject jSONObject = this.f16092x;
        if (jSONObject != null && jSONObject.has(str) && !a(str)) {
            return this.f16092x.optString(str, str2);
        }
        return tt().optString(str, str2);
    }

    @NonNull
    public static c c(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject != tt() && !f16087a) {
            c cVar = sp;
            if (cVar != null && cVar.f16092x == jSONObject) {
                return cVar;
            }
            x<Integer, c> xVar = f16088c;
            synchronized (xVar) {
                for (c cVar2 : xVar.values()) {
                    if (cVar2.f16092x == jSONObject) {
                        sp = cVar2;
                        return cVar2;
                    }
                }
                c cVar3 = new c(jSONObject);
                sp = cVar3;
                return cVar3;
            }
        }
        return tt;
    }

    public static void c(int i10, JSONObject jSONObject) {
        c next;
        if (jSONObject == null || jSONObject == tt() || f16087a) {
            return;
        }
        x<Integer, c> xVar = f16088c;
        synchronized (xVar) {
            c cVar = sp;
            if (cVar != null && cVar.f16092x == jSONObject) {
                cVar.sl = i10;
            } else {
                Iterator<c> it2 = xVar.values().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    if (next.f16092x == jSONObject) {
                        next.sl = i10;
                        break;
                    }
                }
                if (next == null) {
                    cVar = new c(jSONObject);
                    cVar.sl = i10;
                } else {
                    cVar = next;
                }
                sp = cVar;
            }
            f16088c.put(Integer.valueOf(i10), cVar);
        }
    }
}
