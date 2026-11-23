package com.sigmob.sdk.videoAd;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes3.dex */
public abstract class b extends com.sigmob.sdk.base.common.j {
    protected b(Activity activity, String uuid, com.sigmob.sdk.base.common.k listener) {
        super(activity, uuid, listener);
    }

    protected void b(Context context, int orientation, Bundle intentExtras) {
        try {
            a(context.getApplicationContext(), orientation, intentExtras);
            boolean z10 = intentExtras.getBoolean(com.sigmob.sdk.base.n.f79596w, false);
            boolean z11 = intentExtras.getBoolean(com.sigmob.sdk.base.n.f79595v, false);
            if (Build.VERSION.SDK_INT >= 27) {
                if (z10) {
                    n().setTurnScreenOn(true);
                }
                if (z11) {
                    n().setShowWhenLocked(true);
                    n().setTurnScreenOn(true);
                }
            }
            if (z10) {
                n().getWindow().addFlags(128);
            }
            if (z11) {
                n().getWindow().addFlags(2621440);
            }
        } catch (Throwable th) {
            SigmobLog.e("optionSetting error", th);
        }
    }

    @Override // com.sigmob.sdk.base.common.j
    public void e() {
        this.f79163d.onSetContentView(this.f79162c);
    }

    protected void b(boolean shouldFinish) {
        if (shouldFinish) {
            this.f79163d.a();
        }
    }
}
