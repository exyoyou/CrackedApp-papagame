package com.xinzhu.overmind.server.accounts;

import android.os.Bundle;
import android.os.Parcel;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;

/* JADX INFO: loaded from: classes8.dex */
class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f89577c = "Account";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f89578d = "cipher";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f89579e = "mac";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f89580f = "AES";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f89581g = "iv";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f89582h = "AES/CBC/PKCS5Padding";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f89583i = "HMACSHA256";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f89584j = 16;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static c f89585k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SecretKey f89586a = KeyGenerator.getInstance(f89580f).generateKey();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SecretKey f89587b = KeyGenerator.getInstance(f89583i).generateKey();

    private c() throws NoSuchAlgorithmException {
    }

    private static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return bArr == bArr2;
        }
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean z10 = true;
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            z10 &= bArr[i10] == bArr2[i10];
        }
        return z10;
    }

    private byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        Mac mac = Mac.getInstance(f89583i);
        mac.init(this.f89587b);
        mac.update(bArr);
        mac.update(bArr2);
        return mac.doFinal();
    }

    static synchronized c e() throws NoSuchAlgorithmException {
        if (f89585k == null) {
            f89585k = new c();
        }
        return f89585k;
    }

    private boolean f(byte[] bArr, byte[] bArr2, byte[] bArr3) throws GeneralSecurityException {
        if (bArr == null || bArr.length == 0 || bArr3 == null || bArr3.length == 0) {
            return false;
        }
        return a(bArr3, b(bArr, bArr2));
    }

    Bundle c(Bundle bundle) throws GeneralSecurityException {
        Objects.requireNonNull(bundle, "Cannot decrypt null bundle.");
        byte[] byteArray = bundle.getByteArray(f89581g);
        byte[] byteArray2 = bundle.getByteArray(f89578d);
        if (!f(byteArray2, byteArray, bundle.getByteArray(f89579e))) {
            return null;
        }
        IvParameterSpec ivParameterSpec = new IvParameterSpec(byteArray);
        Cipher cipher = Cipher.getInstance(f89582h);
        cipher.init(2, this.f89586a, ivParameterSpec);
        byte[] bArrDoFinal = cipher.doFinal(byteArray2);
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArrDoFinal, 0, bArrDoFinal.length);
        parcelObtain.setDataPosition(0);
        Bundle bundle2 = new Bundle();
        bundle2.readFromParcel(parcelObtain);
        parcelObtain.recycle();
        return bundle2;
    }

    Bundle d(Bundle bundle) throws GeneralSecurityException {
        Objects.requireNonNull(bundle, "Cannot encrypt null bundle.");
        Parcel parcelObtain = Parcel.obtain();
        bundle.writeToParcel(parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        Cipher cipher = Cipher.getInstance(f89582h);
        cipher.init(1, this.f89586a);
        byte[] bArrDoFinal = cipher.doFinal(bArrMarshall);
        byte[] iv = cipher.getIV();
        byte[] bArrB = b(bArrDoFinal, iv);
        Bundle bundle2 = new Bundle();
        bundle2.putByteArray(f89578d, bArrDoFinal);
        bundle2.putByteArray(f89579e, bArrB);
        bundle2.putByteArray(f89581g, iv);
        return bundle2;
    }
}
