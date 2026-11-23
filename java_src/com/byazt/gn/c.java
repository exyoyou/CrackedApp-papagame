package com.byazt.gn;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.byazt.jzl.a;
import com.byazt.jzl.tt;
import com.byazt.tq.ve;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1634, 20})
public class c extends MediaDataSource {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap<String, c> f14601c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final a f14602n;
    public final ve tt;
    public final Context uj;
    public long ve = -2147483648L;

    public c(Context context, tt ttVar, a aVar) {
        this.uj = context;
        this.f14602n = aVar;
        this.tt = new com.byazt.tq.tt(context, ttVar, aVar);
    }

    public a c() {
        return this.f14602n;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.byazt.lt.tt.c("SdkMediaDataSource", "close: ", this.f14602n.getUrl());
        ve veVar = this.tt;
        if (veVar != null) {
            veVar.tt();
        }
        f14601c.remove(this.f14602n.getFileNameKey());
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        if (this.ve == -2147483648L) {
            if (this.uj == null || TextUtils.isEmpty(this.f14602n.getUrl())) {
                return -1L;
            }
            this.ve = this.tt.ve();
            com.byazt.lt.tt.c("SdkMediaDataSource", "getSize: " + this.ve);
        }
        return this.ve;
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j10, byte[] bArr, int i10, int i11) throws IOException {
        return this.tt.c(j10, bArr, i10, i11);
    }

    public static c c(Context context, tt ttVar, a aVar) {
        c cVar = new c(context, ttVar, aVar);
        f14601c.put(aVar.getFileNameKey(), cVar);
        return cVar;
    }
}
