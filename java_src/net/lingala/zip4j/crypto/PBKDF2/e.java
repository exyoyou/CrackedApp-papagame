package net.lingala.zip4j.crypto.PBKDF2;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected byte[] f94577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f94578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f94579c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f94580d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected byte[] f94581e;

    public e() {
        this.f94579c = null;
        this.f94580d = "UTF-8";
        this.f94577a = null;
        this.f94578b = 1000;
        this.f94581e = null;
    }

    public byte[] a() {
        return this.f94581e;
    }

    public String b() {
        return this.f94579c;
    }

    public String c() {
        return this.f94580d;
    }

    public int d() {
        return this.f94578b;
    }

    public byte[] e() {
        return this.f94577a;
    }

    public void f(byte[] bArr) {
        this.f94581e = bArr;
    }

    public void g(String str) {
        this.f94579c = str;
    }

    public void h(String str) {
        this.f94580d = str;
    }

    public void i(int i10) {
        this.f94578b = i10;
    }

    public void j(byte[] bArr) {
        this.f94577a = bArr;
    }

    public e(String str, String str2, byte[] bArr, int i10) {
        this.f94579c = str;
        this.f94580d = str2;
        this.f94577a = bArr;
        this.f94578b = i10;
        this.f94581e = null;
    }

    public e(String str, String str2, byte[] bArr, int i10, byte[] bArr2) {
        this.f94579c = str;
        this.f94580d = str2;
        this.f94577a = bArr;
        this.f94578b = i10;
        this.f94581e = bArr2;
    }
}
