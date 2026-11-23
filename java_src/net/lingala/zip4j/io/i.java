package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.OutputStream;
import pc.o;

/* JADX INFO: loaded from: classes.dex */
public class i extends d {
    public i(OutputStream outputStream) {
        this(outputStream, null);
    }

    @Override // net.lingala.zip4j.io.d, net.lingala.zip4j.io.c, net.lingala.zip4j.io.b, java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    public i(OutputStream outputStream, o oVar) {
        super(outputStream, oVar);
    }

    @Override // net.lingala.zip4j.io.d, net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.d, net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        this.f94627j.update(bArr, i10, i11);
        t(i11);
        super.write(bArr, i10, i11);
    }
}
