package com.kwad.components.core.webview.jshandler;

import androidx.annotation.NonNull;
import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.utils.by;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.kwad.sdk.core.webview.c.a {

    /* JADX INFO: renamed from: app, reason: collision with root package name */
    private b f75294app;

    /* JADX INFO: renamed from: com.kwad.components.core.webview.jshandler.a$a, reason: collision with other inner class name */
    @KsJson
    public static class C0886a extends com.kwad.sdk.core.response.a.a {
        public String PC;
        public String aps;
        public String apt;
    }

    public interface b {
        void c(C0886a c0886a);
    }

    @KsJson
    public static class c extends com.kwad.sdk.core.response.a.a {
        public int apu;
        public long apv;
        public boolean apw;
        public int errorCode;
    }

    public a(b bVar) {
        this.f75294app = bVar;
    }

    private void b(final C0886a c0886a) {
        by.postOnUiThread(new com.kwad.sdk.utils.bi() { // from class: com.kwad.components.core.webview.jshandler.a.1
            @Override // com.kwad.sdk.utils.bi
            public final void doTask() {
                if (a.this.f75294app != null) {
                    a.this.f75294app.c(c0886a);
                }
            }
        });
    }

    @Override // com.kwad.sdk.core.webview.c.a
    @NonNull
    public final String getKey() {
        return "adOutCallback";
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void onDestroy() {
    }

    @Override // com.kwad.sdk.core.webview.c.a
    public final void a(String str, @NonNull com.kwad.sdk.core.webview.c.c cVar) {
        try {
            C0886a c0886a = new C0886a();
            c0886a.parseJson(new JSONObject(str));
            b(c0886a);
        } catch (Throwable unused) {
        }
    }
}
