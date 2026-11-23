package com.byazt.rx;

import androidx.lifecycle.i;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 152, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference<Long> f19539c = new AtomicReference<>(0L);

    public static void c(long j10) {
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (i10 >= 5) {
                return;
            }
            AtomicReference<Long> atomicReference = f19539c;
            long jLongValue = atomicReference.get().longValue();
            if (i.a(atomicReference, Long.valueOf(jLongValue), Long.valueOf(jLongValue | j10))) {
                return;
            } else {
                i10 = i11;
            }
        }
    }
}
