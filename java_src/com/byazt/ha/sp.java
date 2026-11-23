package com.byazt.ha;

import android.text.TextUtils;
import com.haima.hmcp.widgets.JoyStickMappingManager;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, JoyStickMappingManager.KEY_CODE_RIGHT_STICK_DOWN, 91})
public abstract class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.lh.tt f14869c;
    public String tt;

    public void c() {
        com.byazt.lh.tt ttVar = this.f14869c;
        if (ttVar != null) {
            ttVar.c(this.tt, com.byazt.hi.tt.STARTED);
        }
    }

    public void tt() {
        com.byazt.lh.tt ttVar = this.f14869c;
        if (ttVar != null) {
            ttVar.c(this.tt, com.byazt.hi.tt.REQED);
        }
    }

    public void c(final boolean z10) {
        com.byazt.lh.tt ttVar = this.f14869c;
        if (ttVar != null) {
            ttVar.c(this.tt, new com.byazt.ip.uj.c() { // from class: com.byazt.ha.sp.1
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar2) {
                    if (ttVar2 instanceof tt) {
                        ((tt) ttVar2).tt = z10;
                    }
                }
            });
            this.f14869c.c(this.tt, com.byazt.hi.tt.RECEIVED);
        }
    }

    public void c(final String str, final boolean z10, final com.byazt.lq.ve veVar) {
        com.byazt.lh.tt ttVar = this.f14869c;
        if (ttVar != null) {
            ttVar.c(this.tt, new com.byazt.ip.uj.c() { // from class: com.byazt.ha.sp.2
                @Override // com.byazt.ip.uj.c
                public void c(com.byazt.ip.tt ttVar2) {
                    if (ttVar2 instanceof tt) {
                        tt ttVar3 = (tt) ttVar2;
                        ttVar3.ve = z10;
                        ttVar3.uj = veVar;
                        if (TextUtils.isEmpty(str)) {
                            return;
                        }
                        ttVar3.f14874n.add(str);
                    }
                }
            });
            if (!TextUtils.isEmpty(str)) {
                ((com.byazt.lh.ve) com.byazt.ip.n.c(1)).c(str, new com.byazt.ip.uj.c() { // from class: com.byazt.ha.sp.3
                    @Override // com.byazt.ip.uj.c
                    public void c(com.byazt.ip.tt ttVar2) {
                        if (ttVar2 instanceof ve) {
                            ((ve) ttVar2).f14877c = sp.this.tt;
                        }
                    }
                });
            }
            this.f14869c.c(this.tt, com.byazt.hi.tt.LOADED);
        }
    }
}
