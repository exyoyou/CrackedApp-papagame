package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes2.dex */
public final class bl extends m implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f83468a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f83469b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83470c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f83471d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f83472e = "";

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb2, int i10) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f83468a, 0);
        String str = this.f83469b;
        if (str != null) {
            lVar.a(str, 1);
        }
        String str2 = this.f83470c;
        if (str2 != null) {
            lVar.a(str2, 2);
        }
        String str3 = this.f83471d;
        if (str3 != null) {
            lVar.a(str3, 3);
        }
        String str4 = this.f83472e;
        if (str4 != null) {
            lVar.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f83468a = kVar.b(0, true);
        this.f83469b = kVar.b(1, false);
        this.f83470c = kVar.b(2, false);
        this.f83471d = kVar.b(3, false);
        this.f83472e = kVar.b(4, false);
    }
}
