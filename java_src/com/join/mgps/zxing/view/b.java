package com.join.mgps.zxing.view;

import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;

/* JADX INFO: loaded from: classes3.dex */
public final class b implements ResultPointCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewfinderView f73558a;

    public b(ViewfinderView viewfinderView) {
        this.f73558a = viewfinderView;
    }

    @Override // com.google.zxing.ResultPointCallback
    public void foundPossibleResultPoint(ResultPoint point) {
        this.f73558a.a(point);
    }
}
