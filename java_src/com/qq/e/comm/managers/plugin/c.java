package com.qq.e.comm.managers.plugin;

import android.text.TextUtils;
import android.util.Base64;
import java.io.File;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f78341c = {82, com.sigmob.sdk.archives.tar.e.Q, 65, 47, 69, 67, 66, 47, 80, 75, 67, com.sigmob.sdk.archives.tar.e.Q, com.sigmob.sdk.archives.tar.e.I, 80, 97, 100, 100, 105, 110, com.sigmob.sdk.archives.tar.e.T};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private PublicKey f78342a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f78343b;

    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f78344a = new c();
    }

    private c() {
        boolean z10;
        try {
            this.f78342a = c("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDKta2b5Vw5YkWHCAj4rJCwS227\r/35FZ29e4I6pS2B8zSq2RgBpXUuMg7oZF1Qt3x0iyg8PeyblyNeCRB6gIMehFThe\r1Y7m1FaQyaZp+CJYOTLM4/THKp9UndrEgJ/5a83vP1375YCV2lMvWARrNlBep4RN\rnESUJhQz58Gr/F39TwIDAQAB");
            z10 = true;
        } catch (Throwable unused) {
            z10 = false;
        }
        this.f78343b = z10;
    }

    public static c a() {
        return b.f78344a;
    }

    private String b(String str) {
        if (this.f78342a == null) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 0);
        try {
            Cipher cipher = Cipher.getInstance(new String(f78341c, "UTF-8"));
            cipher.init(2, this.f78342a);
            return new String(cipher.doFinal(bArrDecode), "UTF-8").trim();
        } catch (Throwable unused) {
            return null;
        }
    }

    private PublicKey c(String str) throws Exception {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 0)));
        } catch (NullPointerException unused) {
            throw new Exception("公钥数据为空");
        } catch (NoSuchAlgorithmException unused2) {
            throw new Exception("无此算法");
        } catch (InvalidKeySpecException unused3) {
            throw new Exception("公钥非法");
        }
    }

    public boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        if (this.f78343b) {
            return str2.equals(b(str));
        }
        return true;
    }

    public boolean a(String str, File file) {
        if (file == null || !file.exists()) {
            return false;
        }
        return a(str, d.a(file));
    }
}
