package com.kwad.sdk.pngencrypt;

import java.io.Closeable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements f, Closeable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final int bjA;
    private byte[] bjB;
    private int bjC;
    protected boolean bjD;
    protected boolean bjE;
    private int bjF;
    private long bjG;
    private DeflatedChunksSet bjH;
    private ChunkReader bjI;
    private long bjJ;
    private ErrorBehaviour bjK;
    private final byte[] bjz;
    protected boolean closed;

    public b() {
        this(n.Tg());
    }

    private static String SI() {
        return "IHDR";
    }

    private static String SJ() {
        return "IEND";
    }

    private static void l(byte[] bArr) {
        if (Arrays.equals(bArr, n.Tg())) {
            return;
        }
        new PngjException("Bad signature:" + Arrays.toString(bArr));
    }

    protected boolean D(int i10, String str) {
        return false;
    }

    protected boolean SF() {
        return true;
    }

    public final long SG() {
        return this.bjG;
    }

    public final DeflatedChunksSet SH() {
        return this.bjH;
    }

    @Override // com.kwad.sdk.pngencrypt.f
    public int a(byte[] bArr, int i10, int i11) {
        if (this.closed) {
            return -1;
        }
        if (i11 == 0) {
            return 0;
        }
        if (i11 < 0) {
            new PngjException("This should not happen. Bad length: " + i11);
        }
        if (!this.bjD) {
            int i12 = this.bjA;
            int i13 = this.bjC;
            int i14 = i12 - i13;
            if (i14 <= i11) {
                i11 = i14;
            }
            System.arraycopy(bArr, i10, this.bjB, i13, i11);
            int i15 = this.bjC + i11;
            this.bjC = i15;
            if (i15 == this.bjA) {
                l(this.bjB);
                this.bjC = 0;
                this.bjD = true;
            }
            int i16 = i11 + 0;
            this.bjG += (long) i11;
            return i16;
        }
        ChunkReader chunkReader = this.bjI;
        if (chunkReader != null && !chunkReader.isDone()) {
            int iA = this.bjI.a(bArr, i10, i11);
            if (iA < 0) {
                return -1;
            }
            int i17 = iA + 0;
            this.bjG += (long) iA;
            return i17;
        }
        int i18 = this.bjC;
        int i19 = 8 - i18;
        if (i19 <= i11) {
            i11 = i19;
        }
        System.arraycopy(bArr, i10, this.bjB, i18, i11);
        int i20 = this.bjC + i11;
        this.bjC = i20;
        int i21 = i11 + 0;
        this.bjG += (long) i11;
        if (i20 != 8) {
            return i21;
        }
        this.bjF++;
        c(n.g(this.bjB, 0), com.kwad.sdk.pngencrypt.chunk.b.i(this.bjB, 4), this.bjG - 8);
        this.bjC = 0;
        return i21;
    }

    protected void c(int i10, String str, long j10) {
        if (str.length() != 4 || !com.kwad.sdk.pngencrypt.chunk.b.blA.matcher(str).matches()) {
            new PngjException("Bad chunk id: " + str);
        }
        if (i10 < 0) {
            new PngjException("Bad chunk len: " + i10);
        }
        if (str.equals("IDAT")) {
            this.bjJ += (long) i10;
        }
        boolean zSF = SF();
        boolean zD = D(i10, str);
        boolean zHl = hl(str);
        DeflatedChunksSet deflatedChunksSet = this.bjH;
        boolean zHo = (deflatedChunksSet == null || deflatedChunksSet.isClosed()) ? false : this.bjH.ho(str);
        if (!zHl || zD) {
            this.bjI = a(str, i10, j10, zD);
        } else {
            if (!zHo) {
                DeflatedChunksSet deflatedChunksSet2 = this.bjH;
                if (deflatedChunksSet2 != null && !deflatedChunksSet2.isDone()) {
                    new PngjException("new IDAT-like chunk when previous was not done");
                }
                this.bjH = hk(str);
            }
            this.bjI = new d(i10, str, zSF, j10, this.bjH) { // from class: com.kwad.sdk.pngencrypt.b.1
                @Override // com.kwad.sdk.pngencrypt.d, com.kwad.sdk.pngencrypt.ChunkReader
                protected final void SE() {
                    super.SE();
                    b.this.a(this);
                }
            };
        }
        ChunkReader chunkReader = this.bjI;
        if (chunkReader == null || zSF) {
            return;
        }
        chunkReader.ci(false);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        DeflatedChunksSet deflatedChunksSet = this.bjH;
        if (deflatedChunksSet != null) {
            deflatedChunksSet.close();
        }
        this.closed = true;
    }

    protected abstract DeflatedChunksSet hk(String str);

    protected boolean hl(String str) {
        return false;
    }

    @Override // com.kwad.sdk.pngencrypt.f
    public final boolean isDone() {
        return this.bjE;
    }

    private b(byte[] bArr) {
        this.bjB = new byte[8];
        this.bjC = 0;
        this.bjD = false;
        this.bjE = false;
        this.closed = false;
        this.bjF = 0;
        this.bjG = 0L;
        this.bjK = ErrorBehaviour.STRICT;
        this.bjz = bArr;
        int length = bArr == null ? 0 : bArr.length;
        this.bjA = length;
        this.bjD = length <= 0;
    }

    private ChunkReader a(String str, int i10, long j10, boolean z10) {
        return new ChunkReader(i10, str, j10, z10 ? ChunkReader.ChunkReaderMode.SKIP : ChunkReader.ChunkReaderMode.BUFFER) { // from class: com.kwad.sdk.pngencrypt.b.2
            @Override // com.kwad.sdk.pngencrypt.ChunkReader
            protected final void SE() {
                b.this.a(this);
            }

            @Override // com.kwad.sdk.pngencrypt.ChunkReader
            protected final void a(int i11, byte[] bArr, int i12, int i13) {
                new PngjException("should never happen");
            }
        };
    }

    protected void a(ChunkReader chunkReader) {
        if (this.bjF == 1 && !SI().equals(chunkReader.SD().f75331id)) {
            String str = "Bad first chunk: " + chunkReader.SD().f75331id + " expected: " + SI();
            if (this.bjK.f75329c < ErrorBehaviour.SUPER_LENIENT.f75329c) {
                new PngjException(str);
            }
        }
        SJ();
        if (chunkReader.SD().f75331id.equals(SJ())) {
            this.bjE = true;
            close();
        }
    }
}
