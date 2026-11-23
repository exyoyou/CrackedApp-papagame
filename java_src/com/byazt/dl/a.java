package com.byazt.dl;

import android.text.TextUtils;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 465, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile a f13007c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f13008a;
    public boolean tt;
    public int uj;
    public final Set<String> ve = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<String, Long> f13009n = new ConcurrentHashMap();

    private a() {
    }

    public static a c() {
        if (f13007c == null) {
            synchronized (a.class) {
                if (f13007c == null) {
                    f13007c = new a();
                }
            }
        }
        return f13007c;
    }

    private void ve() {
        if (this.f13008a) {
            return;
        }
        this.f13008a = true;
        gt.tt().m();
    }

    public boolean tt() {
        ve();
        return this.tt;
    }

    public void c(String str, int i10, int i11, String str2) {
        String str3;
        if (!tt() || TextUtils.isEmpty(str) || i10 == 0) {
            return;
        }
        String strValueOf = String.valueOf(i10);
        if (i11 != 0) {
            str3 = (strValueOf + "_") + String.valueOf(i11);
        } else {
            str3 = strValueOf;
        }
        com.byazt.it.ve veVarC = com.byazt.vif.uj.c(str2, "req_exemption_error_code");
        if (this.ve.contains(strValueOf) || this.ve.contains(str3)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            veVarC.put(str, jCurrentTimeMillis);
            this.f13009n.put(str, Long.valueOf(jCurrentTimeMillis));
        }
    }

    public void c(String str) {
        JSONObject jSONObject;
        if (TextUtils.isEmpty(str)) {
            jSONObject = null;
        } else {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e10) {
                m.c(e10);
                jSONObject = null;
            }
        }
        c(jSONObject);
    }

    public void c(JSONObject jSONObject) {
        this.ve.clear();
        if (jSONObject != null) {
            this.tt = jSONObject.optBoolean("enable", false);
            int iOptInt = jSONObject.optInt("duration", 0) * 1000;
            this.uj = iOptInt;
            if (iOptInt <= 0) {
                this.tt = false;
                return;
            }
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("error_codes");
            if (jSONArrayOptJSONArray != null && jSONArrayOptJSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    String strOptString = jSONArrayOptJSONArray.optString(i10);
                    if (!TextUtils.isEmpty(strOptString)) {
                        this.ve.add(strOptString);
                    }
                }
            }
            if (this.ve.isEmpty()) {
                this.tt = false;
                return;
            }
            return;
        }
        this.tt = false;
    }

    public boolean c(String str, String str2) {
        if (!tt() || TextUtils.isEmpty(str)) {
            return false;
        }
        Long lValueOf = this.f13009n.get(str);
        if (lValueOf == null) {
            lValueOf = Long.valueOf(com.byazt.vif.uj.c(str2, "req_exemption_error_code").getLong(str, -1L));
            if (lValueOf.longValue() != -1) {
                this.f13009n.put(str, lValueOf);
            } else {
                lValueOf = null;
            }
        }
        if (lValueOf == null) {
            return true;
        }
        if (System.currentTimeMillis() - lValueOf.longValue() <= this.uj) {
            return false;
        }
        this.f13009n.remove(str);
        com.byazt.vif.uj.c(str2, "req_exemption_error_code").remove(str);
        return true;
    }
}
