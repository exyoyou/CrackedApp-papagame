package com.coremedia.iso;

import com.coremedia.iso.boxes.h0;
import com.googlecode.mp4parser.annotations.DoNotParseDetail;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.channels.WritableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
@DoNotParseDetail
public class f extends com.googlecode.mp4parser.d implements Closeable {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f25230k = com.googlecode.mp4parser.util.j.a(f.class);

    public f(String str) throws IOException {
        this(new com.googlecode.mp4parser.g(new File(str)));
    }

    public static String s(byte[] bArr) {
        byte[] bArr2 = new byte[4];
        if (bArr != null) {
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, 4));
        }
        try {
            return new String(bArr2, "ISO-8859-1");
        } catch (UnsupportedEncodingException e10) {
            throw new Error("Required character encoding is missing", e10);
        }
    }

    public static byte[] t(String str) {
        byte[] bArr = new byte[4];
        if (str != null) {
            for (int i10 = 0; i10 < Math.min(4, str.length()); i10++) {
                bArr[i10] = (byte) str.charAt(i10);
            }
        }
        return bArr;
    }

    public void a(WritableByteChannel writableByteChannel) throws IOException {
        h(writableByteChannel);
    }

    @Override // com.googlecode.mp4parser.d, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33749c.close();
    }

    public long getSize() {
        return o();
    }

    @Override // com.googlecode.mp4parser.d
    public String toString() {
        return "model(" + this.f33749c.toString() + ")";
    }

    public h0 v() {
        for (com.coremedia.iso.boxes.d dVar : l()) {
            if (dVar instanceof h0) {
                return (h0) dVar;
            }
        }
        return null;
    }

    public f(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, new k(new String[0]));
    }

    public f(com.googlecode.mp4parser.e eVar, c cVar) throws IOException {
        p(eVar, eVar.size(), cVar);
    }
}
