package com.byazt.pvs;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.nr.m;
import com.haima.hmcp.ConstantsInternal;
import java.security.SecureRandom;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 705, 54})
public class ve implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f18871c;
    public final n tt;
    public com.byazt.vb.n ve;

    @com.byazt.zqa.c(c = {0, 1, 705, 24})
    @SuppressLint({"StaticFieldLeak"})
    private class c extends com.byazt.ke.tt {
        public final uj tt;
        public final Map<String, String> uj;
        public final String ve;

        private String ve(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            if (str.contains("{TS}") || str.contains("__TS__")) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                str = str.replace("{TS}", String.valueOf(jCurrentTimeMillis)).replace("__TS__", String.valueOf(jCurrentTimeMillis));
            }
            return ((str.contains("{UID}") || str.contains("__UID__")) && !TextUtils.isEmpty(this.ve)) ? str.replace("{UID}", this.ve).replace("__UID__", this.ve) : str;
        }

        public boolean c(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            return str.startsWith("http://") || str.startsWith("https://");
        }

        @Override // java.lang.Runnable
        public void run() {
            com.byazt.gs.n nVarC;
            com.byazt.vb.uj ujVarUj = ve.this.ve.uj();
            if (ujVarUj == null || ve.this.ve.getContext() == null || !ujVarUj.uj()) {
                return;
            }
            if (!c(this.tt.ve())) {
                uj ujVar = this.tt;
                c(null, ujVarUj, ujVar, ujVar.ve(), "not http url");
                return;
            }
            if (this.tt.n() == 0) {
                ve.this.tt.delete(this.tt);
                uj ujVar2 = this.tt;
                c(null, ujVarUj, ujVar2, ujVar2.ve(), "retry max");
                return;
            }
            try {
                if (this.tt.n() == 5) {
                    ve.this.tt.insert(this.tt);
                }
                if (!ujVarUj.c(ve.this.getContext())) {
                    uj ujVar3 = this.tt;
                    c(null, ujVarUj, ujVar3, ujVar3.ve(), "no net");
                    return;
                }
                System.currentTimeMillis();
                String strVe = this.tt.ve();
                if (ujVarUj.da() == 0) {
                    strVe = ve(this.tt.ve());
                    if (this.tt.uj()) {
                        strVe = tt(strVe);
                    }
                }
                String str = strVe;
                com.byazt.gs.tt ttVarSp = ujVarUj.sp();
                if (ttVarSp == null) {
                    c(null, this.tt, str, "no executor");
                    return;
                }
                ttVarSp.c("User-Agent", ujVarUj.n());
                ttVarSp.c("csj_client_source_from", "1");
                if (this.uj != null) {
                    JSONObject jSONObject = new JSONObject();
                    for (Map.Entry<String, String> entry : this.uj.entrySet()) {
                        jSONObject.put(entry.getKey(), entry.getValue());
                    }
                    ttVarSp.c("csj_extra_info", jSONObject.toString());
                }
                ttVarSp.c(str);
                try {
                    nVarC = ttVarSp.c();
                } catch (Throwable unused) {
                    nVarC = null;
                }
                if (nVarC == null || !nVarC.c()) {
                    if (nVarC != null && nVarC.ve() == 8848) {
                        nVarC.uj();
                        ve.this.tt.delete(this.tt);
                    }
                    com.byazt.vb.n unused2 = ve.this.ve;
                    uj ujVar4 = this.tt;
                    ujVar4.c(ujVar4.n() - 1);
                    if (this.tt.n() == 0) {
                        ve.this.tt.delete(this.tt);
                        com.byazt.vb.n unused3 = ve.this.ve;
                    } else {
                        ve.this.tt.update(this.tt);
                    }
                    if (nVarC != null) {
                        nVarC.uj();
                        System.currentTimeMillis();
                    } else {
                        System.currentTimeMillis();
                    }
                } else {
                    ve.this.tt.delete(this.tt);
                    com.byazt.vb.n unused4 = ve.this.ve;
                    System.currentTimeMillis();
                }
                c(nVarC, ujVarUj, this.tt, str, null);
            } catch (Throwable unused5) {
            }
        }

        public String tt(String str) {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            try {
                return str.replace("[ss_random]", String.valueOf(ve.tt().nextLong())).replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                m.c(e10);
                return str;
            }
        }

        private c(uj ujVar, String str, Map<String, String> map) {
            super("AdsStats");
            this.tt = ujVar;
            this.ve = str;
            this.uj = map;
        }

        private void c(com.byazt.gs.n nVar, com.byazt.vb.uj ujVar, uj ujVar2, String str, String str2) {
            try {
                ujVar.c(this.tt.c(), c(nVar, ujVar2, str, str2));
            } catch (Exception e10) {
                m.c(e10);
            }
        }

        private JSONObject c(com.byazt.gs.n nVar, uj ujVar, String str, String str2) {
            JSONObject jSONObject = new JSONObject();
            if (ujVar == null) {
                return jSONObject;
            }
            try {
                jSONObject.put("retry_count", 5 - ujVar.n());
                JSONObject jSONObjectC = ujVar.c();
                if (jSONObjectC != null) {
                    jSONObject.put("track_type", jSONObjectC.optString("track_type", ""));
                }
                jSONObject.put("url", str);
                jSONObject.put("current", System.currentTimeMillis());
                jSONObject.put(ConstantsInternal.KEY_ERROR_MSG, str2);
                if (nVar != null) {
                    jSONObject.put("http_code", nVar.ve());
                    String strTt = nVar.tt();
                    if (!TextUtils.isEmpty(strTt)) {
                        if (strTt.length() > 5000) {
                            strTt = strTt.substring(0, 5000);
                        }
                        jSONObject.put("http_response", strTt);
                    }
                    jSONObject.put("success", nVar.c() ? 1 : 0);
                }
            } catch (JSONException unused) {
            }
            return jSONObject;
        }
    }

    public ve(n nVar, com.byazt.vb.n nVar2) {
        this.f18871c = nVar2.getContext();
        this.tt = nVar;
        this.ve = nVar2;
    }

    public Context getContext() {
        Context context = this.f18871c;
        return context == null ? this.ve.getContext() : context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Random tt() {
        if (Build.VERSION.SDK_INT < 26) {
            return new SecureRandom();
        }
        try {
            return SecureRandom.getInstanceStrong();
        } catch (Throwable unused) {
            return new SecureRandom();
        }
    }

    @Override // com.byazt.pvs.tt
    public void c(String str, List<String> list, boolean z10, Map<String, String> map, JSONObject jSONObject) {
        com.byazt.vb.uj ujVarUj = this.ve.uj();
        if (ujVarUj == null || this.ve.getContext() == null || ujVarUj.x() == null || !ujVarUj.uj() || list == null || list.size() == 0) {
            return;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            ujVarUj.x().execute(new c(new uj(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), it2.next(), z10, 5, jSONObject, 1), str, map));
        }
    }

    @Override // com.byazt.pvs.tt
    public void c(final String str) {
        com.byazt.vb.uj ujVarUj = this.ve.uj();
        if (ujVarUj == null || this.ve.getContext() == null || !ujVarUj.uj()) {
            return;
        }
        com.byazt.ke.tt ttVar = new com.byazt.ke.tt("trackFailedUrls") { // from class: com.byazt.pvs.ve.1
            @Override // java.lang.Runnable
            public void run() {
                ve.this.c(ve.this.tt.c(), str);
            }
        };
        ttVar.c(1);
        if (ujVarUj.x() != null) {
            ujVarUj.x().execute(ttVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<uj> list, String str) {
        if (list == null || list.size() == 0) {
            return;
        }
        com.byazt.vb.uj ujVarUj = this.ve.uj();
        for (uj ujVar : list) {
            if (ujVarUj != null && ujVarUj.x() != null) {
                ujVarUj.x().execute(new c(ujVar, str, null));
            }
        }
    }
}
