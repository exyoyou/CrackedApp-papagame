package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class g {
    private g() {
        throw new UnsupportedOperationException();
    }

    public static l a(l lVar) {
        return b(lVar) ? l.a(lVar.d(), lVar.c(), 70.0d) : lVar;
    }

    public static boolean b(l lVar) {
        return ((((double) Math.round(lVar.d())) > 90.0d ? 1 : (((double) Math.round(lVar.d())) == 90.0d ? 0 : -1)) >= 0 && (((double) Math.round(lVar.d())) > 111.0d ? 1 : (((double) Math.round(lVar.d())) == 111.0d ? 0 : -1)) <= 0) && ((((double) Math.round(lVar.c())) > 16.0d ? 1 : (((double) Math.round(lVar.c())) == 16.0d ? 0 : -1)) > 0) && ((((double) Math.round(lVar.e())) > 65.0d ? 1 : (((double) Math.round(lVar.e())) == 65.0d ? 0 : -1)) < 0);
    }
}
