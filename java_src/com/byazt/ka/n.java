package com.byazt.ka;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 874, 46})
public abstract class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f16094c = "n";
    public Looper tt = Looper.getMainLooper();
    public final Set<String> ve = new HashSet(1);

    /* JADX INFO: renamed from: com.byazt.ka.n$5, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 874, 582})
    static /* synthetic */ class AnonymousClass5 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f16099c;

        static {
            int[] iArr = new int[ve.values().length];
            f16099c = iArr;
            try {
                iArr[ve.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16099c[ve.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f16099c[ve.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public abstract void c();

    public abstract void c(String str);

    public final synchronized boolean c(@NonNull String str, int i10) {
        try {
            if (i10 == 0) {
                return c(str, ve.GRANTED);
            }
            return c(str, ve.DENIED);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean tt(String str) {
        com.byazt.eu.tt.tt(f16094c, "permission not found:".concat(String.valueOf(str)));
        return true;
    }

    public final synchronized boolean c(@NonNull final String str, ve veVar) {
        this.ve.remove(str);
        int i10 = AnonymousClass5.f16099c[veVar.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                new Handler(this.tt).post(new Runnable() { // from class: com.byazt.ka.n.2
                    @Override // java.lang.Runnable
                    public void run() {
                        n.this.c(str);
                    }
                });
                return true;
            }
            if (i10 == 3) {
                if (tt(str)) {
                    if (this.ve.isEmpty()) {
                        new Handler(this.tt).post(new Runnable() { // from class: com.byazt.ka.n.3
                            @Override // java.lang.Runnable
                            public void run() {
                                n.this.c();
                            }
                        });
                        return true;
                    }
                } else {
                    new Handler(this.tt).post(new Runnable() { // from class: com.byazt.ka.n.4
                        @Override // java.lang.Runnable
                        public void run() {
                            n.this.c(str);
                        }
                    });
                    return true;
                }
            }
        } else if (this.ve.isEmpty()) {
            new Handler(this.tt).post(new Runnable() { // from class: com.byazt.ka.n.1
                @Override // java.lang.Runnable
                public void run() {
                    n.this.c();
                }
            });
            return true;
        }
        return false;
    }

    public final synchronized void c(@NonNull String[] strArr) {
        Collections.addAll(this.ve, strArr);
    }
}
