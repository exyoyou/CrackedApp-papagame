package com.googlecode.mp4parser.authoring.tracks.mjpeg;

import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.e;
import com.googlecode.mp4parser.authoring.c;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.authoring.h;
import com.googlecode.mp4parser.authoring.i;
import com.googlecode.mp4parser.boxes.mp4.b;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.l;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import javax.imageio.ImageIO;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    File[] f33200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    i f33201f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long[] f33202g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    s0 f33203h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long[] f33204i;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.authoring.tracks.mjpeg.a$a, reason: collision with other inner class name */
    class C0616a extends AbstractList<f> {

        /* JADX INFO: renamed from: com.googlecode.mp4parser.authoring.tracks.mjpeg.a$a$a, reason: collision with other inner class name */
        class C0617a implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ByteBuffer f33206a = null;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final /* synthetic */ int f33208c;

            C0617a(int i10) {
                this.f33208c = i10;
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public ByteBuffer a() {
                if (this.f33206a == null) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(a.this.f33200e[this.f33208c], "r");
                        this.f33206a = randomAccessFile.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, randomAccessFile.length());
                    } catch (IOException e10) {
                        throw new RuntimeException(e10);
                    }
                }
                return this.f33206a;
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public void b(WritableByteChannel writableByteChannel) throws IOException {
                RandomAccessFile randomAccessFile = new RandomAccessFile(a.this.f33200e[this.f33208c], "r");
                randomAccessFile.getChannel().transferTo(0L, randomAccessFile.length(), writableByteChannel);
                randomAccessFile.close();
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public long getSize() {
                return a.this.f33200e[this.f33208c].length();
            }
        }

        C0616a() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f get(int i10) {
            return new C0617a(i10);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return a.this.f33200e.length;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public a(String str, File[] fileArr, h hVar) throws IOException {
        super(str);
        this.f33201f = new i();
        this.f33200e = fileArr;
        if (hVar.N().length != fileArr.length) {
            throw new RuntimeException("Number of sync samples doesn't match the number of stills (" + hVar.N().length + " vs. " + fileArr.length + ")");
        }
        BufferedImage bufferedImage = ImageIO.read(fileArr[0]);
        this.f33201f.w(bufferedImage.getWidth());
        this.f33201f.o(bufferedImage.getHeight());
        this.f33201f.t(hVar.H().i());
        long[] jArrZ = hVar.Z();
        long[] jArrN = hVar.N();
        this.f33202g = new long[jArrN.length];
        long j10 = 0;
        boolean z10 = true;
        long j11 = 0;
        int i10 = 1;
        for (int i11 = 1; i11 < jArrZ.length; i11++) {
            if (i10 < jArrN.length && i11 == jArrN[i10]) {
                this.f33202g[i10 - 1] = j11;
                i10++;
                j11 = 0;
            }
            j11 += jArrZ[i11];
        }
        long[] jArr = this.f33202g;
        jArr[jArr.length - 1] = j11;
        this.f33203h = new s0();
        com.coremedia.iso.boxes.sampleentry.h hVar2 = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f25107x);
        this.f33203h.m(hVar2);
        b bVar = new b();
        bVar.y(ByteBuffer.wrap(e.a("038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102")));
        bVar.B((g) l.a(-1, ByteBuffer.wrap(e.a("038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102"))));
        hVar2.m(bVar);
        this.f33204i = new long[fileArr.length];
        int i12 = 0;
        while (true) {
            long[] jArr2 = this.f33204i;
            if (i12 >= jArr2.length) {
                break;
            }
            int i13 = i12 + 1;
            jArr2[i12] = i13;
            i12 = i13;
        }
        double dI = 0.0d;
        boolean z11 = true;
        for (c cVar : hVar.X()) {
            if (cVar.b() == -1 && !z10) {
                throw new RuntimeException("Cannot accept edit list for processing (1)");
            }
            if (cVar.b() >= 0 && !z11) {
                throw new RuntimeException("Cannot accept edit list for processing (2)");
            }
            if (cVar.b() == -1) {
                dI += cVar.c();
            } else {
                dI -= cVar.b() / cVar.d();
                z11 = false;
                z10 = false;
            }
        }
        if (hVar.E() != null && hVar.E().size() > 0) {
            int[] iArrCopyOfRange = Arrays.copyOfRange(com.coremedia.iso.boxes.i.v(hVar.E()), 0, 50);
            for (int i14 = 0; i14 < iArrCopyOfRange.length; i14++) {
                iArrCopyOfRange[i14] = (int) (((long) iArrCopyOfRange[i14]) + j10);
                j10 += hVar.Z()[i14];
            }
            Arrays.sort(iArrCopyOfRange);
            dI += ((double) iArrCopyOfRange[0]) / hVar.H().i();
        }
        if (dI < 0.0d) {
            X().add(new c((long) ((-dI) * H().i()), H().i(), 1.0d, getDuration() / H().i()));
        } else if (dI > 0.0d) {
            X().add(new c(-1L, H().i(), 1.0d, dI));
            X().add(new c(0L, H().i(), 1.0d, getDuration() / H().i()));
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33203h;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i H() {
        return this.f33201f;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return this.f33204i;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> U() {
        return new C0616a();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33202g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "vide";
    }
}
