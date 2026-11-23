package com.kwad.components.core.t;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i implements View.OnClickListener {
    private j aly;

    public i() {
        this(false);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.aly.a(view, this);
    }

    private i(boolean z10) {
        this.aly = new j(false);
    }
}
