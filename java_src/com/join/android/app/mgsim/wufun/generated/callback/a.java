package com.join.android.app.mgsim.wufun.generated.callback;

import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public final class a implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final InterfaceC0649a f48492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f48493c;

    /* JADX INFO: renamed from: com.join.android.app.mgsim.wufun.generated.callback.a$a, reason: collision with other inner class name */
    public interface InterfaceC0649a {
        void a(int sourceId, View callbackArg_0);
    }

    public a(InterfaceC0649a listener, int sourceId) {
        this.f48492b = listener;
        this.f48493c = sourceId;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View callbackArg_0) {
        this.f48492b.a(this.f48493c, callbackArg_0);
    }
}
