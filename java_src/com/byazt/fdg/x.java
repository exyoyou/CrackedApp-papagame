package com.byazt.fdg;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.DigestException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 71})
public class x implements sl {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ByteBuffer f14138c;

    public x(ByteBuffer byteBuffer) {
        this.f14138c = byteBuffer.slice();
    }

    @Override // com.byazt.fdg.sl
    public long c() {
        return this.f14138c.capacity();
    }

    @Override // com.byazt.fdg.sl
    public void c(da daVar, long j10, int i10) throws DigestException, IOException {
        ByteBuffer byteBufferSlice;
        synchronized (this.f14138c) {
            this.f14138c.position(0);
            int i11 = (int) j10;
            this.f14138c.limit(i10 + i11);
            this.f14138c.position(i11);
            byteBufferSlice = this.f14138c.slice();
        }
        daVar.c(byteBufferSlice);
    }
}
