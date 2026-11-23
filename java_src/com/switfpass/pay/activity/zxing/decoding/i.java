package com.switfpass.pay.activity.zxing.decoding;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.switfpass.pay.activity.zxing.ViewfinderView;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements ResultPointCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewfinderView f82633a;

    public i(ViewfinderView viewfinderView) {
        this.f82633a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public final void foundPossibleResultPoint(ResultPoint resultPoint) {
        this.f82633a.a(resultPoint);
    }
}
