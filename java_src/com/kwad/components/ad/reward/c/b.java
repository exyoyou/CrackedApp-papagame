package com.kwad.components.ad.reward.c;

import com.ksad.json.annotation.KsJson;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class b extends com.kwad.sdk.core.response.a.a {
    public static int STATUS_NONE = 2;
    public static int vg = 1;
    public static int vh = 3;
    public int vi;
    public int vj;

    public b() {
        this.vi = STATUS_NONE;
    }

    public final void ak(int i10) {
        this.vj = i10;
    }

    public final int getType() {
        return this.vi;
    }

    public final int ik() {
        return this.vj;
    }

    public b(int i10) {
        this.vi = 1;
    }
}
