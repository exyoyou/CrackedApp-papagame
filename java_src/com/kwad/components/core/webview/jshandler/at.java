package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
public final class at implements com.kwad.sdk.core.webview.c.a {
    private com.kwad.sdk.core.webview.c.c apx;
    private a arl = new a();

    @KsJson
    public class a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        public int f75296id;
        public int status;

        public a() {
        }
    }

    private void v(int i10, int i11) {
        com.kwad.sdk.core.webview.c.c cVar = this.apx;
        if (cVar != null) {
            a aVar = this.arl;
            aVar.f75296id = i10;
            aVar.status = 2;
            cVar.b(aVar);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        this.apx = cVar;
    }

    public final void ce(int i10) {
        v(1, 2);
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "registerAnimationListener";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
        this.apx = null;
    }
}
