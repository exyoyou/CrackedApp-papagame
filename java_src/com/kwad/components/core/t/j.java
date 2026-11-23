package com.kwad.components.core.t;

import android.os.SystemClock;
import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public final class j {
    private static long alA;
    private boolean alB;
    private long alC;
    private long alz;

    public j() {
        this(false);
    }

    public final void a(View view, @NonNull View.OnClickListener onClickListener) {
        com.kwad.sdk.core.d.c.d("click", "cur:" + SystemClock.elapsedRealtime() + " pre:" + this.alz + " global:" + this.alB + " gt:" + alA);
        if (SystemClock.elapsedRealtime() - (this.alB ? alA : this.alz) > this.alC) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.alz = jElapsedRealtime;
            alA = jElapsedRealtime;
            onClickListener.onClick(view);
        }
    }

    public j(boolean z10) {
        this(z10, 1000L);
    }

    private j(boolean z10, long j10) {
        this.alB = z10;
        this.alC = 1000L;
    }
}
