package com.byazt.ddx;

import android.text.TextUtils;
import com.byazt.ete.gu;
import com.byazt.ete.ic;
import com.byazt.ete.nu;
import com.byazt.omf.or;
import com.haima.hmcp.ConstantsInternal;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 483, 71})
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile x f12849c;

    private x() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(ic icVar, String str) {
        if (icVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.it.ve veVarC = com.byazt.omf.tt.c();
        veVarC.put("save_jump_success_time", System.currentTimeMillis());
        JSONObject jSONObjectYg = icVar.yg();
        if (jSONObjectYg == null) {
            return;
        }
        veVarC.put("save_dpl_success_materialmeta", jSONObjectYg.toString());
        veVarC.put("save_jump_success_ad_tag", str);
    }

    public static x c() {
        if (f12849c == null) {
            synchronized (x.class) {
                if (f12849c == null) {
                    f12849c = new x();
                }
            }
        }
        return f12849c;
    }

    public void c(final ic icVar, final String str, final boolean z10, final boolean z11, final i.c cVar) {
        if (icVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.byazt.cl.c.c(1);
        final long jCurrentTimeMillis = System.currentTimeMillis();
        new i().c(new i.c() { // from class: com.byazt.ddx.x.1

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            public boolean f12853x = false;

            @Override // com.byazt.ddx.i.c
            public void c(long j10) {
                i.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c(j10);
                }
                c(false, "resume");
                if (!z10) {
                    c(str, z11);
                }
                com.byazt.omf.tt.c().put("dpl_reject_by_dialog", true);
                uj.c(icVar, str, "dpl_popup", System.currentTimeMillis() - jCurrentTimeMillis);
                if (j10 > gu.tt()) {
                    com.byazt.cl.c.c(2);
                } else {
                    com.byazt.cl.c.c(3);
                }
            }

            @Override // com.byazt.ddx.i.c
            public void c(String str2) {
                i.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c(str2);
                }
                c(false, str2);
            }

            @Override // com.byazt.ddx.i.c
            public void c(boolean z12) {
                i.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.c(z12);
                }
                this.f12853x = z12;
                c(z12, ConstantsInternal.STOP);
                if (!this.f12853x && !z10) {
                    c(str, z11);
                }
                com.byazt.omf.tt.c().put("dpl_reject_by_dialog", false);
            }

            private void c(String str2, boolean z12) {
                ic icVar2 = icVar;
                if (icVar2 == null || this.f12853x) {
                    return;
                }
                boolean zNu = icVar2.nu();
                nu nuVarYp = icVar.yp();
                if (nuVarYp == null || nuVarYp.c()) {
                    return;
                }
                int iVe = nuVarYp.ve();
                if (zNu) {
                    return;
                }
                if (iVe == 1 || iVe == 2) {
                    or.c(icVar, str2, z12);
                }
            }

            private void c(final boolean z12, final String str2) {
                com.byazt.bwm.n.c(new com.byazt.bwm.sp("EventData") { // from class: com.byazt.ddx.x.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        if (z10) {
                            uj.ve(icVar, str, z12 ? "lp_dpl_success" : "lp_dpl_failed");
                            return;
                        }
                        String str3 = z12 ? "dpl_success" : "dpl_failed";
                        HashMap map = new HashMap();
                        boolean zC = com.byazt.omf.x.m().c();
                        map.put("has_focus", Boolean.valueOf(com.byazt.omf.x.m().c(true)));
                        map.put("is_background", Boolean.valueOf(zC));
                        map.put("life", str2);
                        map.put("total_duration", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                        AnonymousClass1 anonymousClass2 = AnonymousClass1.this;
                        uj.i(icVar, str, str3, map);
                        AnonymousClass1 anonymousClass3 = AnonymousClass1.this;
                        ic icVar2 = icVar;
                        if (icVar2 == null || !z12) {
                            return;
                        }
                        x.tt(icVar2, str);
                    }
                }, 5);
            }
        });
    }
}
