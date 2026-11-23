package com.kwad.sdk.core.video.videoview;

import android.content.Context;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b extends RelativeLayout {

    @NonNull
    protected final c aZI;
    private Runnable amB;

    public b(Context context, @NonNull c cVar) {
        super(context);
        this.aZI = cVar;
    }

    protected abstract void onPlayStateChanged(int i10);

    public void q(int i10, int i11) {
    }

    protected abstract void reset();

    protected abstract void xk();

    protected final void xq() {
        xr();
        if (this.amB == null) {
            this.amB = new Runnable() { // from class: com.kwad.sdk.core.video.videoview.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.this.xk();
                    if (b.this.amB != null) {
                        b bVar = b.this;
                        bVar.postDelayed(bVar.amB, 1000L);
                    }
                }
            };
        }
        post(this.amB);
    }

    protected final void xr() {
        Runnable runnable = this.amB;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.amB = null;
        }
    }
}
