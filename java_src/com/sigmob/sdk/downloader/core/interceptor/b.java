package com.sigmob.sdk.downloader.core.interceptor;

import com.sigmob.sdk.downloader.f;
import com.sigmob.sdk.downloader.g;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes3.dex */
public class b implements c.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final InputStream f80673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f80674b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.file.d f80675c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f80676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f f80677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.sigmob.sdk.downloader.core.dispatcher.a f80678f = g.j().b();

    public b(int blockIndex, InputStream inputStream, com.sigmob.sdk.downloader.core.file.d outputStream, f task) {
        this.f80676d = blockIndex;
        this.f80673a = inputStream;
        this.f80674b = new byte[task.o()];
        this.f80675c = outputStream;
        this.f80677e = task;
    }

    @Override // com.sigmob.sdk.downloader.core.interceptor.c.b
    public long b(com.sigmob.sdk.downloader.core.download.f chain) throws IOException {
        if (chain.f().k()) {
            throw com.sigmob.sdk.downloader.core.exception.c.f80626a;
        }
        g.j().g().b(chain.c());
        int i10 = this.f80673a.read(this.f80674b);
        if (i10 == -1) {
            return i10;
        }
        this.f80675c.a(this.f80676d, this.f80674b, i10);
        long j10 = i10;
        chain.b(j10);
        if (this.f80678f.a(this.f80677e)) {
            chain.j();
        }
        return j10;
    }
}
