package com.kwad.components.ad.reward.n;

import android.view.ViewGroup;
import android.view.ViewStub;
import androidx.annotation.IdRes;

/* JADX INFO: loaded from: classes2.dex */
public abstract class s extends d {
    protected ViewGroup wT;

    public final void a(ViewGroup viewGroup, @IdRes int i10, @IdRes int i11) {
        if (this.wT != null) {
            return;
        }
        ViewStub viewStub = (ViewStub) viewGroup.findViewById(i10);
        if (viewStub != null) {
            this.wT = (ViewGroup) viewStub.inflate();
        } else {
            this.wT = (ViewGroup) viewGroup.findViewById(i11);
        }
    }

    @Override // com.kwad.components.ad.reward.n.d
    public ViewGroup ib() {
        return this.wT;
    }
}
