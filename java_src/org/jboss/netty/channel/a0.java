package org.jboss.netty.channel;

import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes10.dex */
public class a0 implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FileChannel f95510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f95511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f95512c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f95513d;

    public a0(FileChannel fileChannel, long j10, long j11) {
        this(fileChannel, j10, j11, false);
    }

    @Override // org.jboss.netty.util.b
    public void a() {
        try {
            this.f95510a.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public boolean c() {
        return this.f95513d;
    }

    @Override // org.jboss.netty.channel.g0
    public long getCount() {
        return this.f95512c;
    }

    @Override // org.jboss.netty.channel.g0
    public long getPosition() {
        return this.f95511b;
    }

    @Override // org.jboss.netty.channel.g0
    public long transferTo(WritableByteChannel writableByteChannel, long j10) throws IOException {
        long j11 = this.f95512c - j10;
        if (j11 >= 0 && j10 >= 0) {
            if (j11 == 0) {
                return 0L;
            }
            return this.f95510a.transferTo(this.f95511b + j10, j11, writableByteChannel);
        }
        throw new IllegalArgumentException("position out of range: " + j10 + " (expected: 0 - " + (this.f95512c - 1) + ')');
    }

    public a0(FileChannel fileChannel, long j10, long j11, boolean z10) {
        this.f95510a = fileChannel;
        this.f95511b = j10;
        this.f95512c = j11;
        this.f95513d = z10;
    }
}
