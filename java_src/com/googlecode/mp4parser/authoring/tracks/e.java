package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.s0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class e extends com.googlecode.mp4parser.authoring.j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    s0 f33089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.mp4parser.iso14496.part15.a f33090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f33091e;

    private class a extends AbstractList<com.googlecode.mp4parser.authoring.f> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<com.googlecode.mp4parser.authoring.f> f33092b;

        /* JADX INFO: renamed from: com.googlecode.mp4parser.authoring.tracks.e$a$a, reason: collision with other inner class name */
        class C0615a implements com.googlecode.mp4parser.authoring.f {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final /* synthetic */ ByteBuffer f33095b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final /* synthetic */ int f33096c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final /* synthetic */ com.googlecode.mp4parser.authoring.f f33097d;

            C0615a(ByteBuffer byteBuffer, int i10, com.googlecode.mp4parser.authoring.f fVar) {
                this.f33095b = byteBuffer;
                this.f33096c = i10;
                this.f33097d = fVar;
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public ByteBuffer a() {
                Iterator<byte[]> it2 = e.this.f33090d.F().iterator();
                int length = 0;
                while (it2.hasNext()) {
                    length += this.f33096c + it2.next().length;
                }
                Iterator<byte[]> it3 = e.this.f33090d.E().iterator();
                while (it3.hasNext()) {
                    length += this.f33096c + it3.next().length;
                }
                Iterator<byte[]> it4 = e.this.f33090d.B().iterator();
                while (it4.hasNext()) {
                    length += this.f33096c + it4.next().length;
                }
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(this.f33097d.getSize()) + length);
                for (byte[] bArr : e.this.f33090d.F()) {
                    com.coremedia.iso.j.a(bArr.length, byteBufferAllocate, this.f33096c);
                    byteBufferAllocate.put(bArr);
                }
                for (byte[] bArr2 : e.this.f33090d.E()) {
                    com.coremedia.iso.j.a(bArr2.length, byteBufferAllocate, this.f33096c);
                    byteBufferAllocate.put(bArr2);
                }
                for (byte[] bArr3 : e.this.f33090d.B()) {
                    com.coremedia.iso.j.a(bArr3.length, byteBufferAllocate, this.f33096c);
                    byteBufferAllocate.put(bArr3);
                }
                byteBufferAllocate.put(this.f33097d.a());
                return (ByteBuffer) byteBufferAllocate.rewind();
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public void b(WritableByteChannel writableByteChannel) throws IOException {
                for (byte[] bArr : e.this.f33090d.F()) {
                    com.coremedia.iso.j.a(bArr.length, (ByteBuffer) this.f33095b.rewind(), this.f33096c);
                    writableByteChannel.write((ByteBuffer) this.f33095b.rewind());
                    writableByteChannel.write(ByteBuffer.wrap(bArr));
                }
                for (byte[] bArr2 : e.this.f33090d.E()) {
                    com.coremedia.iso.j.a(bArr2.length, (ByteBuffer) this.f33095b.rewind(), this.f33096c);
                    writableByteChannel.write((ByteBuffer) this.f33095b.rewind());
                    writableByteChannel.write(ByteBuffer.wrap(bArr2));
                }
                for (byte[] bArr3 : e.this.f33090d.B()) {
                    com.coremedia.iso.j.a(bArr3.length, (ByteBuffer) this.f33095b.rewind(), this.f33096c);
                    writableByteChannel.write((ByteBuffer) this.f33095b.rewind());
                    writableByteChannel.write(ByteBuffer.wrap(bArr3));
                }
                this.f33097d.b(writableByteChannel);
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public long getSize() {
                Iterator<byte[]> it2 = e.this.f33090d.F().iterator();
                int length = 0;
                while (it2.hasNext()) {
                    length += this.f33096c + it2.next().length;
                }
                Iterator<byte[]> it3 = e.this.f33090d.E().iterator();
                while (it3.hasNext()) {
                    length += this.f33096c + it3.next().length;
                }
                Iterator<byte[]> it4 = e.this.f33090d.B().iterator();
                while (it4.hasNext()) {
                    length += this.f33096c + it4.next().length;
                }
                return this.f33097d.getSize() + ((long) length);
            }
        }

        public a(List<com.googlecode.mp4parser.authoring.f> list) {
            this.f33092b = list;
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public com.googlecode.mp4parser.authoring.f get(int i10) {
            if (Arrays.binarySearch(e.this.N(), i10 + 1) < 0) {
                return this.f33092b.get(i10);
            }
            int iZ = e.this.f33090d.z() + 1;
            return new C0615a(ByteBuffer.allocate(iZ), iZ, this.f33092b.get(i10));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f33092b.size();
        }
    }

    public e(com.googlecode.mp4parser.authoring.h hVar) throws IOException {
        super(hVar);
        if (!com.coremedia.iso.boxes.sampleentry.h.f25109z.equals(hVar.F().v().getType())) {
            throw new RuntimeException("Only avc1 tracks can be converted to avc3 tracks");
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        hVar.F().a(Channels.newChannel(byteArrayOutputStream));
        s0 s0Var = (s0) com.googlecode.mp4parser.util.m.d(new com.coremedia.iso.f(new com.googlecode.mp4parser.i(byteArrayOutputStream.toByteArray())), s0.f25057q);
        this.f33089c = s0Var;
        ((com.coremedia.iso.boxes.sampleentry.h) s0Var.v()).a0(com.coremedia.iso.boxes.sampleentry.h.A);
        this.f33090d = (com.mp4parser.iso14496.part15.a) com.googlecode.mp4parser.util.m.e(this.f33089c, "avc./avcC");
        this.f33091e = new a(hVar.U());
    }

    @Override // com.googlecode.mp4parser.authoring.j, com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33089c;
    }

    @Override // com.googlecode.mp4parser.authoring.j, com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33091e;
    }
}
