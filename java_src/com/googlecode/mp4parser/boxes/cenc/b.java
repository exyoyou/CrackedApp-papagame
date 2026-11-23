package com.googlecode.mp4parser.boxes.cenc;

import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.util.c;
import com.googlecode.mp4parser.util.n;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.AbstractList;
import java.util.List;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes5.dex */
public class b extends AbstractList<f> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f33425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Cipher f33426c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f33427d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    n<Integer, SecretKey> f33428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    List<f> f33429f;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.boxes.cenc.b$b, reason: collision with other inner class name */
    private class C0618b implements f {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final /* synthetic */ boolean f33430f = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f f33431a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final com.mp4parser.iso23001.part7.a f33432b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Cipher f33433c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final SecretKey f33434d;

        /* synthetic */ C0618b(b bVar, f fVar, com.mp4parser.iso23001.part7.a aVar, Cipher cipher, SecretKey secretKey, C0618b c0618b) {
            this(fVar, aVar, cipher, secretKey);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            ByteBuffer byteBuffer = (ByteBuffer) this.f33431a.a().rewind();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.limit());
            com.mp4parser.iso23001.part7.a aVar = this.f33432b;
            b.this.d(aVar.f75728a, this.f33434d);
            try {
                com.mp4parser.iso23001.part7.a.k[] kVarArr = aVar.f75729b;
                if (kVarArr != null) {
                    for (com.mp4parser.iso23001.part7.a.k kVar : kVarArr) {
                        byte[] bArr = new byte[kVar.clear()];
                        byteBuffer.get(bArr);
                        byteBufferAllocate.put(bArr);
                        if (kVar.a() > 0) {
                            byte[] bArr2 = new byte[c.a(kVar.a())];
                            byteBuffer.get(bArr2);
                            byteBufferAllocate.put(this.f33433c.update(bArr2));
                        }
                    }
                } else {
                    int iLimit = byteBuffer.limit();
                    byte[] bArr3 = new byte[iLimit];
                    byteBuffer.get(bArr3);
                    if ("cbc1".equals(b.this.f33425b)) {
                        int i10 = (iLimit / 16) * 16;
                        byteBufferAllocate.put(this.f33433c.doFinal(bArr3, 0, i10));
                        byteBufferAllocate.put(bArr3, i10, iLimit - i10);
                    } else if ("cenc".equals(b.this.f33425b)) {
                        byteBufferAllocate.put(this.f33433c.doFinal(bArr3));
                    }
                }
                byteBuffer.rewind();
                byteBufferAllocate.rewind();
                return byteBufferAllocate;
            } catch (BadPaddingException e10) {
                throw new RuntimeException(e10);
            } catch (IllegalBlockSizeException e11) {
                throw new RuntimeException(e11);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer byteBuffer = (ByteBuffer) this.f33431a.a().rewind();
            b.this.d(this.f33432b.f75728a, this.f33434d);
            try {
                com.mp4parser.iso23001.part7.a.k[] kVarArr = this.f33432b.f75729b;
                if (kVarArr == null || kVarArr.length <= 0) {
                    int iLimit = byteBuffer.limit();
                    byte[] bArr = new byte[iLimit];
                    byteBuffer.get(bArr);
                    if ("cbc1".equals(b.this.f33425b)) {
                        int i10 = (iLimit / 16) * 16;
                        writableByteChannel.write(ByteBuffer.wrap(this.f33433c.doFinal(bArr, 0, i10)));
                        writableByteChannel.write(ByteBuffer.wrap(bArr, i10, iLimit - i10));
                    } else if ("cenc".equals(b.this.f33425b)) {
                        writableByteChannel.write(ByteBuffer.wrap(this.f33433c.doFinal(bArr)));
                    }
                } else {
                    byte[] bArr2 = new byte[byteBuffer.limit()];
                    byteBuffer.get(bArr2);
                    int iA = 0;
                    for (com.mp4parser.iso23001.part7.a.k kVar : this.f33432b.f75729b) {
                        int iClear = iA + kVar.clear();
                        if (kVar.a() > 0) {
                            this.f33433c.update(bArr2, iClear, c.a(kVar.a()), bArr2, iClear);
                            iA = (int) (((long) iClear) + kVar.a());
                        } else {
                            iA = iClear;
                        }
                    }
                    writableByteChannel.write(ByteBuffer.wrap(bArr2));
                }
                byteBuffer.rewind();
            } catch (BadPaddingException e10) {
                throw new RuntimeException(e10);
            } catch (IllegalBlockSizeException e11) {
                throw new RuntimeException(e11);
            } catch (ShortBufferException e12) {
                throw new RuntimeException(e12);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f33431a.getSize();
        }

        private C0618b(f fVar, com.mp4parser.iso23001.part7.a aVar, Cipher cipher, SecretKey secretKey) {
            this.f33431a = fVar;
            this.f33432b = aVar;
            this.f33433c = cipher;
            this.f33434d = secretKey;
        }
    }

    public b(SecretKey secretKey, List<f> list, List<com.mp4parser.iso23001.part7.a> list2) {
        this(new n(0, secretKey), list, list2, "cenc");
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f get(int i10) {
        f fVar = this.f33429f.get(i10);
        return this.f33428e.get(Integer.valueOf(i10)) != null ? new C0618b(this, fVar, this.f33427d.get(i10), this.f33426c, this.f33428e.get(Integer.valueOf(i10)), null) : fVar;
    }

    protected void d(byte[] bArr, SecretKey secretKey) {
        try {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.f33426c.init(1, secretKey, new IvParameterSpec(bArr2));
        } catch (InvalidAlgorithmParameterException e10) {
            throw new RuntimeException(e10);
        } catch (InvalidKeyException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f33429f.size();
    }

    public b(n<Integer, SecretKey> nVar, List<f> list, List<com.mp4parser.iso23001.part7.a> list2, String str) {
        new n();
        this.f33427d = list2;
        this.f33428e = nVar;
        this.f33425b = str;
        this.f33429f = list;
        try {
            if ("cenc".equals(str)) {
                this.f33426c = Cipher.getInstance("AES/CTR/NoPadding");
            } else {
                if (!"cbc1".equals(str)) {
                    throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
                }
                this.f33426c = Cipher.getInstance(com.kuaishou.weapon.p0.b.f74477a);
            }
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }
}
