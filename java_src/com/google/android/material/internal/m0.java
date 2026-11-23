package com.google.android.material.internal;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(18)
class m0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f30945a;

    m0(@NonNull View view) {
        this.f30945a = view.getOverlay();
    }

    @Override // com.google.android.material.internal.n0
    public void a(@NonNull Drawable drawable) {
        this.f30945a.remove(drawable);
    }

    @Override // com.google.android.material.internal.n0
    public void b(@NonNull Drawable drawable) {
        this.f30945a.add(drawable);
    }
}
