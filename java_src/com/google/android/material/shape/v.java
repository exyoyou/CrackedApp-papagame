package com.google.android.material.shape;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(33)
class v extends s {

    class a extends ViewOutlineProvider {
        a() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (v.this.f31717e.isEmpty()) {
                return;
            }
            outline.setPath(v.this.f31717e);
        }
    }

    v(@NonNull View view) {
        l(view);
    }

    @DoNotInline
    private void l(View view) {
        view.setOutlineProvider(new a());
    }

    @Override // com.google.android.material.shape.s
    void b(@NonNull View view) {
        view.setClipToOutline(!j());
        if (j()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    @Override // com.google.android.material.shape.s
    boolean j() {
        return this.f31713a;
    }
}
