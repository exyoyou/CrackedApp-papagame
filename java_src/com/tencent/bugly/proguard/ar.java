package com.tencent.bugly.proguard;

/* JADX INFO: loaded from: classes2.dex */
public final class ar implements Comparable<ar> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f83319a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f83320b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f83321c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f83322d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f83323e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f83324f = 0;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ar arVar) {
        ar arVar2 = arVar;
        if (arVar2 == null) {
            return 1;
        }
        long j10 = this.f83320b - arVar2.f83320b;
        if (j10 <= 0) {
            return j10 < 0 ? -1 : 0;
        }
        return 1;
    }
}
