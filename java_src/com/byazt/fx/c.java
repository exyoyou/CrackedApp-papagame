package com.byazt.fx;

import android.content.Context;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import com.byazt.ete.eo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 839, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<tt> f14285c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Vibrator f14286n;
    public Context tt;
    public final List<Long> ve = new ArrayList();
    public final List<Integer> uj = new ArrayList();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f14284a = 0;
    public long sp = 0;

    public c(Context context, eo eoVar) {
        this.tt = context;
        this.f14286n = ve.ve(context);
        this.f14285c = eoVar.tt();
        c();
    }

    private static float c(float f10, float f11, float f12) {
        if (f10 < f11) {
            return f11;
        }
        return f10 > f12 ? f12 : f10;
    }

    public void tt() {
        if (!ve.c(this.tt) || this.ve.isEmpty() || this.uj.isEmpty()) {
            return;
        }
        long[] jArrC = c(this.ve);
        int[] iArrTt = tt(this.uj);
        if (Build.VERSION.SDK_INT < 26) {
            this.f14286n.vibrate(100L);
        } else {
            this.f14286n.vibrate(VibrationEffect.createWaveform(jArrC, iArrTt, -1));
        }
    }

    public void ve() {
        this.ve.clear();
        this.uj.clear();
        this.f14284a = 0L;
        this.sp = 0L;
    }

    public void c() {
        ve();
        List<tt> list = this.f14285c;
        if (list == null || list.isEmpty()) {
            return;
        }
        Collections.sort(this.f14285c, new Comparator<tt>() { // from class: com.byazt.fx.c.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int compare(tt ttVar, tt ttVar2) {
                return Long.compare(ttVar.c(), ttVar2.c());
            }
        });
        for (tt ttVar : this.f14285c) {
            long jC = ((long) ttVar.c()) + ttVar.tt();
            if (jC > this.sp) {
                this.sp = jC;
            }
        }
        for (tt ttVar2 : this.f14285c) {
            if (this.f14284a < ttVar2.c()) {
                c(((long) ttVar2.c()) - this.f14284a);
            }
            c(ttVar2.tt(), ttVar2.ve(), ttVar2.uj());
        }
        long j10 = this.f14284a;
        long j11 = this.sp;
        if (j10 < j11) {
            c(j11 - j10);
        }
    }

    private int[] tt(List<Integer> list) {
        int[] iArr = new int[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            iArr[i10] = list.get(i10).intValue();
        }
        return iArr;
    }

    private void c(long j10) {
        if (j10 > 0) {
            this.ve.add(Long.valueOf(j10));
            this.uj.add(0);
            this.f14284a += j10;
        }
    }

    private void c(long j10, float f10, float f11) {
        float fC = c(f10, 0.0f, 1.0f);
        float fC2 = c(f11, 0.0f, 1.0f);
        int iPow = (int) (((float) Math.pow(fC, 1.5d)) * 255.0f);
        int iMax = Math.max(1, (int) (fC2 * ((int) (j10 / 22))));
        long j11 = j10 - (((long) iMax) * 20);
        for (int i10 = 0; i10 < iMax; i10++) {
            this.ve.add(20L);
            this.uj.add(Integer.valueOf(iPow));
            int i11 = iMax - 1;
            if (i10 < i11) {
                this.ve.add(Long.valueOf(Math.max(2L, j11 / ((long) i11))));
                this.uj.add(0);
            }
        }
        this.f14284a += j10;
    }

    private long[] c(List<Long> list) {
        long[] jArr = new long[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            jArr[i10] = list.get(i10).longValue();
        }
        return jArr;
    }
}
