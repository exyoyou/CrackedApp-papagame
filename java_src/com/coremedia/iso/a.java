package com.coremedia.iso;

import com.coremedia.iso.boxes.k1;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes9.dex */
public abstract class a implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Logger f24656b = Logger.getLogger(a.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ThreadLocal<ByteBuffer> f24657a = new C0535a();

    /* JADX INFO: renamed from: com.coremedia.iso.a$a, reason: collision with other inner class name */
    class C0535a extends ThreadLocal<ByteBuffer> {
        C0535a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ByteBuffer initialValue() {
            return ByteBuffer.allocate(32);
        }
    }

    @Override // com.coremedia.iso.c
    public com.coremedia.iso.boxes.d a(com.googlecode.mp4parser.e eVar, com.coremedia.iso.boxes.j jVar) throws IOException {
        int i10;
        long size;
        byte[] bArr;
        long jPosition = eVar.position();
        this.f24657a.get().rewind().limit(8);
        do {
            i10 = eVar.read(this.f24657a.get());
            if (i10 == 8) {
                this.f24657a.get().rewind();
                long jL = g.l(this.f24657a.get());
                if (jL < 8 && jL > 1) {
                    f24656b.severe("Plausibility check failed: size < 8 (size = " + jL + "). Stop parsing!");
                    return null;
                }
                String strB = g.b(this.f24657a.get());
                if (jL == 1) {
                    this.f24657a.get().limit(16);
                    eVar.read(this.f24657a.get());
                    this.f24657a.get().position(8);
                    size = g.o(this.f24657a.get()) - 16;
                } else {
                    size = jL == 0 ? eVar.size() - eVar.position() : jL - 8;
                }
                if (k1.f24950p.equals(strB)) {
                    this.f24657a.get().limit(this.f24657a.get().limit() + 16);
                    eVar.read(this.f24657a.get());
                    bArr = new byte[16];
                    for (int iPosition = this.f24657a.get().position() - 16; iPosition < this.f24657a.get().position(); iPosition++) {
                        bArr[iPosition - (this.f24657a.get().position() - 16)] = this.f24657a.get().get(iPosition);
                    }
                    size -= 16;
                } else {
                    bArr = null;
                }
                long j10 = size;
                com.coremedia.iso.boxes.d dVarB = b(strB, bArr, jVar instanceof com.coremedia.iso.boxes.d ? ((com.coremedia.iso.boxes.d) jVar).getType() : "");
                dVarB.f(jVar);
                this.f24657a.get().rewind();
                dVarB.i(eVar, this.f24657a.get(), j10, this);
                return dVarB;
            }
        } while (i10 >= 0);
        eVar.W(jPosition);
        throw new EOFException();
    }

    public abstract com.coremedia.iso.boxes.d b(String str, byte[] bArr, String str2);
}
