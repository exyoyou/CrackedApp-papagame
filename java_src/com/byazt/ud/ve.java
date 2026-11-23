package com.byazt.ud;

import android.content.Context;
import android.text.TextUtils;
import com.byazt.hz.u;
import com.byazt.yf.sl;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 429, 54})
public class ve implements com.byazt.bc.ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public u f20542c;
    public com.byazt.ch.c tt;
    public boolean uj;
    public com.byazt.nh.c ve;

    public ve(Context context, com.byazt.ch.c cVar, com.byazt.nh.c cVar2, boolean z10) {
        this.tt = cVar;
        this.uj = z10;
        com.byazt.eu.tt.tt(MediationConstant.TAG, "CSJMSplashLoader 构造函数创建 mAdSlotValueSet = " + this.tt + " mAdSlotValueSet.getCodeId() = " + this.tt.uj());
        if (this.tt != null) {
            this.f20542c = new u(context);
            this.ve = cVar2;
        }
    }

    @Override // com.byazt.oh.n
    public void c() {
        c(-1);
    }

    @Override // com.byazt.bc.ve
    public void c(int i10) {
        final com.byazt.am.ve veVarU;
        com.byazt.eu.tt.tt(MediationConstant.TAG, "CSJMSplashLoader load timeout = ".concat(String.valueOf(i10)));
        com.byazt.vq.c.c().tt();
        com.byazt.ll.tt ttVar = new com.byazt.ll.tt(3, this.tt.eo(), this.tt.or());
        ttVar.c(this.uj);
        if (i10 != -1) {
            ttVar.a(i10);
        }
        com.byazt.ch.tt ttVarMd = this.tt.md();
        this.f20542c.c(ttVar, (ttVarMd == null || (veVarU = ttVarMd.u()) == null || TextUtils.isEmpty(veVarU.c()) || TextUtils.isEmpty(veVarU.ve()) || TextUtils.isEmpty(veVarU.tt())) ? null : new sl() { // from class: com.byazt.ud.ve.1
            @Override // com.byazt.yf.sl
            public int c() {
                String strC = veVarU.c();
                strC.hashCode();
                switch (strC) {
                    case "klevin":
                        return 9;
                    case "pangle":
                        return 1;
                    case "sigmob":
                        return 8;
                    case "xiaomi":
                        return 10;
                    case "ks":
                        return 7;
                    case "gdt":
                        return 3;
                    case "baidu":
                        return 6;
                    case "mintegral":
                        return 4;
                    default:
                        return super.c();
                }
            }

            @Override // com.byazt.yf.sl
            public String tt() {
                return veVarU.tt();
            }

            @Override // com.byazt.yf.sl
            public String uj() {
                return veVarU.uj();
            }

            @Override // com.byazt.yf.sl
            public String ve() {
                return veVarU.ve();
            }
        }, new com.byazt.ko.ve() { // from class: com.byazt.ud.ve.2
            @Override // com.byazt.ko.ve
            public void c(com.byazt.pp.c cVar) {
                com.byazt.eu.tt.tt(MediationConstant.TAG, "CSJMSplashLoader onSplashAdLoadFail");
                if (cVar == null || ve.this.ve == null) {
                    return;
                }
                com.byazt.oh.c cVar2 = new com.byazt.oh.c(cVar.f18789c, cVar.tt);
                ve.this.ve.c(cVar2);
                ve.this.ve.c(null, cVar2);
            }

            @Override // com.byazt.ko.ve
            public void c() {
                com.byazt.eu.tt.tt(MediationConstant.TAG, "CSJMSplashLoader onSplashAdLoadSuccess");
                if (ve.this.ve != null) {
                    c cVar = new c(ve.this.f20542c, ve.this.ve);
                    ve.this.ve.c(cVar);
                    ve.this.ve.tt(cVar);
                }
            }
        });
    }
}
