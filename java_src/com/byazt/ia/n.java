package com.byazt.ia;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 515, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    public static volatile n f15273c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public uj f15274n;
    public Context tt;
    public tt uj;
    public Map<com.byazt.uy.ve, ve> ve = new HashMap();

    /* JADX INFO: renamed from: com.byazt.ia.n$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 515, 219})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f15275c;

        static {
            int[] iArr = new int[com.byazt.uy.ve.values().length];
            f15275c = iArr;
            try {
                iArr[com.byazt.uy.ve.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15275c[com.byazt.uy.ve.ANR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15275c[com.byazt.uy.ve.CUSTOM_JAVA.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private n(@NonNull Context context) {
        this.tt = context;
        this.uj = new tt(this.tt);
        this.f15274n = new uj(this.tt);
    }

    public static n c() {
        if (f15273c != null) {
            return f15273c;
        }
        throw new IllegalArgumentException("CrashContextAssembly not init");
    }

    public static void c(Context context) {
        if (f15273c == null) {
            f15273c = new n(context);
        }
    }

    @Nullable
    private ve c(com.byazt.uy.ve veVar) {
        ve spVar = this.ve.get(veVar);
        if (spVar != null) {
            return spVar;
        }
        int i10 = AnonymousClass1.f15275c[veVar.ordinal()];
        if (i10 == 1) {
            spVar = new sp(this.tt, this.uj, this.f15274n);
        } else if (i10 == 2) {
            spVar = new c(this.tt, this.uj, this.f15274n);
        } else if (i10 == 3) {
            spVar = new a(this.tt, this.uj, this.f15274n);
        }
        if (spVar != null) {
            this.ve.put(veVar, spVar);
        }
        return spVar;
    }

    public com.byazt.xz.c c(com.byazt.uy.ve veVar, com.byazt.xz.c cVar) {
        ve veVarC;
        return (veVar == null || (veVarC = c(veVar)) == null) ? cVar : veVarC.c(cVar);
    }
}
