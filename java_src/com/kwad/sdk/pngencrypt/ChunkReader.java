package com.kwad.sdk.pngencrypt;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ChunkReader implements f {
    public final ChunkReaderMode bjt;
    private final com.kwad.sdk.pngencrypt.chunk.d bju;
    private boolean bjx;
    protected int bjv = 0;
    private int bjw = 0;
    protected ErrorBehaviour bjy = ErrorBehaviour.STRICT;

    public enum ChunkReaderMode {
        BUFFER,
        PROCESS,
        SKIP
    }

    public ChunkReader(int i10, String str, long j10, ChunkReaderMode chunkReaderMode) {
        if (chunkReaderMode == null || str.length() != 4 || i10 < 0) {
            new PngjException("Bad chunk paramenters: " + chunkReaderMode);
        }
        this.bjt = chunkReaderMode;
        com.kwad.sdk.pngencrypt.chunk.d dVar = new com.kwad.sdk.pngencrypt.chunk.d(i10, str, chunkReaderMode == ChunkReaderMode.BUFFER);
        this.bju = dVar;
        dVar.aZ(j10);
        this.bjx = chunkReaderMode != ChunkReaderMode.SKIP;
    }

    public final com.kwad.sdk.pngencrypt.chunk.d SD() {
        return this.bju;
    }

    protected abstract void SE();

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
    @Override // com.kwad.sdk.pngencrypt.f
    public final int a(byte[] bArr, int i10, int i11) {
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (i11 < 0) {
            new PngjException("negative length??");
        }
        if (this.bjv == 0 && this.bjw == 0 && this.bjx) {
            com.kwad.sdk.pngencrypt.chunk.d dVar = this.bju;
            dVar.e(dVar.blB, 0, 4);
        }
        com.kwad.sdk.pngencrypt.chunk.d dVar2 = this.bju;
        int i13 = dVar2.len - this.bjv;
        if (i13 > i11) {
            i13 = i11;
        }
        if (i13 > 0 || this.bjw == 0) {
            if (this.bjx && this.bjt != ChunkReaderMode.BUFFER && i13 > 0) {
                dVar2.e(bArr, i10, i13);
            }
            ChunkReaderMode chunkReaderMode = this.bjt;
            if (chunkReaderMode == ChunkReaderMode.BUFFER) {
                byte[] bArr2 = this.bju.data;
                if (bArr2 != bArr && i13 > 0) {
                    System.arraycopy(bArr, i10, bArr2, this.bjv, i13);
                }
            } else if (chunkReaderMode == ChunkReaderMode.PROCESS) {
                a(this.bjv, bArr, i10, i13);
            }
            this.bjv += i13;
            i10 += i13;
            i11 -= i13;
        }
        int i14 = this.bjv;
        com.kwad.sdk.pngencrypt.chunk.d dVar3 = this.bju;
        if (i14 == dVar3.len) {
            int i15 = this.bjw;
            int i16 = 4 - i15;
            if (i16 <= i11) {
                i11 = i16;
            }
            if (i11 > 0) {
                byte[] bArr3 = dVar3.blD;
                if (bArr != bArr3) {
                    System.arraycopy(bArr, i10, bArr3, i15, i11);
                }
                int i17 = this.bjw + i11;
                this.bjw = i17;
                if (i17 == 4) {
                    if (this.bjx) {
                        if (this.bjt == ChunkReaderMode.BUFFER) {
                            com.kwad.sdk.pngencrypt.chunk.d dVar4 = this.bju;
                            dVar4.e(dVar4.data, 0, dVar4.len);
                        }
                        this.bju.ck(this.bjy == ErrorBehaviour.STRICT);
                    }
                    SE();
                }
            }
            i12 = i11;
        }
        if (i13 > 0 || i12 > 0) {
            return i13 + i12;
        }
        return -1;
    }

    protected abstract void a(int i10, byte[] bArr, int i11, int i12);

    public final void ci(boolean z10) {
        this.bjx = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ChunkReader chunkReader = (ChunkReader) obj;
        com.kwad.sdk.pngencrypt.chunk.d dVar = this.bju;
        if (dVar == null) {
            if (chunkReader.bju != null) {
                return false;
            }
        } else if (!dVar.equals(chunkReader.bju)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        com.kwad.sdk.pngencrypt.chunk.d dVar = this.bju;
        return (dVar == null ? 0 : dVar.hashCode()) + 31;
    }

    @Override // com.kwad.sdk.pngencrypt.f
    public final boolean isDone() {
        return this.bjw == 4;
    }

    public String toString() {
        return this.bju.toString();
    }
}
