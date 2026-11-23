package com.tencent.stat.common;

/* JADX INFO: loaded from: classes2.dex */
class j extends h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f83906g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final byte[] f83907h = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 43, 47};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f83908i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 45, 95};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f83909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f83910d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f83911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f83912f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final byte[] f83913j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f83914k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final byte[] f83915l;

    public j(int i10, byte[] bArr) {
        this.f83899a = bArr;
        this.f83910d = (i10 & 1) == 0;
        boolean z10 = (i10 & 2) == 0;
        this.f83911e = z10;
        this.f83912f = (i10 & 4) != 0;
        this.f83915l = (i10 & 8) == 0 ? f83907h : f83908i;
        this.f83913j = new byte[2];
        this.f83909c = 0;
        this.f83914k = z10 ? 19 : -1;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:12:0x0050  */
    /* JADX WARN: Code duplicated, block: B:27:0x0094  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:32:0x00dd A[EDGE_INSN: B:32:0x00dd->B:22:0x008a BREAK  A[LOOP:0: B:25:0x0090->B:33:0x00e4]] */
    /* JADX WARN: Code duplicated, block: B:33:0x00e4 A[LOOP:0: B:25:0x0090->B:33:0x00e4, LOOP_END] */
    /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
        java.lang.StackOverflowError
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
        	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
        */
    public boolean a(byte[] r18, int r19, int r20, boolean r21) {
        /*
            Method dump skipped, instruction units count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.stat.common.j.a(byte[], int, int, boolean):boolean");
    }
}
