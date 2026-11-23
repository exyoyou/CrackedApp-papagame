package com.kwad.components.core.webview.jshandler.a;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends com.kwad.components.core.webview.jshandler.e {

    /* JADX INFO: renamed from: com.kwad.components.core.webview.jshandler.a.a$a, reason: collision with other inner class name */
    @KsJson
    public static class C0887a extends com.kwad.sdk.core.response.a.a {
        public String arX;
    }

    @Override // com.kwad.components.core.webview.jshandler.e
    public final String bC(String str) {
        try {
            C0887a c0887a = new C0887a();
            c0887a.parseJson(new JSONObject(str));
            return c0887a.arX;
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.kwad.components.core.webview.jshandler.e, com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "checkAppInstalled";
    }
}
