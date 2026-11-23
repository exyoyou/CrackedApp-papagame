package com.kingja.loadsir.callback;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes3.dex */
public class SuccessCallback extends Callback {
    public SuccessCallback(View view, Context context, Callback.OnReloadListener onReloadListener) {
        super(view, context, onReloadListener);
    }

    public void hide() {
        obtainRootView().setVisibility(4);
    }

    @Override // com.kingja.loadsir.callback.Callback
    protected int onCreateView() {
        return 0;
    }

    public void show() {
        obtainRootView().setVisibility(0);
    }

    public void showWithCallback(boolean z10) {
        obtainRootView().setVisibility(z10 ? 0 : 4);
    }
}
