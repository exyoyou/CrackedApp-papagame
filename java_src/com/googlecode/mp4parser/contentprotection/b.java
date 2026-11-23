package com.googlecode.mp4parser.contentprotection;

import com.coremedia.iso.g;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.boxes.piff.c;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class b extends c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static UUID f33739d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f33740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<a> f33741c;

    public static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33742a;

        /* JADX INFO: renamed from: com.googlecode.mp4parser.contentprotection.b$a$a, reason: collision with other inner class name */
        public static class C0624a extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ByteBuffer f33743b;

            public C0624a(int i10) {
                super(i10);
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public ByteBuffer b() {
                return this.f33743b;
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public void c(ByteBuffer byteBuffer) {
                this.f33743b = byteBuffer.duplicate();
            }
        }

        /* JADX INFO: renamed from: com.googlecode.mp4parser.contentprotection.b$a$b, reason: collision with other inner class name */
        public static class C0625b extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ByteBuffer f33744b;

            public C0625b() {
                super(3);
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public ByteBuffer b() {
                return this.f33744b;
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public void c(ByteBuffer byteBuffer) {
                this.f33744b = byteBuffer.duplicate();
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public String toString() {
                return "EmeddedLicenseStore{length=" + b().limit() + '}';
            }
        }

        public static class c extends a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            String f33745b;

            public c() {
                super(1);
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public ByteBuffer b() {
                try {
                    return ByteBuffer.wrap(this.f33745b.getBytes("UTF-16LE"));
                } catch (UnsupportedEncodingException e10) {
                    throw new RuntimeException(e10);
                }
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public void c(ByteBuffer byteBuffer) {
                try {
                    byte[] bArr = new byte[byteBuffer.slice().limit()];
                    byteBuffer.get(bArr);
                    this.f33745b = new String(bArr, "UTF-16LE");
                } catch (UnsupportedEncodingException e10) {
                    throw new RuntimeException(e10);
                }
            }

            public String d() {
                return this.f33745b;
            }

            public void e(String str) {
                this.f33745b = str;
            }

            @Override // com.googlecode.mp4parser.contentprotection.b.a
            public String toString() {
                return "RMHeader{length=" + b().limit() + ", header='" + this.f33745b + "'}";
            }
        }

        public a(int i10) {
            this.f33742a = i10;
        }

        public static List<a> a(ByteBuffer byteBuffer, int i10) {
            a cVar;
            ArrayList arrayList = new ArrayList(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                int iJ = g.j(byteBuffer);
                int iJ2 = g.j(byteBuffer);
                if (iJ == 1) {
                    cVar = new c();
                } else if (iJ != 2) {
                    cVar = iJ != 3 ? new C0624a(iJ) : new C0625b();
                } else {
                    cVar = new C0624a(2);
                }
                cVar.c((ByteBuffer) byteBuffer.slice().limit(iJ2));
                byteBuffer.position(byteBuffer.position() + iJ2);
                arrayList.add(cVar);
            }
            return arrayList;
        }

        public abstract ByteBuffer b();

        public abstract void c(ByteBuffer byteBuffer);

        public String toString() {
            return "PlayReadyRecord{type=" + this.f33742a + ", length=" + b().limit() + '}';
        }
    }

    static {
        UUID uuidFromString = UUID.fromString("9A04F079-9840-4286-AB92-E65BE0885F95");
        f33739d = uuidFromString;
        c.f33693a.put(uuidFromString, b.class);
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public ByteBuffer b() {
        Iterator<a> it2 = this.f33741c.iterator();
        int iLimit = 6;
        while (it2.hasNext()) {
            iLimit = iLimit + 4 + it2.next().b().rewind().limit();
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iLimit);
        i.j(byteBufferAllocate, iLimit);
        i.g(byteBufferAllocate, this.f33741c.size());
        for (a aVar : this.f33741c) {
            i.g(byteBufferAllocate, aVar.f33742a);
            i.g(byteBufferAllocate, aVar.b().limit());
            byteBufferAllocate.put(aVar.b());
        }
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public UUID c() {
        return f33739d;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public void d(ByteBuffer byteBuffer) {
        this.f33740b = g.m(byteBuffer);
        this.f33741c = a.a(byteBuffer, g.j(byteBuffer));
    }

    public List<a> e() {
        return Collections.unmodifiableList(this.f33741c);
    }

    public void f(List<a> list) {
        this.f33741c = list;
    }

    @Override // com.googlecode.mp4parser.boxes.piff.c
    public String toString() {
        return "PlayReadyHeader{length=" + this.f33740b + ", recordCount=" + this.f33741c.size() + ", records=" + this.f33741c + '}';
    }
}
