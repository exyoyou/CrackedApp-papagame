package com.kwad.components.ad.fullscreen.b;

import com.ksad.json.annotation.KsJson;
import com.kwad.sdk.core.d.c;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.core.response.a.a {

    /* JADX INFO: renamed from: kc, reason: collision with root package name */
    private static SimpleDateFormat f75138kc = new SimpleDateFormat("yyyy-MM-dd");
    public long kd;
    public int ke;

    public b() {
        this.kd = -1L;
        this.ke = -1;
    }

    public final boolean Q(int i10) {
        int i11 = this.ke;
        return i11 > 0 && i11 >= i10;
    }

    public final boolean m(long j10) {
        if (this.kd > 0 && j10 > 0) {
            try {
                return f75138kc.format(new Date(this.kd)).equals(f75138kc.format(new Date(j10)));
            } catch (Exception e10) {
                c.printStackTraceOnly(e10);
            }
        }
        return false;
    }

    public b(long j10, int i10) {
        this.kd = j10;
        this.ke = 1;
    }
}
