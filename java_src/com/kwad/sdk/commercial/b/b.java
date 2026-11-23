package com.kwad.sdk.commercial.b;

import com.ksad.json.annotation.KsJson;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public String aJY;
    public String aKf;
    public String aKg;
    public int aKh;
    public int aKi;
    public int status;
    public String url;

    public static b Ip() {
        return new b();
    }

    public final b dr(String str) {
        this.url = str;
        try {
            URL url = new URL(str);
            this.aJY = url.getHost();
            this.aKf = url.getPath();
        } catch (Throwable unused) {
        }
        return this;
    }

    public final b ds(String str) {
        this.aKg = str;
        return this;
    }

    public final b dx(int i10) {
        this.status = i10;
        return this;
    }

    public final b dy(int i10) {
        this.aKh = i10;
        return this;
    }

    public final b dz(int i10) {
        this.aKi = i10;
        return this;
    }
}
