package com.kwad.framework.filedownloader.download;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    final long aAW;
    final long aAX;
    final long aAY;
    final long contentLength;

    a(long j10, long j11, long j12, long j13) {
        this.aAW = j10;
        this.aAX = j11;
        this.aAY = j12;
        this.contentLength = j13;
    }

    public final String toString() {
        return com.kwad.framework.filedownloader.f.f.c("range[%d, %d) current offset[%d]", Long.valueOf(this.aAW), Long.valueOf(this.aAY), Long.valueOf(this.aAX));
    }
}
