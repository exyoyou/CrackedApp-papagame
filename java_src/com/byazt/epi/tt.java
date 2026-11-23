package com.byazt.epi;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import com.byazt.nr.gt;
import com.byazt.nr.m;
import com.byazt.vb.a;
import com.byazt.vb.i;
import com.byazt.vb.n;
import com.byazt.vb.sp;
import com.byazt.vb.uj;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1653, 13})
public class tt implements sp {
    public static volatile com.byazt.gs.c uj;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f13547c;
    public Context tt;
    public i ve;

    public tt(com.byazt.vb.c cVar) {
        c(cVar);
    }

    private boolean a() {
        return Thread.currentThread() == Looper.getMainLooper().getThread();
    }

    public static com.byazt.gs.c n() {
        if (uj == null) {
            synchronized (tt.class) {
                if (uj == null) {
                    uj = new com.byazt.ke.c();
                }
            }
        }
        return uj;
    }

    public void tt(n nVar) {
        this.f13547c = nVar;
        this.tt = nVar.getContext();
        this.ve = new com.byazt.mv.tt(this.f13547c);
    }

    @Override // com.byazt.vb.sp
    public uj uj() {
        n nVar = this.f13547c;
        if (nVar == null) {
            return null;
        }
        return nVar.uj();
    }

    @Override // com.byazt.vb.sp
    public i ve() {
        return this.ve;
    }

    public tt() {
    }

    @Override // com.byazt.vb.sp
    public n tt() {
        n nVar = this.f13547c;
        if (nVar == null) {
            return null;
        }
        return nVar;
    }

    @Override // com.byazt.vb.sp
    public void tt(boolean z10) {
        n nVar = this.f13547c;
        if (nVar != null) {
            nVar.c(z10);
        }
    }

    public void c(n nVar) {
        tt(nVar);
    }

    private void tt(final com.byazt.vb.tt ttVar) {
        n nVar = this.f13547c;
        if (nVar != null && this.ve != null) {
            final uj ujVarUj = nVar.uj();
            if (ttVar == null || ujVarUj == null || this.f13547c.getContext() == null || ujVarUj.x() == null) {
                return;
            }
            if (this.f13547c.sl()) {
                if (c(this.f13547c.getContext(), ujVarUj)) {
                    this.ve.c(ttVar);
                    return;
                }
                a();
                if (a()) {
                    ujVarUj.x().execute(new com.byazt.ke.tt("dispatchEvent") { // from class: com.byazt.epi.tt.2
                        @Override // java.lang.Runnable
                        public void run() {
                            tt.this.c(ttVar, ujVarUj.da());
                        }
                    });
                    return;
                } else {
                    c(ttVar, ujVarUj.da());
                    return;
                }
            }
            this.ve.c(ttVar);
            return;
        }
        m.uj("log_error", "dispatch event configManager is null");
    }

    @Override // com.byazt.vb.sp
    public void c(a aVar) {
        n nVar = this.f13547c;
        if (nVar != null) {
            if (aVar == null) {
                aVar = com.byazt.shi.tt.f19777c;
            }
            nVar.c(aVar);
        }
    }

    private boolean c(Context context, uj ujVar) {
        if (context == null || ujVar == null) {
            return false;
        }
        if (ujVar.da() == 1) {
            return ujVar.u();
        }
        try {
            return gt.c(context);
        } catch (Throwable th) {
            m.c(th);
            return true;
        }
    }

