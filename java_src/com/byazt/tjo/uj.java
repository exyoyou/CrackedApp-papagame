package com.byazt.tjo;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import com.byazt.nr.m;
import com.byazt.omf.p;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 516, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f20221c;
    public static volatile boolean uj;
    public static volatile SparseArray<Object> ve;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.omf.ve f20223a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public com.byazt.fb.ve f20224n;
    public long sp;
    public static volatile AtomicBoolean tt = new AtomicBoolean(false);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile boolean f20222x = false;

    private void uj() {
        com.byazt.dc.n.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        if (this.f20224n != null) {
            uj = true;
            if (this.sp != 0) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                a.tt = jElapsedRealtime - this.sp;
                a.uj = jElapsedRealtime - a.f20197x;
            }
            com.byazt.eu.tt.tt("TMe", "sdk init call callback success");
            com.byazt.yxi.n nVarC = com.byazt.yxi.n.c().c(true);
            if (this.f20223a != null && p.uj < 7500) {
                com.byazt.yxi.uj ujVarC = com.byazt.yxi.uj.c();
                ujVarC.c(23, this.f20223a.getReuseServiceMap());
                nVarC.c(ujVarC.tt());
            }
            ve = nVarC.tt();
            this.f20224n.c(0, ve);
            com.byazt.sx.uj.ve();
            uj();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt() {
        if (tt.get()) {
            com.byazt.eu.tt.tt("TMe", "通知成功或失败了不在通知");
            return;
        }
        tt.set(true);
        com.byazt.eu.tt.tt("TMe", "通知成功=----notifySdkSuccess");
        com.byazt.eu.n.uj(new Runnable() { // from class: com.byazt.tjo.uj.3
            @Override // java.lang.Runnable
            public void run() {
                uj.this.ve();
            }
        });
    }

    public void c(Context context, com.byazt.lkb.c cVar, com.byazt.fb.ve veVar, long j10, com.byazt.omf.ve veVar2, long j11, JSONObject jSONObject) {
        this.f20224n = veVar;
        this.sp = j10;
        this.f20223a = veVar2;
        if (cVar != null) {
            com.byazt.bp.c.t().ve(cVar.n());
            if (com.byazt.omf.x.m().lr()) {
                com.byazt.jj.a.c(cVar);
            }
            com.byazt.eu.tt.tt("TMe", "init csjm " + f20221c);
            if (!f20221c) {
                com.byazt.eu.tt.tt("TMe", "init csjm ");
                f20221c = true;
                tt.set(false);
                com.byazt.vq.c.c().tt();
                com.byazt.vq.c.c().c(new com.byazt.vq.tt() { // from class: com.byazt.tjo.uj.1
                    @Override // com.byazt.vq.tt
                    public void c() {
                        com.byazt.vq.c.c().c((com.byazt.vq.tt) null);
                        uj.this.tt();
                    }

                    @Override // com.byazt.vq.tt
                    public void c(int i10, String str) {
                        com.byazt.vq.c.c().c((com.byazt.vq.tt) null);
                        uj.this.c(i10, str);
                    }
                });
                com.byazt.yf.da.c(context, c(cVar));
                try {
                    jSONObject.put("0-init", a.f20193a - a.f20196n);
                    jSONObject.put("0-start", a.sp - a.f20196n);
                    jSONObject.put("s-csj", j11 - a.sp);
                    jSONObject.put("s-m_init_end", SystemClock.elapsedRealtime() - a.sp);
                } catch (JSONException e10) {
                    m.c(e10);
                }
                com.byazt.yf.da.c(jSONObject);
                return;
            }
            com.byazt.eu.tt.tt("TMe", "init csjm already");
            if (veVar != null && f20222x) {
                f20222x = false;
                tt.set(false);
                com.byazt.vq.c.c().c(new com.byazt.vq.tt() { // from class: com.byazt.tjo.uj.2
                    @Override // com.byazt.vq.tt
                    public void c() {
                        com.byazt.vq.c.c().c((com.byazt.vq.tt) null);
                        uj.this.tt();
                    }

                    @Override // com.byazt.vq.tt
                    public void c(int i10, String str) {
                        com.byazt.vq.c.c().c((com.byazt.vq.tt) null);
                        uj.this.c(i10, str);
                    }
                });
                com.byazt.qe.tt.c(com.byazt.bp.tt.tt()).c(1);
                return;
            }
            if (veVar != null && ve != null && uj) {
                veVar.c(0, ve);
                return;
            } else {
                com.byazt.eu.tt.tt("TMe", "sdk正在初始化....");
                return;
            }
        }
        com.byazt.eu.tt.tt("TMe", "init csjm configValueSet is null");
    }

    private void tt(int i10, String str) {
        if (i10 == 40004) {
            com.byazt.eu.tt.tt("TMe", "sdk init call code is 40004 callback success");
            ve();
        } else if (this.f20224n != null) {
            com.byazt.eu.tt.tt("TMe", "sdk init call callback fail");
            ve = com.byazt.yxi.n.c().c(false).c(i10).c(str).tt();
            this.f20224n.c(0, ve);
            com.byazt.sx.uj.ve();
        }
    }

    public boolean c() {
        return uj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i10, String str) {
        f20222x = true;
        if (!tt.get()) {
            tt.set(true);
            tt(i10, str);
        } else {
            com.byazt.eu.tt.tt("TMe", "通知成功或失败了不在通知");
        }
    }

    private com.byazt.yf.c c(com.byazt.lkb.c cVar) {
        return new com.byazt.yf.c.C0491c().c(cVar.n()).tt(cVar.a()).c(cVar.uj()).ve(cVar.z()).tt(cVar.m()).c(ve.c(cVar.nu())).c(cVar.rh()).c(cVar.yp()).ve(cVar.my()).c(cVar.gt()).uj(cVar.t()).c(new com.byazt.yf.t.c().c(cVar.sp()).tt(cVar.x()).c(cVar.i()).c(cVar.da()).tt(cVar.sl()).c(cVar.u()).c(ve.c(cVar.rh())).c()).c(new com.byazt.yf.x.c().c(cVar.qy()).c(cVar.rl()).tt(cVar.gu()).ve(cVar.gr()).c()).c(cVar.tt()).c();
    }
}
