package com.sigmob.sdk.archives;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public abstract class c extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f78705b = 255;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private byte[] f78706a = new byte[1];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f78707c = 0;

    public abstract a a() throws IOException;

    protected void a(int read) {
        b(read);
    }

    @Deprecated
    public int b() {
        return (int) this.f78707c;
    }

    protected long c() {
        return this.f78707c;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.f78706a, 0, 1) == -1) {
            return -1;
        }
        return this.f78706a[0] & 255;
    }

    private void b(long read) {
        if (read != -1) {
            this.f78707c += read;
        }
    }

    protected void a(long pushedBack) {
        this.f78707c -= pushedBack;
    }

    public boolean a(a ae) {
        return true;
    }
}
