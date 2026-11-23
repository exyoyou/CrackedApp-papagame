package net.lingala.zip4j.io;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.zip.Deflater;
import net.lingala.zip4j.exception.ZipException;
import pc.o;
import pc.p;

/* JADX INFO: loaded from: classes.dex */
public class d extends c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private byte[] f94632o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected Deflater f94633p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f94634q;

    public d(OutputStream outputStream, o oVar) {
        super(outputStream, oVar);
        this.f94633p = new Deflater();
        this.f94632o = new byte[4096];
        this.f94634q = false;
    }

    private void v() throws IOException {
        Deflater deflater = this.f94633p;
        byte[] bArr = this.f94632o;
        int iDeflate = deflater.deflate(bArr, 0, bArr.length);
        if (iDeflate > 0) {
            if (this.f94633p.finished()) {
                if (iDeflate == 4) {
                    return;
                }
                if (iDeflate < 4) {
                    f(4 - iDeflate);
                    return;
                }
                iDeflate -= 4;
            }
            if (this.f94634q) {
                super.write(this.f94632o, 0, iDeflate);
            } else {
                super.write(this.f94632o, 2, iDeflate - 2);
                this.f94634q = true;
            }
        }
    }

    @Override // net.lingala.zip4j.io.c
    public void b() throws ZipException, IOException {
        if (this.f94624g.d() == 8) {
            if (!this.f94633p.finished()) {
                this.f94633p.finish();
                while (!this.f94633p.finished()) {
                    v();
                }
            }
            this.f94634q = false;
        }
        super.b();
    }

    @Override // net.lingala.zip4j.io.c
    public void h() throws ZipException, IOException {
        super.h();
    }

    @Override // net.lingala.zip4j.io.c
    public void q(File file, p pVar) throws ZipException {
        super.q(file, pVar);
        if (pVar.d() == 8) {
            this.f94633p.reset();
            if ((pVar.b() < 0 || pVar.b() > 9) && pVar.b() != -1) {
                throw new ZipException("invalid compression level for deflater. compression level should be in the range of 0-9");
            }
            this.f94633p.setLevel(pVar.b());
        }
    }

    @Override // net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // net.lingala.zip4j.io.c, net.lingala.zip4j.io.b, java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    @Override // net.lingala.zip4j.io.c, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f94624g.d() != 8) {
            super.write(bArr, i10, i11);
            return;
        }
        this.f94633p.setInput(bArr, i10, i11);
        while (!this.f94633p.needsInput()) {
            v();
        }
    }
}
