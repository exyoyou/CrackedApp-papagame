package com.mp4parser.iso14496.part30;

import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.authoring.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class d extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String[] f75721e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    List<f> f75722f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    b f75723g;

    public d(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar.toString());
        this.f75722f = new ArrayList();
        b bVar = new b();
        this.f75723g = bVar;
        bVar.m(new a());
        this.f75723g.m(new c());
        ByteBuffer byteBufferR = eVar.r(0L, com.googlecode.mp4parser.util.c.a(eVar.size()));
        byte[] bArr = new byte[com.googlecode.mp4parser.util.c.a(eVar.size())];
        byteBufferR.get(bArr);
        this.f75721e = l.a(bArr).split("\\r?\\n");
        String str = "";
        int i10 = 0;
        while (i10 < this.f75721e.length) {
            str = String.valueOf(str) + this.f75721e[i10] + "\n";
            int i11 = i10 + 1;
            if (this.f75721e[i11].isEmpty() && this.f75721e[i10 + 2].isEmpty()) {
                break;
            } else {
                i10 = i11;
            }
        }
        while (true) {
            String[] strArr = this.f75721e;
            if (i10 >= strArr.length || !strArr[i10].isEmpty()) {
                return;
            } else {
                i10++;
            }
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i H() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> U() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return new long[0];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return null;
    }
}
