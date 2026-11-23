package com.join.mgps.zxing.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements ResultPointCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.zxing.android.view.ViewfinderView f73557a;

    public a(com.zxing.android.view.ViewfinderView viewfinderView) {
        this.f73557a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint point) {
        this.f73557a.a(point);
    }
}
