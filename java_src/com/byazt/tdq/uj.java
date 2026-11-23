package com.byazt.tdq;

import android.text.TextUtils;
import com.byazt.aas.nb;
import com.byazt.bwm.sp;
import com.byazt.cc.x;
import com.byazt.ete.ic;
import com.byazt.ete.os;
import com.byazt.im.a;
import com.byazt.im.i;
import com.byazt.omf.gr;
import com.byazt.omf.gt;
import com.byazt.ukr.yp;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 708, 15})
public class uj extends com.byazt.tdq.c {
    public tt sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile com.byazt.iy.n f20128x = null;

    @com.byazt.zqa.c(c = {0, 1, 708, 123})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f20130c = true;
        public long tt = 0;
        public long ve = 0;
        public long uj = 0;
    }

    @com.byazt.zqa.c(c = {0, 1, 708, 153})
    private class tt extends sp {
        public os tt;

        public tt(os osVar) {
            super("WriteCacheTask");
            this.tt = osVar;
        }

        private void tt() {
            try {
                int iC = x.c(this.tt);
                if (iC <= 0) {
                    return;
                }
                com.byazt.it.ve veVarA = uj.this.a();
                String str = veVarA.get("net_ad_already_shown", "");
                if (!TextUtils.isEmpty(str) && str.equals(this.tt.c().qy())) {
                    com.byazt.dz.c.c("lqmt", "该缓存已show-则不再save： rit: " + iC + "   reqId: " + this.tt.c().qy());
                    return;
                }
                JSONObject jSONObjectVe = this.tt.tt().ve();
                if (jSONObjectVe != null) {
                    veVarA.put("materialMeta".concat(String.valueOf(iC)), jSONObjectVe.toString());
                }
                veVarA.put("net_ad_save_success".concat(String.valueOf(iC)), this.tt.c().qy());
                com.byazt.dz.c.c("lqmt", "缓存成功： rit: " + iC + "   reqId: " + this.tt.c().qy());
            } catch (Throwable unused) {
            }
        }

        public void c(os osVar) {
            this.tt = osVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            tt();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.byazt.it.ve a() {
        return com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), ve("tt_materialMeta"));
    }

    private com.byazt.it.ve n() {
        return com.byazt.vif.uj.c(com.byazt.vxy.c.uj(), ve("tt_splash"));
    }

    private com.byazt.ete.c sp(String str) {
        com.byazt.ete.c cVar;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str2 = a().get("materialMeta" + str, (String) null);
        if (!TextUtils.isEmpty(str2)) {
            try {
                gr.c cVarC = gr.c.c(new JSONObject(str2));
                if (cVarC != null && (cVar = cVarC.f18049x) != null) {
                    return cVar;
                }
            } catch (JSONException unused) {
            }
        }
        return null;
    }

    private c uj(String str) {
        c cVar = new c();
        if (TextUtils.isEmpty(str)) {
            return cVar;
        }
        com.byazt.it.ve veVarN = n();
        long j10 = veVarN.get("expiration" + str, 0L);
        long j11 = veVarN.get(com.sigmob.sdk.base.n.f79591r + str, 0L);
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        cVar.f20130c = jCurrentTimeMillis < j11 || jCurrentTimeMillis >= j10;
        cVar.tt = j11;
        cVar.ve = j10;
        cVar.uj = jCurrentTimeMillis;
        return cVar;
    }

    private String ve(String str) {
        com.byazt.ete.x.ve veVarC = com.byazt.ete.x.c(3);
        return (veVarC == null || veVarC.x()) ? str + "_7611" : str;
    }

    @Override // com.byazt.tdq.c
    public void c(String str, String str2, boolean z10, boolean z11, Object obj) {
    }

    @Override // com.byazt.tdq.c
    public void tt() {
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.it.ve veVarN = n();
        a().remove("materialMeta" + str);
        if (veVarN != null) {
            veVarN.remove("has_ad_cache" + str);
            veVarN.remove("expiration" + str);
        }
        com.byazt.dz.c.c("lqmt", "清除成功： rit: " + str);
    }

    private boolean n(final String str) {
        final c cVarUj = uj(str);
        if (cVarUj.f20130c) {
            yp.c().sp(new com.byazt.ee.c() { // from class: com.byazt.tdq.uj.1
                @Override // com.byazt.ee.c
                public com.byazt.qal.c c() throws Exception {
                    c cVar = cVarUj;
                    long j10 = cVar.uj - cVar.tt;
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.putOpt("available_type", 0);
                    jSONObject.putOpt("creative_timeout_duration", Long.valueOf(j10 / 3600));
                    return com.byazt.qal.tt.tt().c(4).ve(str).tt(jSONObject.toString());
                }
            });
        }
        n nVar = this.f20121a;
        long j10 = nVar == null ? 0L : nVar.f20126c;
        if (j10 <= 0 || cVarUj.tt * 1000 >= j10) {
            return cVarUj.f20130c;
        }
        return true;
    }

    public long tt(String str) {
        c cVarUj = uj(str);
        if (cVarUj == null || cVarUj.f20130c) {
            return 0L;
        }
        return Math.max(0L, cVarUj.ve - cVarUj.uj);
    }

    @Override // com.byazt.tdq.c
    public void c(os osVar, com.byazt.dj.tt ttVar, boolean z10) {
        int iC;
        if (osVar != null && (iC = x.c(osVar)) > 0) {
            c(iC, osVar.c().uv());
            c(osVar);
        }
    }

    @Override // com.byazt.tdq.c
    public void ve() {
        try {
            a().clear();
            n().clear();
        } catch (Throwable unused) {
        }
    }

    private void c(os osVar) {
        tt ttVar = this.sp;
        if (ttVar == null) {
            this.sp = new tt(osVar);
        } else {
            ttVar.c(osVar);
        }
        com.byazt.bwm.n.c(this.sp, 10);
    }

    private void c(int i10, long j10) {
        com.byazt.it.ve veVarN = n();
        veVarN.put("expiration" + i10, j10);
        veVarN.put(com.sigmob.sdk.base.n.f79591r + i10, System.currentTimeMillis() / 1000);
        veVarN.put("has_ad_cache" + i10, true);
    }

    public static void uj() {
        gt.tt().nm();
    }

    private boolean c(com.byazt.im.sp spVar, String str) {
        if (c(str)) {
            return true;
        }
        if (spVar != null) {
            spVar.uj(0);
            spVar.tt(1);
            spVar.c("no cache");
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0041 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:13:0x0022, B:15:0x0028, B:17:0x0032, B:20:0x0041, B:21:0x0044, B:24:0x0050), top: B:33:0x0022 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x004f  */
    /* JADX WARN: Code duplicated, block: B:24:0x0050 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #0 {all -> 0x0054, blocks: (B:13:0x0022, B:15:0x0028, B:17:0x0032, B:20:0x0041, B:21:0x0044, B:24:0x0050), top: B:33:0x0022 }] */
    @Override // com.byazt.tdq.c
    public void c(com.byazt.im.sp spVar, String str, com.byazt.tdq.c.InterfaceC0438c interfaceC0438c, n nVar) {
        ic icVar;
        if (TextUtils.isEmpty(str) || interfaceC0438c == null) {
            return;
        }
        this.f20121a = nVar;
        if (!c(spVar, str)) {
            interfaceC0438c.c();
            return;
        }
        a aVar = null;
        try {
            com.byazt.ete.c cVarSp = sp(str);
            a aVar2 = new a(cVarSp, true);
            if (cVarSp != null) {
                try {
                    if (cVarSp.tt() == null || cVarSp.tt().isEmpty()) {
                        icVar = null;
                    } else {
                        icVar = cVarSp.tt().get(0);
                    }
                    if (icVar != null) {
                        aVar2.c(icVar);
                    }
                    if (com.byazt.apd.tt.c().ve(icVar) != 3) {
                        aVar = aVar2;
                    } else {
                        aVar2.c((ic) null);
                    }
                } catch (Throwable unused) {
                }
            } else {
                icVar = null;
                if (icVar != null) {
                    aVar2.c(icVar);
                }
                if (com.byazt.apd.tt.c().ve(icVar) != 3) {
                    aVar = aVar2;
                } else {
                    aVar2.c((ic) null);
                }
            }
        } catch (Throwable unused2) {
        }
        interfaceC0438c.c(aVar);
        if (com.byazt.by.n.c().da()) {
            return;
        }
        a(str);
    }

    public boolean c(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        com.byazt.it.ve veVarN = n();
        StringBuilder sb2 = new StringBuilder("has_ad_cache");
        sb2.append(str);
        return veVarN.get(sb2.toString(), false) && !n(str);
    }

    @Override // com.byazt.tdq.c
    public void c(com.byazt.gat.uj<i, com.byazt.im.sp> ujVar, ic icVar, com.byazt.dj.tt ttVar, boolean z10) {
        if (icVar == null) {
            return;
        }
        com.byazt.it.ve veVarA = a();
        if (z10) {
            veVarA.put("net_ad_already_shown", icVar.qy());
        }
        if (this.f20123n.get()) {
            return;
        }
        String str = veVarA.get("net_ad_save_success" + nb.t(icVar), "");
        if (TextUtils.isEmpty(str) || !str.equals(icVar.qy())) {
            return;
        }
        this.f20123n.set(true);
        com.byazt.dz.c.c("lqmt", "计划清除缓存 reqId:  " + str);
        a(ttVar != null ? ttVar.uj() : null);
        if (ujVar != null) {
            ujVar.c();
        }
    }

    @Override // com.byazt.tdq.c
    public void c(String str, ic icVar) {
        a(str);
    }
}
