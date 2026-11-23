package com.mp4parser.iso14496.part30;

import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.coremedia.iso.boxes.sampleentry.a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f75716p = "wvtt";

    public b() {
        super(f75716p);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void a(WritableByteChannel writableByteChannel) throws IOException {
        writableByteChannel.write(s());
        h(writableByteChannel);
    }

    @Override // com.coremedia.iso.boxes.sampleentry.a, com.googlecode.mp4parser.b, com.coremedia.iso.boxes.d
    public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        p(eVar, j10, cVar);
    }

    public a v() {
        return (a) m.e(this, a.f75712p);
    }

    public c y() {
        return (c) m.e(this, c.f75717p);
    }
}
