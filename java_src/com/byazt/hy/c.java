package com.byazt.hy;

import android.os.SystemClock;
import com.byazt.gqp.i;
import com.byazt.gqp.m;
import com.byazt.gqp.nu;
import com.byazt.gqp.yp;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 604, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile long f15175c = 0;
    public static volatile String tt = "0";

    /* JADX INFO: renamed from: com.byazt.hy.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 604, 44})
    public static class C0337c implements i {
        @Override // com.byazt.gqp.i
        public m c(i.c cVar) throws IOException {
            nu nuVarA;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            yp ypVarC = cVar.c();
            m mVarC = cVar.c(ypVarC);
            if (!"GET".equalsIgnoreCase(ypVarC.ve()) || (nuVarA = mVarC.a()) == null) {
                return mVarC;
            }
            long jC = nuVarA.c();
            long jElapsedRealtime2 = SystemClock.elapsedRealtime() - jElapsedRealtime;
            if (jElapsedRealtime2 > 0 && jC > 10240) {
                String unused = c.tt = String.format("%.2f", Double.valueOf(((jC / 1024.0d) / jElapsedRealtime2) * 1000.0d));
                long unused2 = c.f15175c = System.currentTimeMillis();
                String unused3 = c.tt;
            }
            return mVarC;
        }
    }

    public static String c() {
        return System.currentTimeMillis() - f15175c < 7200000 ? tt : "0";
    }
}
