package com.aggmoread.sdk.z.c.a.a.d.b;

/* JADX INFO: loaded from: classes7.dex */
public class j implements com.aggmoread.sdk.z.c.a.a.c.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f5129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Exception f5130c;

    public j(int i10, String str) {
        this.f5128a = i10;
        this.f5129b = str;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.d
    public int a() {
        return this.f5128a;
    }

    @Override // com.aggmoread.sdk.z.c.a.a.c.d
    public String b() {
        return this.f5129b;
    }

    public String toString() {
        return String.format("{ErrorCode= %s,ErrMsg= %s,ErrExcep= %s}", Integer.valueOf(this.f5128a), this.f5129b, this.f5130c);
    }

    public j(int i10, String str, Exception exc) {
        this.f5128a = i10;
        this.f5129b = str;
        this.f5130c = exc;
    }
}
