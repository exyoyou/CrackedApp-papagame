package com.byazt.zpd;

import android.os.Message;
import com.byazt.dna.qp;
import com.byazt.nr.d;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.nr.zm;
import com.byazt.omf.gt;
import com.byazt.omf.x;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1919, 13})
public class tt extends c implements qp.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f22938c = new d(da.c().getLooper(), this);
    public zm tt;

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
        int i10 = message.what;
        if (i10 != 1) {
            if (i10 != 2) {
                return;
            }
            zm zmVar = this.tt;
            if (zmVar != null) {
                zmVar.tt(0);
            }
            c(3, 0L, System.currentTimeMillis());
            return;
        }
        zm zmVar2 = this.tt;
        if (zmVar2 == null) {
            return;
        }
        zmVar2.c(new zm.ve() { // from class: com.byazt.zpd.tt.1
            @Override // com.byazt.nr.zm.ve
            public void c() {
                tt.this.c(1, System.currentTimeMillis(), 0L);
                if (tt.this.f22938c != null) {
                    tt.this.f22938c.removeCallbacksAndMessages(null);
                }
                if (tt.this.tt != null) {
                    tt.this.tt.tt(0);
                }
            }
        });
        this.f22938c.sendEmptyMessageDelayed(2, c(gt.tt().kz()));
    }

    public void c(JSONObject jSONObject, int i10) {
        int iC = c(i10);
        if (tt(i10)) {
            c(jSONObject, com.byazt.pf.c.c().tt(), iC);
        } else if (ve(i10)) {
            c(jSONObject, com.byazt.pf.c.c().ve(), iC);
        }
    }

    private void c(JSONObject jSONObject, long j10, long j11) {
        if (System.currentTimeMillis() - j10 > j11) {
            this.tt = c();
            this.f22938c.removeCallbacksAndMessages(null);
            this.f22938c.sendEmptyMessage(1);
        }
    }

    private zm c() {
        zm zmVar = new zm(gt.getContext(), 1, x.m().uj());
        boolean zC = zmVar.c(0);
        m.tt("csj_sen", "reg res:".concat(String.valueOf(zC)));
        if (zC) {
            return zmVar;
        }
        c(0, System.currentTimeMillis(), 0L);
        zmVar.tt(0);
        return null;
    }
}
