package com.byazt.hw;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.nr.m;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 77, 15})
public class uj {
    public static final Object uj = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f15151c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f15152n;
    public ve tt = new ve();
    public boolean ve;

    public uj(Context context, boolean z10, int i10) {
        this.f15151c = context;
        this.ve = z10;
        this.f15152n = i10;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00a9  */
    public void c(JSONObject jSONObject) {
        JSONObject jSONObject2;
        if (!this.ve) {
            com.byazt.lf.ve.tt("TNCConfigHandler", "handleConfigChanged: no mainProc");
            return;
        }
        sp.c().c(this.f15152n).n();
        try {
            boolean z10 = jSONObject.optInt("ttnet_url_dispatcher_enabled", 0) > 0;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ttnet_dispatch_actions");
            if (sp.c().c(this.f15152n).ve() && z10 && jSONArrayOptJSONArray != null) {
                ArrayList<JSONObject> arrayList = new ArrayList();
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    JSONObject jSONObject3 = ((JSONObject) jSONArrayOptJSONArray.get(i10)).getJSONObject(com.alipay.sdk.authjs.a.f7127l);
                    if ("idc_selection".equals(jSONObject3.optString("service_name", ""))) {
                        arrayList.add(jSONObject3.getJSONObject("strategy_info"));
                    }
                }
                if (arrayList.isEmpty()) {
                    jSONObject2 = null;
                } else {
                    jSONObject2 = new JSONObject();
                    for (JSONObject jSONObject4 : arrayList) {
                        Iterator<String> itKeys = jSONObject4.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            jSONObject2.put(next, jSONObject4.getString(next));
                        }
                    }
                }
            } else {
                jSONObject2 = null;
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("tnc_config");
            if (jSONObjectOptJSONObject == null && jSONObject2 == null) {
                com.byazt.lf.ve.c("TNCConfigHandler", " tnc host_replace_map config is null");
            } else if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObjectOptJSONObject.put("host_replace_map", jSONObject2);
            } else if (jSONObject2 != null) {
                jSONObjectOptJSONObject.put("host_replace_map", jSONObject2);
            }
            ve veVarTt = tt(jSONObjectOptJSONObject);
            StringBuilder sb2 = new StringBuilder("handleConfigChanged, newConfig: ");
            sb2.append(veVarTt == null ? "null" : veVarTt.toString());
            com.byazt.lf.ve.tt("TNCConfigHandler", sb2.toString());
            if (veVarTt == null) {
                synchronized (uj) {
                    com.byazt.nys.tt.tt(this.f15151c, sp.c().c(this.f15152n).c(), 0).edit().putString("tnc_config_str", "").apply();
                    com.byazt.lf.uj.c(this.f15151c, 1, "", this.f15152n);
                }
            } else {
                this.tt = veVarTt;
                String string = jSONObjectOptJSONObject.toString();
                synchronized (uj) {
                    com.byazt.nys.tt.tt(this.f15151c, sp.c().c(this.f15152n).c(), 0).edit().putString("tnc_config_str", string).apply();
                    com.byazt.lf.uj.c(this.f15151c, 1, string, this.f15152n);
                }
            }
        } catch (Throwable th) {
            try {
                m.c(th);
                this.tt = new ve();
            } finally {
                synchronized (uj) {
                    com.byazt.nys.tt.tt(this.f15151c, sp.c().c(this.f15152n).c(), 0).edit().putString("tnc_config_str", "").apply();
                    com.byazt.lf.uj.c(this.f15151c, 1, "", this.f15152n);
                }
            }
        }
    }

    public void tt() {
        try {
            String strC = com.byazt.lf.uj.c(this.f15151c, 1, this.f15152n);
            if (TextUtils.isEmpty(strC)) {
                com.byazt.lf.ve.tt("TNCConfigHandler", "loadLocalConfigForOtherProcess, data empty");
                return;
            }
            ve veVarTt = tt(new JSONObject(strC));
            StringBuilder sb2 = new StringBuilder("loadLocalConfigForOtherProcess, config: ");
            sb2.append(veVarTt == null ? "null" : veVarTt.toString());
            com.byazt.lf.ve.tt("TNCConfigHandler", sb2.toString());
            if (veVarTt != null) {
                this.tt = veVarTt;
            }
        } catch (Throwable th) {
            com.byazt.lf.ve.tt("TNCConfigHandler", "loadLocalConfigForOtherProcess, except: " + th.getMessage());
        }
    }

    public ve ve() {
        return this.tt;
    }

    private ve tt(JSONObject jSONObject) {
        try {
            ve veVar = new ve();
            if (jSONObject.has("local_enable")) {
                veVar.f15154c = jSONObject.getInt("local_enable") != 0;
            }
            if (jSONObject.has("probe_enable")) {
                veVar.tt = jSONObject.getInt("probe_enable") != 0;
            }
            if (jSONObject.has("local_host_filter")) {
                JSONArray jSONArray = jSONObject.getJSONArray("local_host_filter");
                HashMap map = new HashMap();
                if (jSONArray.length() > 0) {
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        String string = jSONArray.getString(i10);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(string, 0);
                        }
                    }
                }
                veVar.ve = map;
            } else {
                veVar.ve = null;
            }
            if (jSONObject.has("host_replace_map")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("host_replace_map");
                HashMap map2 = new HashMap();
                if (jSONObject2.length() > 0) {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String string2 = jSONObject2.getString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string2)) {
                            map2.put(next, string2);
                        }
                    }
                }
                veVar.uj = map2;
            } else {
                veVar.uj = null;
            }
            veVar.f15157n = jSONObject.optInt("req_to_cnt", veVar.f15157n);
            veVar.f15153a = jSONObject.optInt("req_to_api_cnt", veVar.f15153a);
            veVar.sp = jSONObject.optInt("req_to_ip_cnt", veVar.sp);
            veVar.f15160x = jSONObject.optInt("req_err_cnt", veVar.f15160x);
            veVar.f15156i = jSONObject.optInt("req_err_api_cnt", veVar.f15156i);
            veVar.f15155da = jSONObject.optInt("req_err_ip_cnt", veVar.f15155da);
            veVar.sl = jSONObject.optInt("update_interval", veVar.sl);
            veVar.f15158t = jSONObject.optInt("update_random_range", veVar.f15158t);
            veVar.f15159u = jSONObject.optString("http_code_black", veVar.f15159u);
            return veVar;
        } catch (Throwable th) {
            m.c(th);
            return null;
        }
    }

    public void c() {
        if (this.ve) {
            String string = com.byazt.nys.tt.tt(this.f15151c, sp.c().c(this.f15152n).c(), 0).getString("tnc_config_str", null);
            if (TextUtils.isEmpty(string)) {
                com.byazt.lf.ve.tt("TNCConfigHandler", "loadLocalConfig: no existed");
                return;
            }
            try {
                ve veVarTt = tt(new JSONObject(string));
                if (veVarTt != null) {
                    this.tt = veVarTt;
                }
                StringBuilder sb2 = new StringBuilder("loadLocalConfig: ");
                sb2.append(veVarTt == null ? "null" : veVarTt.toString());
                com.byazt.lf.ve.tt("TNCConfigHandler", sb2.toString());
            } catch (Throwable th) {
                m.c(th);
                com.byazt.lf.ve.tt("TNCConfigHandler", "loadLocalConfig: except: " + th.getMessage());
            }
        }
    }
}
