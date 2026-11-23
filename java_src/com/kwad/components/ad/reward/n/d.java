package com.kwad.components.ad.reward.n;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.kwad.sdk.utils.as;

/* JADX INFO: loaded from: classes2.dex */
public abstract class d {
    protected void a(r rVar) {
    }

    protected void ad(boolean z10) {
    }

    public final void b(@NonNull r rVar) {
        a(rVar);
        ib().getContext();
        ad(as.VM());
    }

    public abstract ViewGroup ib();

    public void onUnbind() {
    }
}
