package com.coremedia.iso.boxes.mdat;

import com.coremedia.iso.boxes.d;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.c;
import com.googlecode.mp4parser.e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Logger f24986g = Logger.getLogger(a.class.getName());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f24987h = "mdat";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f24988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f24989c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f24990d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f24991e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f24992f;

    private static void b(e eVar, long j10, long j11, WritableByteChannel writableByteChannel) throws IOException {
        long jW = 0;
        while (jW < j11) {
            jW += eVar.w(j10 + jW, Math.min(67076096L, j11 - jW), writableByteChannel);
        }
    }

    @Override // com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        b(this.f24990d, this.f24991e, this.f24992f, writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.d
    public long e() {
        return this.f24991e;
    }

    @Override // com.coremedia.iso.boxes.d
    public void f(j jVar) {
        this.f24988b = jVar;
    }

    @Override // com.coremedia.iso.boxes.d
    public j getParent() {
        return this.f24988b;
    }

    @Override // com.coremedia.iso.boxes.d
    public long getSize() {
        return this.f24992f;
    }

    @Override // com.coremedia.iso.boxes.d
    public String getType() {
        return f24987h;
    }

    @Override // com.coremedia.iso.boxes.d
    public void i(e eVar, ByteBuffer byteBuffer, long j10, c cVar) throws IOException {
        this.f24991e = eVar.position() - ((long) byteBuffer.remaining());
        this.f24990d = eVar;
        this.f24992f = ((long) byteBuffer.remaining()) + j10;
        eVar.W(eVar.position() + j10);
    }

    public String toString() {
        return "MediaDataBox{size=" + this.f24992f + '}';
    }
}
