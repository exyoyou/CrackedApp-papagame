package com.byazt.xo;

import com.byazt.dna.zm;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.x;
import com.byazt.ut.uj;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1047, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f22011c = 10000;
    public int tt;
    public Runnable uj;
    public long ve;

    public tt(int i10) {
        this.tt = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(Runnable runnable) {
        zm zmVar = (zm) uj.getService("m_s");
        if (zmVar != null && zmVar.assertAndSetState(0, this.tt, true)) {
            tt(3);
            c();
        } else if (runnable != null) {
            tt(1);
            runnable.run();
        }
    }

    public tt c(int i10) {
        this.f22011c = i10 <= 0 ? 10000 : i10 * 1000;
        return this;
    }

    public void c(final Runnable runnable) {
        this.ve = System.currentTimeMillis();
        if (!c.a()) {
            tt(runnable);
            return;
        }
        if (x.m().d()) {
            tt(2);
            c();
        } else if (!c.c()) {
            tt(runnable);
        } else {
            da.c().postDelayed(new Runnable() { // from class: com.byazt.xo.tt.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!x.m().d()) {
                        tt.this.tt(runnable);
                    } else {
                        tt.this.tt(2);
                        tt.this.c();
                    }
                }
            }, this.f22011c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tt(int i10) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(">> tk: ");
        sb2.append(this.tt);
        if (i10 == 1) {
            str = " run";
        } else {
            str = i10 == 2 ? " cancel" : " runed";
        }
        sb2.append(str);
        sb2.append(", isBst: true, tmgap: ");
        sb2.append((System.currentTimeMillis() - this.ve) / 1000);
        if (i10 == 1) {
            m.c("bstsdk", sb2.toString());
        } else {
            m.tt("bstsdk", sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Runnable runnable = this.uj;
        if (runnable != null) {
            runnable.run();
        }
    }
}
