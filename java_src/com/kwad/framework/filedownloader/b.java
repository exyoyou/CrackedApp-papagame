package com.kwad.framework.filedownloader;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements s.a, s.b {
    private long ayR;
    private long ayS;
    private long ayT;
    private int ayU;
    private int ayV = 1000;
    private long mStartTime;

    @Override // com.kwad.framework.filedownloader.s.b
    public final void aa(long j10) {
        if (this.ayV <= 0) {
            return;
        }
        boolean z10 = true;
        if (this.ayR != 0) {
            long jUptimeMillis = SystemClock.uptimeMillis() - this.ayR;
            if (jUptimeMillis >= this.ayV || (this.ayU == 0 && jUptimeMillis > 0)) {
                int i10 = (int) ((j10 - this.ayS) / jUptimeMillis);
                this.ayU = i10;
                this.ayU = Math.max(0, i10);
            } else {
                z10 = false;
            }
        }
        if (z10) {
            this.ayS = j10;
            this.ayR = SystemClock.uptimeMillis();
        }
    }

    @Override // com.kwad.framework.filedownloader.s.b
    public final void end(long j10) {
        if (this.mStartTime <= 0) {
            return;
        }
        long j11 = j10 - this.ayT;
        this.ayR = 0L;
        long jUptimeMillis = SystemClock.uptimeMillis() - this.mStartTime;
        if (jUptimeMillis <= 0) {
            this.ayU = (int) j11;
        } else {
            this.ayU = (int) (j11 / jUptimeMillis);
        }
    }

    @Override // com.kwad.framework.filedownloader.s.a
    public final int getSpeed() {
        return this.ayU;
    }

    @Override // com.kwad.framework.filedownloader.s.b
    public final void reset() {
        this.ayU = 0;
        this.ayR = 0L;
    }

    @Override // com.kwad.framework.filedownloader.s.b
    public final void start(long j10) {
        this.mStartTime = SystemClock.uptimeMillis();
        this.ayT = j10;
    }
}
