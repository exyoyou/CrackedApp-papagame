package com.cmic.gen.sdk.e;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes9.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f24489a = "i";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static i f24490d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PublicKey f24491b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PublicKey f24492c = null;

    private i() {
        try {
            b();
            if (this.f24492c == null) {
                c();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static i a() {
        if (f24490d == null) {
            f24490d = new i();
        }
        return f24490d;
    }

    private void c() throws Exception {
        try {
            this.f24492c = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAuyqBGJVxu+5Z2ZwItIhl\noxI53CVpYUR3OWAQyAQNcMhDDf3nGsxLLHP8kGWqrpLn1uAIgI+EIAl0sM+i1leD\nFD+sYU2rkUVZgpwO7ly+THBFw/YcZNwS094NBdhzxmCCFbCKHVNzDLirlV9T2q4k\nJhjaEmyCOtSU6+mdjcHhbcbF6lKYx8tfQlpPmyM5suFY138qtEoB4b+q/j8q22MI\naUotg1Av257RuMh97hAwoi5D7HS5LH0piLIN/au/X08rxbXnWNdgQtFtUeCNy3vw\nkO0ykg5qH942X8poQ+a9GgBUeDBpY4GSIv6/qq+zJxiJxpoL0SGKAP3FlcuLr07f\nxwIDAQAB", 0)));
        } catch (NullPointerException unused) {
            throw new Exception("公钥输入流为空");
        }
    }

    public String b(byte[] bArr) {
        if (this.f24491b == null) {
            c.a(f24489a, "mServerPublicKey == null");
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA256AndMGF1Padding");
            cipher.init(1, this.f24492c);
            return Base64.encodeToString(cipher.doFinal(bArr), 0);
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public String a(byte[] bArr) {
        if (this.f24491b == null) {
            c.a(f24489a, "mServerPublicKey == null");
            return "";
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWithSHA256AndMGF1Padding");
            cipher.init(1, this.f24491b);
            return q.a(cipher.doFinal(bArr));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    private void b() throws Exception {
        try {
            this.f24491b = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDNFGdEpQ1d8cPqekvvEDQyBGnI\nKwvjX9o3OmnnqWMGbIiFYIpc21QeG7aqizuWdXlgS5M9rstDfHQfG/AaPElJ7Yix\nBCau4hdVwFpRmb9NIuqavDeHKP9BKPZ01Ra5/666NGKBqmkRRer3lBCe6EKNUc2U\n/DZg6U/Q3CTPiORt/wIDAQAB", 0)));
        } catch (NullPointerException e10) {
            e10.printStackTrace();
        }
    }
}
