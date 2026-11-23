package com.kwad.components.core.innerEc.live.a;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.ac;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {

    /* JADX INFO: renamed from: com.kwad.components.core.innerEc.live.a.a$a, reason: collision with other inner class name */
    @KsJson
    public static final class C0857a extends com.kwad.sdk.core.response.a.a implements com.kwad.sdk.core.b {
        public String TB;
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        try {
            Map<String, String> mapRj = com.kwad.components.core.innerEc.f.rj();
            C0857a c0857a = new C0857a();
            if (mapRj == null) {
                c0857a.TB = "";
            } else {
                c0857a.TB = ac.parseMap2JSON(mapRj).toString();
            }
            cVar.b(c0857a);
        } catch (Exception e10) {
            cVar.onError(-1, e10.getMessage());
        }
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "getMerchantCookie";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }
}
