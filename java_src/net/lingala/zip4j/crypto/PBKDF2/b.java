package net.lingala.zip4j.crypto.PBKDF2;

import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class b implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Mac f94572a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f94573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f94574c;

    public b(String str) {
        this.f94574c = str;
        try {
            Mac mac = Mac.getInstance(str);
            this.f94572a = mac;
            this.f94573b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.f
    public int a() {
        return this.f94573b;
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.f
    public void b(byte[] bArr) {
        try {
            this.f94572a.init(new SecretKeySpec(bArr, this.f94574c));
        } catch (InvalidKeyException e10) {
            throw new RuntimeException(e10);
        }
    }

    @Override // net.lingala.zip4j.crypto.PBKDF2.f
    public byte[] c(byte[] bArr) {
        return this.f94572a.doFinal(bArr);
    }

    public byte[] d() {
        return this.f94572a.doFinal();
    }

    public void update(byte[] bArr) {
        try {
            this.f94572a.update(bArr);
        } catch (IllegalStateException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void update(byte[] bArr, int i10, int i11) {
        try {
            this.f94572a.update(bArr, i10, i11);
        } catch (IllegalStateException e10) {
            throw new RuntimeException(e10);
        }
    }

    public b(String str, String str2) {
        this.f94574c = str;
        try {
            Mac mac = Mac.getInstance(str, str2);
            this.f94572a = mac;
            this.f94573b = mac.getMacLength();
        } catch (NoSuchAlgorithmException e10) {
            throw new RuntimeException(e10);
        } catch (NoSuchProviderException e11) {
            throw new RuntimeException(e11);
        }
    }
}
