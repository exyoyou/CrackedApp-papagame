package com.byazt.fdg;

import android.content.pm.Signature;
import android.util.ArraySet;
import androidx.annotation.Nullable;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.util.Arrays;
import v0.d;
import v0.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsPreloadWaitListType, 133})
public final class z {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final z f14139c = new z(null, 0, null, null, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final int[] f14140a;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    public final Signature[] f14141n;

    @Nullable
    public final Signature[] tt;

    @Nullable
    public final ArraySet<PublicKey> uj;
    public final int ve;

    public z(Signature[] signatureArr, int i10, ArraySet<PublicKey> arraySet, Signature[] signatureArr2, int[] iArr) {
        this.tt = signatureArr;
        this.ve = i10;
        this.uj = arraySet;
        this.f14141n = signatureArr2;
        this.f14140a = iArr;
    }

    public static ArraySet<PublicKey> c(Signature[] signatureArr) throws CertificateException {
        Method method;
        e.a();
        ArraySet<PublicKey> arraySetA = d.a(signatureArr.length);
        for (Signature signature : signatureArr) {
            try {
                method = Signature.class.getMethod("getPublicKey", new Class[0]);
            } catch (NoSuchMethodException e10) {
                com.byazt.bog.a.c(e10);
                method = null;
            }
            if (method != null && method.isAccessible()) {
                try {
                    arraySetA.add((PublicKey) method.invoke(signature, new Object[0]));
                } catch (IllegalAccessException e11) {
                    com.byazt.bog.a.c(e11);
                } catch (InvocationTargetException e12) {
                    com.byazt.bog.a.c(e12);
                } catch (Exception e13) {
                    com.byazt.bog.a.c(e13);
                }
            }
        }
        return arraySetA;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        if (this.ve != zVar.ve || !c(this.tt, zVar.tt)) {
            return false;
        }
        ArraySet<PublicKey> arraySet = this.uj;
        if (arraySet != null) {
            if (!arraySet.equals(zVar.uj)) {
                return false;
            }
        } else if (zVar.uj != null) {
            return false;
        }
        return Arrays.equals(this.f14141n, zVar.f14141n) && Arrays.equals(this.f14140a, zVar.f14140a);
    }

    public int hashCode() {
        int iHashCode = ((Arrays.hashCode(this.tt) * 31) + this.ve) * 31;
        ArraySet<PublicKey> arraySet = this.uj;
        return ((((iHashCode + (arraySet != null ? arraySet.hashCode() : 0)) * 31) + Arrays.hashCode(this.f14141n)) * 31) + Arrays.hashCode(this.f14140a);
    }

    public z(Signature[] signatureArr, int i10, Signature[] signatureArr2, int[] iArr) throws CertificateException {
        this(signatureArr, i10, c(signatureArr), signatureArr2, iArr);
    }

    public z(Signature[] signatureArr, int i10) throws CertificateException {
        this(signatureArr, i10, null, null);
    }

    public static boolean c(Signature[] signatureArr, Signature[] signatureArr2) {
        return signatureArr.length == signatureArr2.length && com.byazt.uq.uj.c((Object[]) signatureArr, (Object[]) signatureArr2) && com.byazt.uq.uj.c((Object[]) signatureArr2, (Object[]) signatureArr);
    }

    public static boolean c(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }
}
