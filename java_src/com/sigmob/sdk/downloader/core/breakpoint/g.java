package com.sigmob.sdk.downloader.core.breakpoint;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public interface g {
    c a(int id2);

    c a(com.sigmob.sdk.downloader.f task) throws IOException;

    c a(com.sigmob.sdk.downloader.f task, c ignored);

    String a(String url);

    boolean a();

    boolean a(c breakpointInfo) throws IOException;

    int b(com.sigmob.sdk.downloader.f task);

    void b(int id2);

    boolean c(int id2);
}
