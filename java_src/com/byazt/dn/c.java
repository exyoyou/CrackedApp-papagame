package com.byazt.dn;

import android.os.Looper;
import android.os.Message;
import com.byazt.atv.sp;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.kdw.tt;
import com.byazt.nr.d;
import com.byazt.ouz.gt;
import com.byazt.sz.qy;
import com.byazt.xl.x;
import com.byazt.xs.da;
import com.byazt.xs.ve;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 35, 20})
public class c implements qp.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public tt f13025a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f13026c = new d(Looper.getMainLooper(), this);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public x f13027n;
    public sp tt;
    public com.byazt.xl.sp uj;
    public final ic ve;

    public c(ic icVar) {
        this.ve = icVar;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        com.byazt.xl.sp spVar;
        if (message.what == 1 && (spVar = this.uj) != null) {
            spVar.c(-2, "render timeout");
        }
    }

    public void c(x xVar) {
        this.f13027n = xVar;
    }

    public void c(com.byazt.xl.sp spVar) {
        this.uj = spVar;
    }

    public void c(tt ttVar) {
        this.f13025a = ttVar;
    }

    public void c(String str, String str2, final int i10, final int i11, int i12) {
        if (i12 > 0) {
            this.f13026c.sendEmptyMessageDelayed(1, i12);
        }
        da.c(str, str2, new ve() { // from class: com.byazt.dn.c.1
            @Override // com.byazt.xs.ve
            public void c(String str3) {
                try {
                    c cVar = c.this;
                    cVar.c(cVar.ve, new JSONObject(str3), i10, i11);
                } catch (Throwable unused) {
                    if (c.this.uj != null) {
                        c.this.uj.c(-1, "render fail");
                    }
                }
            }

            @Override // com.byazt.xs.ve
            public void c() {
                if (c.this.uj != null) {
                    c.this.uj.c(-1, "request fail");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ic icVar, JSONObject jSONObject, int i10, int i11) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("width", i10);
            jSONObject2.put("height", i11);
        } catch (Throwable unused) {
        }
        com.byazt.atv.tt.c cVar = new com.byazt.atv.tt.c();
        cVar.c(com.byazt.jlk.tt.c(icVar, jSONObject2, jSONObject, false, null, false));
        cVar.c((qy) new gt());
        cVar.c(i10);
        cVar.tt(0.0f);
        sp spVar = new sp(com.byazt.omf.gt.getContext(), null, cVar.c(), null);
        this.tt = spVar;
        com.byazt.xl.sp spVar2 = this.uj;
        if (spVar2 != null) {
            spVar.c(spVar2);
        }
        x xVar = this.f13027n;
        if (xVar != null) {
            this.tt.c(xVar);
        }
        tt ttVar = this.f13025a;
        if (ttVar != null) {
            this.tt.c(ttVar);
        }
    }
}
