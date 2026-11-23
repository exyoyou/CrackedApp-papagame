package com.byazt.bb;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.aas.zb;
import com.byazt.ete.gt;
import com.byazt.ete.ic;
import com.byazt.hv.TTDownloadField;
import com.byazt.nr.h;
import com.byazt.nr.rh;
import com.byazt.su.DownloadStatusChangeListener;
import com.byazt.yih.i;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 147, 20})
public abstract class c implements com.byazt.hl.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f11859a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.eia.sp f11860c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DownloadStatusChangeListener f11862i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.yzg.ve f11863n;
    public boolean sl;
    public boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public gt f11864t;
    public Map<String, Object> tt;
    public String uj;
    public Context ve;
    public volatile boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public com.byazt.hl.c f11867z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public volatile boolean f11866x = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f11865u = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Function<SparseArray<Object>, Object> f11861da = com.byazt.omf.x.m().nb();

    private void a(Map<String, Object> map) {
        int iUj = uj(map);
        com.byazt.rgb.c.c(ve(), ve(iUj) ? 1 : 2);
        c(this.yp, iUj);
        if (this.ve == null || TextUtils.isEmpty(this.f11859a) || !sp(map)) {
            return;
        }
        this.f11863n.c(tt(iUj), this.f11860c);
        zb<String, Object> zbVarC = new zb().c("downloadUrl", this.f11859a);
        zbVarC.put("is_feed_register_direct_download", map.get("is_feed_register_direct_download"));
        zbVarC.put("download_manager_hash_code", map.get("download_manager_hash_code"));
        zbVarC.put("has_show_dl_factors", map.get("has_show_dl_factors"));
        zbVarC.put(TTDownloadField.TT_ACTIVITY, map.get(TTDownloadField.TT_ACTIVITY));
        zbVarC.put("open_market_in_app", Boolean.valueOf(gt.my(tt())));
        com.byazt.wrq.c cVarN = n(zbVarC);
        if (cVarN == null || c((com.byazt.ete.uj) null, cVarN, zbVarC)) {
            return;
        }
        c(true, iUj);
        c(zbVarC, cVarN);
    }

    private boolean sp(Map<String, Object> map) {
        if (this.f11861da == null) {
            return true;
        }
        gt gtVar = this.f11864t;
        if (gtVar != null && gtVar.sp() == 1) {
            return true;
        }
        if (com.byazt.omf.gt.tt().jg()) {
            String str = "已下载%d%%，可在通知栏暂停或取消";
            try {
                DownloadStatusChangeListener downloadStatusChangeListener = this.f11862i;
                if (downloadStatusChangeListener instanceof com.byazt.wrq.tt) {
                    str = String.format("已下载%d%%，可在通知栏暂停或取消", Integer.valueOf(((com.byazt.wrq.tt) downloadStatusChangeListener).getCurrentPercent()));
                }
            } catch (Exception unused) {
            }
            return c(map, str, true);
        }
        gt gtVar2 = this.f11864t;
        if (gtVar2 != null && gtVar2.n()) {
            return true;
        }
        com.byazt.eia.sp spVar = this.f11860c;
        if (spVar instanceof ic) {
            com.byazt.wz.x.tt((ic) spVar, "bdc");
        } else {
            com.byazt.wz.x.tt(null, "bdc");
        }
        return c(map, "应用正在下载...", false);
    }

    public static int uj(Map<String, Object> map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get("download_manager_hash_code");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    private void x(Map<String, Object> map) {
        if (this.f11861da != null) {
            int iUj = uj(map);
            if (map != null) {
                map.put("hashCode", Integer.valueOf(iUj));
            }
            this.f11861da.apply(com.byazt.yxi.uj.c().c(16).c(Void.class).c(0, map).tt());
        }
    }

    public abstract com.byazt.wrq.uj c(Map<String, Object> map, zb<String, Object> zbVar);

    public abstract com.byazt.wrq.c n(Map<String, Object> map);

    public void ve(final Map<String, Object> map) {
        int i10 = this.f11865u;
        if (i10 == 1) {
            com.byazt.rgb.c.uj(ve(), 2);
            com.byazt.wz.x.c(com.byazt.omf.gt.getContext(), tt(), "uchain_1");
            com.byazt.ppf.ve.c(this.tt, com.byazt.cr.tt.uj);
        } else if (i10 != 2) {
            c((com.byazt.ete.uj) null, map);
        } else {
            com.byazt.bwm.n.tt(new com.byazt.bwm.sp("tt_download_check") { // from class: com.byazt.bb.c.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.ete.uj ujVarC = com.byazt.omf.gt.c().c(c.this.tt(), c.this.f11859a);
                    if (ujVarC == null || !ujVarC.sp()) {
                        com.byazt.rgb.c.uj(c.this.ve(), 2);
                        com.byazt.ppf.ve.c(c.this.tt, com.byazt.cr.tt.uj);
                        com.byazt.wz.x.c(com.byazt.omf.gt.getContext(), c.this.tt(), "uchain_2");
                    } else {
                        c cVar = c.this;
                        if (cVar.sl) {
                            cVar.tt(ujVarC, (Map<String, Object>) map);
                        }
                        c.this.c(ujVarC, (Map<String, Object>) map);
                    }
                }
            });
        }
    }

    public abstract boolean ve(int i10);

    public boolean tt(Map<String, Object> map) {
        if (this.f11860c.B_()) {
            com.byazt.ppf.ve.c(this.tt, com.byazt.cr.tt.f12586n);
            return false;
        }
        if (TextUtils.isEmpty(this.f11859a)) {
            com.byazt.ppf.ve.c(this.tt, com.byazt.cr.tt.f12586n);
            return false;
        }
        if (rh.ve(this.ve) == 0) {
            try {
                h.c(this.ve, "\"无网络，请稍后再试\"", 0);
            } catch (Exception unused) {
            }
            return true;
        }
        a(map);
        return true;
    }

    @Override // com.byazt.hl.c
    public boolean c(Map<String, Object> map) {
        if (!c()) {
            com.byazt.ppf.ve.c(this.tt, com.byazt.cr.tt.uj);
            return false;
        }
        return tt(map);
    }

    private com.byazt.wrq.c ve(final com.byazt.ete.uj ujVar, final Map<String, Object> map) {
        return new com.byazt.wrq.c() { // from class: com.byazt.bb.c.5
            @Override // com.byazt.ou.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z10) {
                if (z10 && c.this.c(ujVar, (com.byazt.wrq.c) null, map)) {
                    return;
                }
                c.this.c((com.byazt.wrq.c) null, map);
            }

            @Override // com.byazt.ou.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
            }
        };
    }

    public boolean c() {
        return (this.f11860c == null || tt() == null || this.ve == null || this.f11861da == null || TextUtils.isEmpty(this.f11859a) || TextUtils.isEmpty(this.uj) || this.f11863n == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String ve() {
        if (tt() == null) {
            return null;
        }
        return tt().zm();
    }

    private void tt(com.byazt.wrq.c cVar, Map<String, Object> map) {
        if (this.f11861da == null) {
            return;
        }
        zb<String, Object> zbVarC = new zb().c("itemClickListener", null).c("downloadButtonClickListener", cVar).c("hashCode", Integer.valueOf(uj(map))).c(map);
        zbVarC.put("itemClickListener", c(map, zbVarC));
        this.f11861da.apply(com.byazt.yxi.uj.c().c(17).c(Void.class).c(0, zbVarC).tt());
    }

    private boolean c(Map<String, Object> map, final String str, final boolean z10) {
        Object objApply = this.f11861da.apply(com.byazt.yxi.uj.c().c(6).c(Boolean.class).c(0, new zb().c("hashCode", Integer.valueOf(uj(map))).c("downloadUrl", this.f11859a)).tt());
        if (objApply == null || !((Boolean) objApply).booleanValue()) {
            return true;
        }
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.bb.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (z10) {
                    h.tt(c.this.ve, str, 0, 17, 0, 0);
                } else {
                    h.c(c.this.ve, str, 0);
                }
            }
        });
        return false;
    }

    public com.byazt.yzg.c tt(int i10) {
        if (ve(i10)) {
            return new com.byazt.yzg.n();
        }
        if (this.f11866x) {
            return new com.byazt.yzg.uj();
        }
        return new com.byazt.yzg.tt();
    }

    public void tt(boolean z10) {
        this.sp = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(com.byazt.ete.uj ujVar, Map<String, Object> map) {
        com.byazt.ete.a aVarC = com.byazt.wz.x.c(ujVar.x());
        com.byazt.ete.a aVarRh = this.f11860c.rh();
        if (aVarRh == null) {
            tt().c(aVarC);
        } else {
            if (aVarC != null) {
                aVarRh.da(aVarC.yp());
                aVarRh.tt(aVarC.n());
                aVarRh.uj(aVarC.sp());
                aVarRh.tt(aVarC.t());
                aVarRh.n(aVarC.x());
                aVarRh.i(aVarC.u());
                aVarRh.ve(aVarC.a());
                aVarRh.a(aVarC.i());
                aVarRh.sp(aVarC.da());
                aVarRh.x(aVarC.sl());
            }
            aVarC = aVarRh;
        }
        if (aVarC != null) {
            c(aVarC.a(), aVarC.yp(), aVarC.u(), map);
        }
    }

    public boolean c(com.byazt.ete.uj ujVar, final com.byazt.wrq.c cVar, final Map<String, Object> map) {
        boolean zC = com.byazt.ppf.ve.c(map);
        boolean zTt = com.byazt.ppf.ve.tt(map);
        final int iUj = uj(map);
        if (!this.f11863n.uj(zC || zTt)) {
            return false;
        }
        com.byazt.hl.c cVar2 = this.f11867z;
        if (cVar2 != null && cVar2.c(new HashMap())) {
            return true;
        }
        this.f11863n.c(ujVar, this.uj, this.f11859a, new com.byazt.av.tt() { // from class: com.byazt.bb.c.2
            @Override // com.byazt.av.tt
            public void c() {
                if (!c.this.ve(iUj)) {
                    c.this.c(cVar, map);
                } else {
                    c.this.c(true, iUj);
                    c.this.c((Map<String, Object>) map, cVar);
                }
            }
        });
        return true;
    }

    public void c(boolean z10, int i10) {
        if (ve(i10)) {
            com.byazt.qt.ve.c(z10, com.byazt.qt.ve.c(this.f11860c, this.sp), i10);
        }
    }

    public void c(boolean z10) {
        this.f11866x = z10;
    }

    public void c(DownloadStatusChangeListener downloadStatusChangeListener) {
        this.f11862i = downloadStatusChangeListener;
    }

    public void c(gt gtVar) {
        this.f11864t = gtVar;
    }

    public void c(int i10) {
        this.f11865u = i10;
    }

    public void c(com.byazt.hl.c cVar) {
        this.f11867z = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final Map<String, Object> map, final com.byazt.wrq.c cVar) {
        i.c(new Runnable() { // from class: com.byazt.bb.c.3
            @Override // java.lang.Runnable
            public void run() {
                c.this.c(cVar, map);
            }
        }, this.f11860c);
        this.yp = false;
    }

    public ic tt() {
        return com.byazt.ppf.ve.c(this.f11860c, this.tt);
    }

    public void c(com.byazt.wrq.c cVar, Map<String, Object> map) {
        try {
            tt().uj(true);
            if (cVar == null) {
                x(map);
                this.yp = false;
            } else {
                tt(cVar, map);
                this.yp = false;
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.ete.uj ujVar, Map<String, Object> map) {
        c(ve(ujVar, map), map);
    }

    private void c(String str, String str2, String str3, Map<String, Object> map) {
        if (this.f11861da == null) {
            return;
        }
        this.f11861da.apply(com.byazt.yxi.uj.c().c(24).c(Boolean.class).c(0, new zb().c("appIcon", str).c("appName", str2).c("hashCode", Integer.valueOf(uj(map))).c("packageName", str3)).tt());
    }
}
