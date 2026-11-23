package com.kwad.components.core.webview.tachikoma.b;

import androidx.annotation.NonNull;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class i implements com.kwad.sdk.core.webview.c.a {
    private a atN;

    public interface a {
        void a(com.kwad.sdk.core.webview.d.b.a aVar);
    }

    public i(a aVar) {
        this.atN = aVar;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        com.kwad.sdk.core.webview.d.b.a aVar = new com.kwad.sdk.core.webview.d.b.a();
        try {
            aVar.parseJson(new JSONObject(str));
        } catch (JSONException e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
        }
        a aVar2 = this.atN;
        if (aVar2 != null) {
            aVar2.a(aVar);
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "notifyClickAd";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
