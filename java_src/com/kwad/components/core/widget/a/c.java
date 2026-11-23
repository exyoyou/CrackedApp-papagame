package com.kwad.components.core.widget.a;

import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.cb;

/* JADX INFO: loaded from: classes2.dex */
public class c extends a {
    private View mRootView;

    public c(@NonNull View view, int i10) {
        super(view, i10);
        this.mRootView = view;
    }

    @Override // com.kwad.components.core.widget.a.a
    public boolean ah() {
        return cb.a(this.mRootView, 70, true);
    }
}
