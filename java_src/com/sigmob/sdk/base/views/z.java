package com.sigmob.sdk.base.views;

import android.content.Context;
import android.webkit.JavascriptInterface;
import com.sigmob.sdk.base.models.BaseAdUnit;

/* JADX INFO: loaded from: classes5.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f80304a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f80305b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BaseAdUnit f80306c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f80307d;

    public interface a {
        void onApkDownloadProcess();
    }

    public z(Context context, BaseAdUnit adUnit, a listener) {
        this.f80305b = context;
        this.f80306c = adUnit;
        this.f80307d = listener;
    }

    private int a() {
        BaseAdUnit baseAdUnit = this.f80306c;
        if (baseAdUnit == null) {
            return -1;
        }
        return baseAdUnit.getApkDownloadType();
    }

    @JavascriptInterface
    public int cancelDownloadTask() {
        int iA = a();
        if (iA == -1 || iA == 0) {
            return -1;
        }
        return com.sigmob.sdk.base.common.o.c(this.f80305b, this.f80306c);
    }

    @JavascriptInterface
    public int getApKDownloadProcess() {
        long[] jArrD;
        if (com.sigmob.sdk.base.utils.w.b(this.f80307d)) {
            this.f80307d.onApkDownloadProcess();
        }
        if (this.f80305b == null || this.f80306c == null) {
            return -1;
        }
        if (a() == 0) {
            jArrD = com.sigmob.sdk.base.common.q.a(this.f80305b, this.f80306c.getDownloadId());
        } else {
            jArrD = com.sigmob.sdk.base.common.o.d(this.f80305b, this.f80306c);
        }
        int i10 = (int) jArrD[2];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    return i10 != 8 ? -1 : 100;
                }
                return -2;
            }
            long j10 = jArrD[0];
            long j11 = jArrD[1];
            if (j11 != 0 && j10 != 0) {
                return (int) ((j10 * 100) / j11);
            }
        }
        return 0;
    }

    @JavascriptInterface
    public int getApKDownloadType() {
        return a();
    }

    @JavascriptInterface
    public int pauseDownload() {
        int iA = a();
        if (iA == -1 || iA == 0) {
            return -1;
        }
        return com.sigmob.sdk.base.common.o.a(this.f80305b, this.f80306c);
    }

    @JavascriptInterface
    public int resumeDownload() {
        int iA = a();
        if (iA == -1 || iA == 0) {
            return -1;
        }
        return com.sigmob.sdk.base.common.o.b(this.f80305b, this.f80306c);
    }
}
