package com.kwad.components.core.webview.tachikoma.c;

import android.text.TextUtils;
import com.ksad.json.annotation.KsJson;
import com.sigmob.sdk.base.mta.PointCategory;

/* JADX INFO: loaded from: classes2.dex */
@KsJson
public class y extends com.kwad.sdk.core.response.a.a {
    public String auA;
    public int errorCode;
    public String errorReason;
    public int rq;

    public final boolean isFailed() {
        return TextUtils.equals(com.alipay.sdk.util.f.f7234h, this.auA);
    }

    public final boolean zr() {
        return TextUtils.equals("start", this.auA);
    }

    public final boolean zs() {
        return TextUtils.equals(PointCategory.END, this.auA);
    }

    public final boolean zt() {
        return TextUtils.equals("progress", this.auA);
    }

    public final boolean zu() {
        return TextUtils.equals(com.sigmob.sdk.base.common.a.f78876j, this.auA);
    }

    public final boolean zv() {
        return TextUtils.equals("resume", this.auA);
    }

    public final int zw() {
        try {
            return (int) Long.parseLong(this.errorReason);
        } catch (NumberFormatException e10) {
            com.kwad.sdk.core.d.c.printStackTrace(e10);
            return 0;
        }
    }
}
