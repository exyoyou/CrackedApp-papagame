package com.byazt.lu;

import com.byazt.yv.da;
import com.haima.hmcp.proto.GSSDK;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, GSSDK.OneInputOPData.InputOP.OP_GAMEPAD_BTN_L1_VALUE, 13})
public abstract class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final uj f16785c;
    public int tt = 0;
    public volatile boolean uj;
    public boolean ve;

    public tt(uj ujVar) {
        this.f16785c = ujVar;
    }

    public boolean a() {
        return this.ve;
    }

    public abstract long c();

    public void n() {
        this.ve = true;
    }

    public final long sp() {
        boolean zVe;
        long jC = c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (this.uj) {
            this.uj = false;
            jC = 0;
        }
        if (jC <= 1000 + jCurrentTimeMillis) {
            try {
                zVe = ve();
            } catch (Exception e10) {
                da.tt(e10);
                zVe = false;
            }
            if (!zVe) {
                long[] jArrTt = tt();
                int i10 = this.tt;
                this.tt = i10 + 1;
                return jArrTt[i10 % jArrTt.length];
            }
            this.tt = 0;
            jC = c();
            jCurrentTimeMillis = System.currentTimeMillis();
        }
        return jC - jCurrentTimeMillis;
    }

    public abstract long[] tt();

    public abstract String uj();

    public abstract boolean ve() throws JSONException;

    public void x() {
        da.c("setImmediately, " + uj());
        this.uj = true;
    }
}
