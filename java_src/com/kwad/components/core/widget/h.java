package com.kwad.components.core.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(api = 21)
public final class h extends ViewOutlineProvider {
    private float awz;

    private h(float f10) {
        this.awz = f10;
    }

    @RequiresApi(api = 21)
    public static void f(View view, float f10) {
        if (f10 <= 0.0f) {
            view.setOutlineProvider(null);
            view.setClipToOutline(false);
        } else {
            view.setOutlineProvider(new h(f10));
            view.setClipToOutline(true);
        }
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.awz);
    }
}