    @Override // com.byazt.vb.sp
    public void c(final boolean z10) {
        final uj ujVarUj;
        n nVar = this.f13547c;
        if (nVar == null || (ujVarUj = nVar.uj()) == null || this.f13547c.getContext() == null || ujVarUj.x() == null) {
            return;
        }
        if (this.f13547c.sl()) {
            if (c(this.f13547c.getContext(), ujVarUj)) {
                i iVar = this.ve;
                if (iVar != null) {
                    iVar.c(z10);
                    return;
                }
                return;
            }
            if (a()) {
                ujVarUj.x().execute(new com.byazt.ke.tt("start") { // from class: com.byazt.epi.tt.1
                    @Override // java.lang.Runnable
                    public void run() {
                        n unused = tt.this.f13547c;
                        tt.this.c(ujVarUj.da(), z10);
                    }
                });
                return;
            } else {
                c(ujVarUj.da(), z10);
                return;
            }
        }
        i iVar2 = this.ve;
        if (iVar2 != null) {
            iVar2.c(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, boolean z10) {
        if (i10 == 0 || i10 == 2) {
            com.byazt.xm.c.c(this.f13547c, z10);
        } else if (i10 == 1) {
            com.byazt.xm.tt.c(this.f13547c, z10);
        }
    }

    @Override // com.byazt.vb.sp
    public void c(com.byazt.vb.tt ttVar) {
        tt(ttVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(com.byazt.vb.tt ttVar, int i10) {
        if (i10 == 0 || i10 == 2) {
            com.byazt.xm.c.c(ttVar, this.f13547c);
        } else if (i10 == 1) {
            com.byazt.xm.tt.c(ttVar, this.f13547c);
        }
    }

    @Override // com.byazt.vb.sp
    public void c(final String str, final List<String> list, final boolean z10, Map<String, String> map, final JSONObject jSONObject) {
        n nVar = this.f13547c;
        if (nVar == null) {
            m.uj("log_error", "track configManager is null");
            return;
        }
        final uj ujVarUj = nVar.uj();
        if (ujVarUj == null || this.f13547c.getContext() == null || ujVarUj.x() == null || !ujVarUj.a()) {
            return;
        }
        if (ujVarUj.da() == 1) {
            if (list == null || list.isEmpty()) {
                return;
            }
        } else if (ujVarUj.da() == 0 && (TextUtils.isEmpty(str) || list == null || list.isEmpty())) {
            return;
        }
        if (this.f13547c.sl() && !c(this.f13547c.getContext(), ujVarUj)) {
            if (a()) {
                ujVarUj.x().execute(new com.byazt.ke.tt("trackFailed") { // from class: com.byazt.epi.tt.3
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.c(str, (List<String>) list, z10, ujVarUj.da(), jSONObject);
                    }
                });
                return;
            } else {
                c(str, list, z10, ujVarUj.da(), jSONObject);
                return;
            }
        }
        com.byazt.pvs.c.c(this.f13547c).c(str, list, z10, map, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, List<String> list, boolean z10, int i10, JSONObject jSONObject) {
        if (i10 == 0) {
            com.byazt.xm.c.c(str, list, z10, this.f13547c, jSONObject);
        } else if (i10 == 1) {
            com.byazt.xm.tt.c(str, list, z10, this.f13547c);
        }
    }

    @Override // com.byazt.vb.sp
    public void c(final String str) {
        n nVar = this.f13547c;
        if (nVar == null) {
            com.byazt.ml.ve.ve("log_error", "trackFailedUrls configManager is null", nVar);
            return;
        }
        final uj ujVarUj = nVar.uj();
        if (ujVarUj == null || this.f13547c.getContext() == null || ujVarUj.x() == null || !ujVarUj.a()) {
            return;
        }
        if (ujVarUj.da() == 0 && TextUtils.isEmpty(str)) {
            return;
        }
        if (this.f13547c.sl() && !c(this.f13547c.getContext(), ujVarUj)) {
            if (a()) {
                ujVarUj.x().execute(new com.byazt.ke.tt("trackFailed") { // from class: com.byazt.epi.tt.4
                    @Override // java.lang.Runnable
                    public void run() {
                        tt.this.c(str, ujVarUj.da());
                    }
                });
                return;
            } else {
                c(str, ujVarUj.da());
                return;
            }
        }
        com.byazt.pvs.c.c(this.f13547c).c(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, int i10) {
        if (i10 == 0) {
            com.byazt.xm.c.c(str, this.f13547c);
        } else if (i10 == 1) {
            com.byazt.xm.tt.c(str, this.f13547c);
        }
    }

    @Override // com.byazt.vb.sp
    public void c() {
        i iVar = this.ve;
        if (iVar != null) {
            iVar.c();
        }
    }
}
