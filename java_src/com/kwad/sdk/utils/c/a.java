package com.kwad.sdk.utils.c;

import android.os.SystemClock;
import android.text.TextUtils;
import com.kwad.sdk.utils.ai;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T, P> {
    private String bsK;
    private boolean bsL = false;

    public a(String str) {
        this.bsK = str;
    }

    private T XG() {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        String strI = ai.i("ksadsdk_long_cost_api_cache", this.bsK, "");
        if (TextUtils.isEmpty(strI)) {
            return null;
        }
        T tIA = iA(strI);
        com.kwad.sdk.core.d.c.d("AbstractFetcher", this.bsK + " readFromLocal cost: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return tIA;
    }

    private T v(P p10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        T tX = x(p10);
        w(tX);
        com.kwad.sdk.core.d.c.d("AbstractFetcher", this.bsK + " fetchAndSave cost: " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        return tX;
    }

    private void w(T t10) {
        if (t10 == null) {
            return;
        }
        ai.h("ksadsdk_long_cost_api_cache", this.bsK, dataToString(t10));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0010  */
    public final T a(P p10, boolean z10) {
        T tV;
        if (z10) {
            tV = XG();
            if (tV != null) {
                this.bsL = true;
                b(tV, p10);
            }
            if (tV == null) {
                tV = v(p10);
            }
        } else {
            tV = v(p10);
        }
        com.kwad.sdk.core.d.c.d("AbstractFetcher", this.bsK + " fetchData: " + tV + ", isFetchFromCache: " + this.bsL);
        return tV;
    }

    protected void b(T t10, P p10) {
    }

    protected abstract String dataToString(T t10);

    protected abstract T iA(String str);

    protected abstract T x(P p10);
}
