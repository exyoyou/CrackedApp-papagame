package com.google.android.material.sidesheet;

import androidx.annotation.RestrictTo;
import com.google.android.material.sidesheet.c;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
interface Sheet<C extends c> extends com.google.android.material.motion.b {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final int f31724i0 = 1;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final int f31725j0 = 2;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final int f31726k0 = 3;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final int f31727l0 = 5;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final int f31728m0 = 0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final int f31729n0 = 1;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface SheetEdge {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface SheetState {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface StableSheetState {
    }

    void a(C c10);

    void e(C c10);

    void g(int i10);

    int getState();
}
