package com.kwad.components.core.t;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class h {
    private long FG;
    private a alu;
    private long als = 100;
    private long alt = 0;
    private boolean Sw = false;

    @Nullable
    private Handler alv = new Handler(Looper.getMainLooper());
    private Runnable alw = new Runnable() { // from class: com.kwad.components.core.t.h.1
        @Override // java.lang.Runnable
        public final void run() {
            if (h.this.alv == null) {
                return;
            }
            if (h.this.Sw) {
                h.this.alv.postDelayed(this, h.this.als / 2);
                return;
            }
            h.this.wK();
            if (h.this.alv != null) {
                h.this.alv.postDelayed(this, h.this.als);
            }
        }
    };

    public interface a {
        void onProgress(long j10, long j11);
    }

    public h(long j10) {
        this.FG = j10;
    }

    public final void pause() {
        this.Sw = true;
    }

    public final void resume() {
        this.Sw = false;
    }

    public final void start() {
        Handler handler = this.alv;
        if (handler == null) {
            return;
        }
        handler.post(this.alw);
    }

    public final void stop() {
        Handler handler = this.alv;
        if (handler != null) {
            handler.removeCallbacks(this.alw);
            this.alv = null;
        }
    }

    protected final void wK() {
        a aVar = this.alu;
        if (aVar != null) {
            long j10 = this.FG;
            long j11 = j10 - this.alt;
            aVar.onProgress(j11, j10);
            if (j11 <= 0) {
                stop();
            }
        }
        this.alt += this.als;
    }

    public final void a(a aVar) {
        this.alu = aVar;
    }
}
