package com.byazt.ds;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.quv.AbsServerManager;
import com.join.mgps.activity.BuildQRCodeActivity_;
import com.sigmob.sdk.base.mta.PointParamKey;
import com.tencent.stat.DeviceInfo;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1480, 42})
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f13145a = {"channel", AbsServerManager.PACKAGE_QUERY_BINDER, "app_version"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f13146c;
    public final SharedPreferences sp;
    public final Context tt;
    public final x ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final ArrayList<ve> f13147n = new ArrayList<>(32);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13148x = 0;

    @NonNull
    public JSONObject uj = new JSONObject();

    public i(Context context, x xVar) {
        this.tt = context;
        this.ve = xVar;
        this.sp = xVar.n();
        if (com.byazt.gj.c.tt) {
            com.byazt.vm.sp.c(context);
        }
    }

    @NonNull
    private JSONObject z() {
        return this.uj;
    }

    public boolean a() {
        synchronized (this.f13147n) {
            if (this.f13147n.size() == 0) {
                this.f13147n.add(new uj(this.tt, this.ve));
                this.f13147n.add(new a(this.tt));
                this.f13147n.add(new sp(this.tt, this.ve));
                this.f13147n.add(new da(this.tt));
                this.f13147n.add(new sl(this.tt));
                this.f13147n.add(new t(this.tt, this.ve));
                this.f13147n.add(new u(this.tt));
                this.f13147n.add(new z(this.tt, this.ve));
                this.f13147n.add(new m(this.tt, this.ve));
                this.f13147n.add(new nu());
                this.f13147n.add(new rh(this.ve));
                this.f13147n.add(new my(this.tt));
                this.f13147n.add(new gt(this.tt));
                this.f13147n.add(new rl(this.tt, this.ve));
                this.f13147n.add(new c(this.tt, this.ve));
                this.f13147n.add(new yp(this.tt, this.ve));
                this.f13147n.add(new n(this.tt, this.ve));
            }
        }
        JSONObject jSONObjectZ = z();
        JSONObject jSONObject = new JSONObject();
        com.byazt.yv.u.ve(jSONObject, jSONObjectZ);
        boolean z10 = true;
        int i10 = 0;
        int i11 = 0;
        for (ve veVar : this.f13147n) {
            if (!veVar.f13165c || veVar.ve || c(veVar)) {
                try {
                    veVar.f13165c = veVar.c(jSONObject);
                } catch (SecurityException e10) {
                    if (!veVar.tt) {
                        i10++;
                        com.byazt.yv.da.tt("loadHeader, " + this.f13148x, e10);
                        if (!veVar.f13165c && this.f13148x > 10) {
                            veVar.f13165c = true;
                        }
                    }
                } catch (JSONException e11) {
                    com.byazt.yv.da.tt(e11);
                }
                if (!veVar.f13165c && !veVar.tt) {
                    i11++;
                }
            }
            z10 &= veVar.f13165c || veVar.tt;
        }
        if (z10) {
            for (String str : f13145a) {
                z10 &= !TextUtils.isEmpty(jSONObject.optString(str));
            }
            String strOptString = jSONObject.optString("user_unique_id", null);
            if (!TextUtils.isEmpty(strOptString)) {
                try {
                    jSONObject.put("user_unique_id", strOptString);
                } catch (JSONException unused) {
                }
            }
        }
        this.uj = jSONObject;
        this.f13146c = z10;
        if (com.byazt.yv.da.tt) {
            com.byazt.yv.da.c("loadHeader, " + this.f13146c + ", " + this.f13148x + ", " + this.uj.toString(), null);
        } else {
            com.byazt.yv.da.uj("loadHeader, " + this.f13146c + ", " + this.f13148x, null);
        }
        if (i10 > 0 && i10 == i11) {
            this.f13148x++;
            if (t() != 0) {
                this.f13148x += 10;
            }
        }
        if (this.f13146c) {
            com.byazt.gj.c.t().c(sp(), i(), da());
        }
        return this.f13146c;
    }

    @Nullable
    public JSONObject c() {
        if (this.f13146c) {
            return z();
        }
        return null;
    }

    public String da() {
        return z().optString(BuildQRCodeActivity_.SSID_EXTRA, "");
    }

    public String i() {
        return z().optString("install_id", "");
    }

    public void n() {
        try {
            new yp(this.tt, this.ve).c(this.uj);
        } catch (Exception e10) {
            com.byazt.nr.m.ve("od", "e:" + e10.getMessage(), e10);
        }
    }

    public String sl() {
        return z().optString("user_unique_id", "");
    }

    public String sp() {
        return z().optString("device_id", "");
    }

    public int t() {
        String strOptString = z().optString("device_id", "");
        z().optString("install_id", "");
        if (tt(strOptString)) {
            return this.sp.getInt("version_code", 0) == z().optInt("version_code", -1) ? 1 : 2;
        }
        return 0;
    }

    public int tt() {
        int iOptInt = this.f13146c ? z().optInt("version_code", -1) : -1;
        for (int i10 = 0; i10 < 3 && iOptInt == -1; i10++) {
            a();
            iOptInt = this.f13146c ? z().optInt("version_code", -1) : -1;
        }
        return iOptInt;
    }

    public long u() {
        return z().optLong("register_time", 0L);
    }

    public void uj() {
        com.byazt.lu.uj.n().x();
    }

    public String ve() {
        String strOptString = this.f13146c ? z().optString("app_version", null) : null;
        for (int i10 = 0; i10 < 3 && strOptString == null; i10++) {
            a();
            strOptString = this.f13146c ? z().optString("app_version", null) : null;
        }
        return strOptString;
    }

    public String x() {
        return z().optString(DeviceInfo.TAG_ANDROID_ID, "");
    }

    public String yp() {
        return z().optString("ab_sdk_version", "");
    }

    @Nullable
    public <T> T c(String str, T t10) {
        Object objOpt;
        JSONObject jSONObjectZ = z();
        if (jSONObjectZ == null || (objOpt = jSONObjectZ.opt(str)) == null) {
            objOpt = null;
        }
        return objOpt == null ? t10 : (T) objOpt;
    }

    private boolean c(ve veVar) {
        boolean z10 = !this.ve.nu() && veVar.uj;
        if (com.byazt.yv.da.tt) {
            com.byazt.yv.da.c("needSyncFromSub " + veVar + " " + z10, null);
        }
        return z10;
    }

    private synchronized void tt(JSONObject jSONObject) {
        if (jSONObject == null) {
            com.byazt.yv.da.tt("null abconfig", null);
            return;
        }
        String strOptString = z().optString("ab_version");
        if (!TextUtils.isEmpty(strOptString)) {
            String[] strArrSplit = strOptString.split(",");
            Set<String> hashSet = new HashSet<>();
            for (String str : strArrSplit) {
                if (!TextUtils.isEmpty(str)) {
                    hashSet.add(str);
                }
            }
            Iterator<String> itKeys = jSONObject.keys();
            HashSet hashSet2 = new HashSet();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next instanceof String) {
                    String str2 = next;
                    if (!TextUtils.isEmpty(str2)) {
                        try {
                            hashSet2.add(jSONObject.getJSONObject(str2).optString(PointParamKey.VID));
                        } catch (JSONException e10) {
                            com.byazt.yv.da.tt(e10);
                        }
                    }
                }
            }
            hashSet.retainAll(hashSet2);
            tt("ab_version", c(hashSet));
        }
    }

    public void c(JSONObject jSONObject) {
        this.ve.ve(jSONObject);
        tt(jSONObject);
    }

    private String c(Set<String> set) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it2 = set.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next());
            if (it2.hasNext()) {
                sb2.append(",");
            }
        }
        return sb2.toString();
    }

    public void c(HashMap<String, Object> map) {
        JSONObject jSONObjectOptJSONObject = null;
        if (map != null && !map.isEmpty()) {
            try {
                jSONObjectOptJSONObject = z().optJSONObject("custom");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    if (!TextUtils.isEmpty(entry.getKey())) {
                        jSONObjectOptJSONObject.put(entry.getKey(), entry.getValue());
                    }
                }
            } catch (JSONException e10) {
                com.byazt.yv.da.tt(e10);
            }
        }
        if (tt("custom", jSONObjectOptJSONObject)) {
            this.ve.tt(jSONObjectOptJSONObject);
        }
    }

    public static void c(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }

    public static boolean c(String str) {
        int length = str != null ? str.length() : 0;
        if (length < 13 || length > 128) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt < '0' || cCharAt > '9') && ((cCharAt < 'a' || cCharAt > 'f') && ((cCharAt < 'A' || cCharAt > 'F') && cCharAt != '-'))) {
                return false;
            }
        }
        return true;
    }

    private boolean tt(String str, Object obj) {
        boolean z10;
        Object objOpt = z().opt(str);
        if ((obj == null || obj.equals(objOpt)) && (obj != null || objOpt == null)) {
            z10 = false;
        } else {
            synchronized (this) {
                try {
                    JSONObject jSONObject = this.uj;
                    JSONObject jSONObject2 = new JSONObject();
                    com.byazt.yv.u.ve(jSONObject2, jSONObject);
                    jSONObject2.put(str, obj);
                    this.uj = jSONObject2;
                } catch (JSONException e10) {
                    com.byazt.yv.da.tt(e10);
                }
            }
            z10 = true;
        }
        com.byazt.yv.da.c("updateHeader, " + str + ", " + objOpt + ", " + obj, null);
        return z10;
    }

    public boolean c(JSONObject jSONObject, String str, String str2, String str3) {
        boolean z10;
        boolean z11;
        if (com.byazt.yv.da.tt) {
            com.byazt.yv.da.c("saveRegisterInfo, " + str + ", " + str2 + ", " + str3 + ", " + jSONObject, null);
        }
        boolean zTt = tt(str);
        boolean zTt2 = tt(str2);
        try {
            boolean zTt3 = tt(str3);
            int i10 = this.sp.getInt("version_code", 0);
            int iOptInt = z().optInt("version_code", 0);
            SharedPreferences.Editor editorEdit = this.sp.edit();
            if (i10 != iOptInt) {
                editorEdit.putInt("version_code", iOptInt);
            }
            if (zTt) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                editorEdit.putLong("register_time", jCurrentTimeMillis);
                tt("register_time", Long.valueOf(jCurrentTimeMillis));
            } else if (!zTt) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(GrantCredentialsPermissionActivity.f89267i, jSONObject);
                com.byazt.gj.c.c("tt_fetch_did_error", jSONObject2);
            }
            String strOptString = z().optString("device_id", "");
            if (zTt && tt("device_id", str)) {
                editorEdit.putString("device_id", str);
                z10 = true;
            } else {
                z10 = false;
            }
            String strOptString2 = z().optString("install_id", "");
            if (zTt2 && tt("install_id", str2)) {
                editorEdit.putString("install_id", str2);
                z10 = true;
            }
            String strOptString3 = z().optString(BuildQRCodeActivity_.SSID_EXTRA, "");
            if (zTt3 && tt(BuildQRCodeActivity_.SSID_EXTRA, str3)) {
                editorEdit.putString(BuildQRCodeActivity_.SSID_EXTRA, str3);
                z11 = true;
            } else {
                z11 = z10;
            }
            com.byazt.gj.c.t().c(z11, strOptString, str, strOptString2, str2, strOptString3, str3);
            editorEdit.apply();
        } catch (JSONException e10) {
            com.byazt.yv.da.tt(e10);
        }
        return zTt && zTt2;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002f A[RETURN] */
    public static boolean tt(String str) {
        boolean z10;
        if (!TextUtils.isEmpty(str) && !"unknown".equalsIgnoreCase(str) && !"Null".equalsIgnoreCase(str)) {
            for (int i10 = 0; i10 < str.length(); i10++) {
                if (str.charAt(i10) != '0') {
                    z10 = false;
                    if (!z10) {
                        return true;
                    }
                }
            }
            z10 = true;
            if (!z10) {
                return true;
            }
        }
        return false;
    }
}
