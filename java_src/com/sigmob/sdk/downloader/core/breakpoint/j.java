package com.sigmob.sdk.downloader.core.breakpoint;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface j extends g {
    void a(int id2, com.sigmob.sdk.downloader.core.cause.a cause, Exception exception);

    void a(c info, int blockIndex, long increaseLength) throws IOException;

    void d(int id2);

    c e(int id2);

    boolean f(int id2);

    boolean g(int id2);
}
