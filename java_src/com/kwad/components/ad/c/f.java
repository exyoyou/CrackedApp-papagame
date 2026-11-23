package com.kwad.components.ad.c;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class f extends com.kwad.components.core.widget.a.c {
    public f(@NonNull View view, int i10) {
        super(view, i10);
    }

    @Override // com.kwad.components.core.widget.a.c, com.kwad.components.core.widget.a.a
    public final boolean ah() {
        com.kwad.sdk.core.c.b.LW();
        if (!com.kwad.sdk.core.c.b.isEnable()) {
            return super.ah();
        }
        com.kwad.sdk.core.c.b.LW();
        return com.kwad.sdk.core.c.b.isAppOnForeground() && super.ah();
    }
}
