package com.byazt.gy;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 2085, 20})
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14796a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f14799i;
    public a sl;
    public boolean sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public tt f14802x;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f14798da = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ve f14801t = new ve();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14797c = 0;
    public int tt = 1;
    public int ve = 2;
    public int uj = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14800n = 4;

    public c() {
        uj();
    }

    private int n(int i10) {
        if (this.f14796a != 2) {
            throw new IndexOutOfBoundsException("Current event is not START_TAG.");
        }
        int i11 = i10 * 5;
        if (i11 < this.f14799i.length) {
            return i11;
        }
        throw new IndexOutOfBoundsException("Invalid attribute index (" + i10 + ").");
    }

    public void c(InputStream inputStream) {
        c();
        if (inputStream != null) {
            this.f14802x = new tt(inputStream);
        }
    }

    public int tt() throws IOException {
        try {
            if (this.f14802x == null) {
                throw new IOException("Parser is not opened.");
            }
            n();
            return this.f14796a;
        } catch (IOException e10) {
            c();
            throw e10;
        }
    }

    public String uj(int i10) {
        int iN = n(i10);
        int[] iArr = this.f14799i;
        if (iArr[iN + 3] != 3) {
            return "";
        }
        return this.sl.c(iArr[iN + 2]);
    }

    public int ve() {
        if (this.f14796a != 2) {
            return -1;
        }
        return this.f14799i.length / 5;
    }

    public int ve(int i10) {
        return this.f14799i[n(i10) + 4];
    }

    public void c() {
        if (this.f14798da) {
            this.f14798da = false;
            this.f14802x.c();
            this.sl = null;
            this.f14802x = null;
            this.f14801t.c();
            uj();
        }
    }

    private void n() throws IOException {
        if (this.sl == null) {
            this.f14802x.tt(524291);
            this.f14802x.ve();
            this.sl = a.c(this.f14802x);
            this.f14801t.n();
            this.f14798da = true;
        }
        int i10 = this.f14796a;
        if (i10 == this.tt) {
            return;
        }
        uj();
        while (true) {
            if (this.sp) {
                this.sp = false;
                this.f14801t.a();
            }
            if (i10 == this.uj && this.f14801t.uj() == 1 && this.f14801t.tt() == 0) {
                this.f14796a = this.tt;
                return;
            }
            int iTt = i10 == this.f14797c ? 1048834 : this.f14802x.tt();
            if (iTt == 524672) {
                int iTt2 = this.f14802x.tt();
                if (iTt2 >= 8 && iTt2 % 4 == 0) {
                    this.f14802x.c((iTt2 / 4) - 2);
                } else {
                    throw new IOException("Invalid resource ids size (" + iTt2 + ").");
                }
            } else {
                if (iTt < 1048832 || iTt > 1048836) {
                    throw new IOException("Invalid chunk type (" + iTt + ").");
                }
                if (iTt == 1048834 && i10 == -1) {
                    this.f14796a = this.f14797c;
                    return;
                }
                this.f14802x.ve();
                this.f14802x.tt();
                this.f14802x.ve();
                if (iTt == 1048832 || iTt == 1048833) {
                    if (iTt == 1048832) {
                        this.f14801t.c(this.f14802x.tt(), this.f14802x.tt());
                    } else {
                        this.f14802x.ve();
                        this.f14802x.ve();
                        this.f14801t.ve();
                    }
                } else if (iTt == 1048834) {
                    this.f14802x.tt();
                    this.f14802x.tt();
                    this.f14802x.ve();
                    int iTt3 = this.f14802x.tt() & 65535;
                    this.f14802x.tt();
                    this.f14799i = this.f14802x.c(iTt3 * 5);
                    int i11 = 3;
                    while (true) {
                        int[] iArr = this.f14799i;
                        if (i11 < iArr.length) {
                            iArr[i11] = iArr[i11] >>> 24;
                            i11 += 5;
                        } else {
                            this.f14801t.n();
                            this.f14796a = this.ve;
                            return;
                        }
                    }
                } else {
                    if (iTt == 1048835) {
                        this.f14802x.tt();
                        this.f14802x.tt();
                        this.f14796a = this.uj;
                        this.sp = true;
                        return;
                    }
                    if (iTt == 1048836) {
                        this.f14802x.tt();
                        this.f14802x.ve();
                        this.f14802x.ve();
                        this.f14796a = this.f14800n;
                        return;
                    }
                }
            }
        }
    }

    private void uj() {
        this.f14799i = null;
        this.f14796a = -1;
    }

    public int tt(int i10) {
        return this.f14799i[n(i10) + 3];
    }

    public String c(int i10) {
        int i11 = this.f14799i[n(i10) + 1];
        return i11 == -1 ? "" : this.sl.c(i11);
    }
}
