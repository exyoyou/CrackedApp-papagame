package com.kwad.sdk.commercial.smallApp;

import com.ksad.json.annotation.KsJson;
import java.net.URL;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.commercial.c.a {
    public String aJY;
    public String aKD;
    public String aKE;
    public String aKF;
    public String aKf;
    public int status;
    public String url;

    private b(JumpFrom jumpFrom) {
        if (jumpFrom != null) {
            this.aKF = jumpFrom.getValue();
        }
    }

    public static b a(JumpFrom jumpFrom) {
        return new b(jumpFrom);
    }

    public final b dE(int i10) {
        this.status = i10;
        return this;
    }

    public final b dH(String str) {
        this.url = str;
        try {
            URL url = new URL(str);
            this.aJY = url.getHost();
            this.aKf = url.getPath();
        } catch (Throwable unused) {
        }
        return this;
    }

    public final b dI(String str) {
        this.aKD = str;
        return this;
    }

    public final b dJ(String str) {
        this.aKE = str;
        return this;
    }
}
