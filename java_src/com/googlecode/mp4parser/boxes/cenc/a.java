package com.googlecode.mp4parser.boxes.cenc;

import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.authoring.g;
import com.googlecode.mp4parser.util.c;
import com.googlecode.mp4parser.util.n;
import java.nio.ByteBuffer;
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
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes5.dex */
public class a extends AbstractList<f> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f33421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    n<Integer, SecretKey> f33422c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<f> f33423d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    String f33424e;

    public a(SecretKey secretKey, List<f> list, List<com.mp4parser.iso23001.part7.a> list2) {
        this(new n(0, secretKey), list, list2, "cenc");
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f get(int i10) {
        if (this.f33422c.get(Integer.valueOf(i10)) == null) {
            return this.f33423d.get(i10);
        }
        f fVar = this.f33423d.get(i10);
        ByteBuffer byteBufferA = fVar.a();
        byteBufferA.rewind();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBufferA.limit());
        com.mp4parser.iso23001.part7.a aVar = this.f33421b.get(i10);
        Cipher cipherB = b(this.f33422c.get(Integer.valueOf(i10)), aVar.f75728a);
        try {
            com.mp4parser.iso23001.part7.a.k[] kVarArr = aVar.f75729b;
            if (kVarArr == null || kVarArr.length <= 0) {
                int iLimit = byteBufferA.limit();
                byte[] bArr = new byte[iLimit];
                byteBufferA.get(bArr);
                if ("cbc1".equals(this.f33424e)) {
                    int i11 = (iLimit / 16) * 16;
                    byteBufferAllocate.put(cipherB.doFinal(bArr, 0, i11));
                    byteBufferAllocate.put(bArr, i11, iLimit - i11);
                } else if ("cenc".equals(this.f33424e)) {
                    byteBufferAllocate.put(cipherB.doFinal(bArr));
                }
            } else {
                for (com.mp4parser.iso23001.part7.a.k kVar : kVarArr) {
                    int iClear = kVar.clear();
                    int iA = c.a(kVar.a());
                    byte[] bArr2 = new byte[iClear];
                    byteBufferA.get(bArr2);
                    byteBufferAllocate.put(bArr2);
                    if (iA > 0) {
                        byte[] bArr3 = new byte[iA];
                        byteBufferA.get(bArr3);
                        byteBufferAllocate.put(cipherB.update(bArr3));
                    }
                }
                if (byteBufferA.remaining() > 0) {
                    System.err.println("Decrypted sample but still data remaining: " + fVar.getSize());
                }
                byteBufferAllocate.put(cipherB.doFinal());
            }
            byteBufferA.rewind();
            byteBufferAllocate.rewind();
            return new g(byteBufferAllocate);
        } catch (BadPaddingException e10) {
            throw new RuntimeException(e10);
        } catch (IllegalBlockSizeException e11) {
            throw new RuntimeException(e11);
        }
    }

    Cipher b(SecretKey secretKey, byte[] bArr) {
        byte[] bArr2 = new byte[16];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        try {
            if ("cenc".equals(this.f33424e)) {
                Cipher cipher = Cipher.getInstance("AES/CTR/NoPadding");
                cipher.init(2, secretKey, new IvParameterSpec(bArr2));
                return cipher;
            }
            if (!"cbc1".equals(this.f33424e)) {
                throw new RuntimeException("Only cenc & cbc1 is supported as encryptionAlgo");
            }
            Cipher cipher2 = Cipher.getInstance(com.kuaishou.weapon.p0.b.f74477a);
            cipher2.init(2, secretKey, new IvParameterSpec(bArr2));
            return cipher2;
        } catch (InvalidAlgorithmParameterException e10) {
            throw new RuntimeException(e10);
        } catch (InvalidKeyException e11) {
            throw new RuntimeException(e11);
        } catch (NoSuchAlgorithmException e12) {
            throw new RuntimeException(e12);
        } catch (NoSuchPaddingException e13) {
            throw new RuntimeException(e13);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f33423d.size();
    }

    public a(n<Integer, SecretKey> nVar, List<f> list, List<com.mp4parser.iso23001.part7.a> list2, String str) {
        new n();
        this.f33421b = list2;
        this.f33422c = nVar;
        this.f33423d = list;
        this.f33424e = str;
    }
}
