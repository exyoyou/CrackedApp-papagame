package com.byazt.yxu;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1880, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f22486c = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBALo9WqslO45/EjPWz6YMAu8PBgzV9Ujk3TSQSgebYdNPLJ2u0Y69eSj5DRk7uVplC+WkdEJGznST4OXTRZyKI9ECAwEAAQ==";
    public static volatile tt tt = null;
    public static String ve = "OutProcessEncryptUtils";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public uj f22487n;
    public PublicKey uj = null;

    private tt() {
    }

    public static tt c() {
        if (tt == null) {
            synchronized (tt.class) {
                if (tt == null) {
                    tt = new tt();
                }
            }
        }
        return tt;
    }

    private PublicKey tt(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException {
        if (this.uj == null) {
            this.uj = ve(context);
        }
        return this.uj;
    }

    private uj uj(Context context) {
        uj ujVar = new uj();
        ujVar.f22488c = ve.c();
        ujVar.tt = ve.c();
        String str = ujVar.f22488c + "#" + ujVar.tt;
        for (int i10 = 2; i10 >= 0; i10--) {
            byte[] bArrC = c(context, str);
            if (bArrC != null && bArrC.length > 0) {
                ujVar.ve = Base64.encodeToString(bArrC, 2);
            }
            if (!TextUtils.isEmpty(ujVar.ve)) {
                break;
            }
        }
        return ujVar;
    }

    private PublicKey ve(Context context) throws InvalidKeySpecException, NoSuchAlgorithmException {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(f22486c, 2)));
    }

    private byte[] c(PublicKey publicKey, byte[] bArr) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        cipher.init(1, publicKey);
        return cipher.doFinal(bArr);
    }

    public uj c(Context context) {
        uj ujVarUj;
        uj ujVar = this.f22487n;
        if (ujVar != null) {
            return ujVar;
        }
        synchronized (this) {
            ujVarUj = uj(context);
            this.f22487n = ujVarUj;
        }
        return ujVarUj;
    }

    private byte[] c(Context context, String str) {
        try {
            return c(tt(context), str.getBytes());
        } catch (Exception unused) {
            return null;
        }
    }
}
