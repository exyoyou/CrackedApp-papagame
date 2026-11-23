package com.byazt.hn;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 25, 34})
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public float[] f14969a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14970c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f14971i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float[] f14972n;
    public float[] sp;
    public int tt;
    public float[] uj;
    public float[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int[] f14973x;

    public void c(int i10) {
        float[] fArr = this.ve;
        if (fArr == null || fArr.length < i10) {
            this.ve = new float[i10];
            this.uj = new float[i10];
            this.f14972n = new float[i10];
            this.f14969a = new float[i10];
            this.sp = new float[i10];
            this.f14973x = new int[i10];
            this.f14971i = new int[i10];
        }
    }
}
