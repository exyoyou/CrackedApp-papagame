package com.kwad.components.ad.splashscreen.presenter.a;

import android.content.Context;
import android.text.TextUtils;
import com.kwad.components.core.webview.tachikoma.i;

/* JADX INFO: loaded from: classes2.dex */
public final class b extends i {
    public b(Context context, int i10, int i11) {
        super(context, i10, i11);
    }

    @Override // com.kwad.components.core.webview.tachikoma.i
    public final void f(String str, String str2) {
        if (TextUtils.isEmpty(str) || !str.equals(com.kwad.sdk.core.response.helper.b.em(zb()))) {
            return;
        }
        com.kwad.components.ad.splashscreen.monitor.b.mv().c(zb(), str2);
    }

    @Override // com.kwad.components.core.webview.tachikoma.i
    public final void g(String str, String str2) {
        if (TextUtils.isEmpty(str) || !str.equals(com.kwad.sdk.core.response.helper.b.em(zb()))) {
            return;
        }
        com.kwad.components.ad.splashscreen.monitor.b.mv().d(zb(), str2);
    }
}
