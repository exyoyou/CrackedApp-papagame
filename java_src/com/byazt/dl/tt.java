package com.byazt.dl;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 465, 13})
public abstract class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f13012c;
    public static volatile long tt;
    public Handler uj;
    public final Queue<c> ve = new LinkedList();

    @com.byazt.zqa.c(c = {0, 1, 465, 194})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f13014c;
        public final String tt;

        private c(long j10, String str) {
            this.f13014c = j10;
            this.tt = str;
        }
    }

    private synchronized boolean tt(String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        int iTt = tt();
        long jVe = ve();
        if (this.ve.size() <= 0 || this.ve.size() < iTt) {
            this.ve.offer(new c(jCurrentTimeMillis, str));
        } else {
            long jAbs = Math.abs(jCurrentTimeMillis - this.ve.peek().f13014c);
            if (jAbs <= jVe) {
                tt(jVe - jAbs);
                return true;
            }
            this.ve.poll();
            this.ve.offer(new c(jCurrentTimeMillis, str));
        }
        return false;
    }

    public synchronized String n() {
        String str;
        HashMap map = new HashMap();
        for (c cVar : this.ve) {
            if (map.containsKey(cVar.tt)) {
                map.put(cVar.tt, Integer.valueOf(((Integer) map.get(cVar.tt)).intValue() + 1));
            } else {
                map.put(cVar.tt, 1);
            }
        }
        str = "";
        int i10 = Integer.MIN_VALUE;
        for (String str2 : map.keySet()) {
            int iIntValue = ((Integer) map.get(str2)).intValue();
            if (i10 < iIntValue) {
                str = str2;
                i10 = iIntValue;
            }
        }
        return str;
    }

    public abstract int tt();

    public boolean uj() {
        return f13012c;
    }

    public abstract long ve();

    public synchronized boolean c(String str) {
        if (tt(str)) {
            c(true);
            c(tt);
        } else {
            c(false);
        }
        return f13012c;
    }

    private void c(long j10) {
        if (this.uj == null) {
            this.uj = new Handler(Looper.getMainLooper());
        }
        this.uj.postDelayed(new Runnable() { // from class: com.byazt.dl.tt.1
            @Override // java.lang.Runnable
            public void run() {
                tt.this.c(false);
            }
        }, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(boolean z10) {
        f13012c = z10;
    }

    private synchronized void tt(long j10) {
        tt = j10;
    }
}
