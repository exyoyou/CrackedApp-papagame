package com.google.android.material.shape;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes5.dex */
class t extends s {
    t() {
    }

    @Override // com.google.android.material.shape.s
    void b(@NonNull View view) {
        if (this.f31715c == null || this.f31716d.isEmpty() || !j()) {
            return;
        }
        view.invalidate();
    }

    @Override // com.google.android.material.shape.s
    boolean j() {
        return true;
    }
}
