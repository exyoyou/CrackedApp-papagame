package com.zxing.android.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

/* JADX INFO: loaded from: classes8.dex */
public final class a implements ResultPointCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewfinderView f90547a;

    public a(ViewfinderView viewfinderView) {
        this.f90547a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint point) {
        this.f90547a.a(point);
    }
}
