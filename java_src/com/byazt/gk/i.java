package com.byazt.gk;

import android.os.Looper;
import android.util.SparseArray;
import com.byazt.nc.z;
import com.byazt.omf.h;
import com.byazt.omf.rh;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 148, 42})
public class i extends com.byazt.nh.sp implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f14571c;

    public i(Function<SparseArray<Object>, Object> function) {
        super(function);
        this.f14571c = System.currentTimeMillis();
    }

    @Override // com.byazt.nh.sp
    public void tt(final z zVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.tt(zVar);
        } else {
            rh.a().post(new Runnable() { // from class: com.byazt.gk.i.4
                @Override // java.lang.Runnable
                public void run() {
                    i.super.tt(zVar);
                }
            });
        }
    }

    @Override // com.byazt.nh.sp
    public void c(final int i10, final String str) {
        if (str == null) {
            str = h.UNKNOWN_ERR_MSG;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.c(i10, str);
        } else {
            rh.a().post(new Runnable() { // from class: com.byazt.gk.i.1
                @Override // java.lang.Runnable
                public void run() {
                    i.super.c(i10, str);
                }
            });
        }
    }

    @Override // com.byazt.gk.tt
    public long tt() {
        return this.f14571c;
    }

    @Override // com.byazt.nh.sp
    public void c(final z zVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.c(zVar);
        } else {
            rh.a().post(new Runnable() { // from class: com.byazt.gk.i.2
                @Override // java.lang.Runnable
                public void run() {
                    i.super.c(zVar);
                }
            });
        }
    }

    @Override // com.byazt.nh.sp
    public void c() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.c();
        } else {
            rh.a().post(new Runnable() { // from class: com.byazt.gk.i.3
                @Override // java.lang.Runnable
                public void run() {
                    i.super.c();
                }
            });
        }
    }
}
