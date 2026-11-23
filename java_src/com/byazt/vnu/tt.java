package com.byazt.vnu;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 699, 13})
public class tt {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public sp f21309da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final byte[] f21310i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f21311m;
    public int nu;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f21313t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final x f21315x;
    public boolean yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f21316z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashMap<Integer, Integer> f21308c = new HashMap<>();
    public boolean tt = false;
    public boolean sl = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final c f21314u = new c();
    public int ve = 0;
    public int uj = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f21312n = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f21307a = 3;
    public int sp = 4;

    public tt(byte[] bArr, x xVar) {
        this.f21315x = xVar;
        this.f21310i = bArr;
        uj();
    }

    private void n() throws IOException {
        int[] iArr;
        if (!this.sl) {
            this.f21309da.c(524291, 524289);
            this.f21309da.c();
            t.c(this.f21309da);
            this.f21314u.n();
            this.sl = true;
        }
        int i10 = this.f21316z;
        if (i10 == this.uj) {
            return;
        }
        uj();
        while (true) {
            int i11 = 0;
            if (this.yp) {
                this.yp = false;
                this.f21314u.a();
            }
            if (i10 == this.f21307a && this.f21314u.uj() == 1 && this.f21314u.tt() == 0) {
                this.f21316z = this.uj;
                return;
            }
            int i12 = i10 == this.ve ? 1048834 : this.f21309da.readInt();
            if (i12 == 524672) {
                this.f21308c.clear();
                int i13 = this.f21309da.readInt();
                if (i13 < 8 || i13 % 4 != 0) {
                    throw new IOException("Invalid resource ids size (" + i13 + ").");
                }
                int iC = sl.c(this.f21309da);
                this.f21313t = this.f21309da.c((i13 / 4) - 2);
                ArrayList arrayList = new ArrayList();
                while (true) {
                    int[] iArr2 = this.f21313t;
                    if (i11 >= iArr2.length) {
                        break;
                    }
                    int iC2 = sl.c(this.f21310i, iArr2[i11], (i11 * 4) + iC, this.f21315x);
                    if (iC2 >= 2130706432) {
                        this.f21308c.put(Integer.valueOf(i11), Integer.valueOf(iC2));
                        arrayList.add(Integer.valueOf(iC2));
                    }
                    i11++;
                }
                ArrayList arrayList2 = new ArrayList(arrayList);
                Collections.sort(arrayList2);
                if (!arrayList.equals(arrayList2)) {
                    this.tt = true;
                }
            } else {
                if (i12 < 1048832 || i12 > 1048836) {
                    throw new IOException("Invalid chunk type (" + i12 + ").");
                }
                if (i12 == 1048834 && i10 == -1) {
                    this.f21316z = this.ve;
                    return;
                }
                this.f21309da.c();
                this.f21309da.readInt();
                this.f21309da.c();
                if (i12 == 1048832 || i12 == 1048833) {
                    if (i12 == 1048832) {
                        this.f21314u.c(this.f21309da.readInt(), this.f21309da.readInt());
                    } else {
                        this.f21309da.c();
                        this.f21309da.c();
                        this.f21314u.ve();
                    }
                } else {
                    if (i12 == 1048834) {
                        this.f21309da.readInt();
                        this.f21309da.readInt();
                        this.f21309da.c();
                        int i14 = this.f21309da.readInt() & 65535;
                        this.nu = (65535 & this.f21309da.readInt()) - 1;
                        int iC3 = sl.c(this.f21309da);
                        int i15 = i14 * 5;
                        this.f21311m = this.f21309da.c(i15);
                        int i16 = 3;
                        while (true) {
                            iArr = this.f21311m;
                            if (i16 >= iArr.length) {
                                break;
                            }
                            iArr[i16] = iArr[i16] >>> 24;
                            i16 += 5;
                        }
                        if (iArr.length != i15) {
                            throw new RuntimeException();
                        }
                        boolean z10 = false;
                        while (i11 < i14) {
                            int i17 = i11 * 5;
                            if (this.f21308c.containsKey(Integer.valueOf(this.f21311m[i17 + 1]))) {
                                z10 = true;
                            }
                            int[] iArr3 = this.f21311m;
                            int i18 = iArr3[i17 + 3];
                            if (i18 == 1 || i18 == 2) {
                                int i19 = i17 + 4;
                                sl.c(this.f21310i, iArr3[i19], (i19 * 4) + iC3, this.f21315x);
                            }
                            i11++;
                        }
                        if (z10 && this.tt) {
                            sl.c(iC3, this.f21310i, this.f21311m, i14, this.f21308c);
                        }
                        this.f21314u.n();
                        this.f21316z = this.f21312n;
                        return;
                    }
                    if (i12 == 1048835) {
                        this.f21309da.readInt();
                        this.f21309da.readInt();
                        this.f21316z = this.f21307a;
                        this.yp = true;
                        return;
                    }
                    if (i12 == 1048836) {
                        this.f21309da.readInt();
                        this.f21309da.c();
                        this.f21309da.c();
                        this.f21316z = this.sp;
                        return;
                    }
                }
            }
        }
    }

    private void uj() {
        this.f21316z = -1;
        this.f21311m = null;
        this.nu = -1;
    }

    public void c(InputStream inputStream) {
        c();
        if (inputStream != null) {
            this.f21309da = new sp(new i(new n(inputStream)));
        }
    }

    public int tt() throws IOException {
        if (this.f21309da == null) {
            throw new RuntimeException("Parser is not opened.");
        }
        try {
            n();
            return this.f21316z;
        } catch (IOException e10) {
            c();
            throw e10;
        }
    }

    public int ve() throws IOException {
        return tt();
    }

    @com.byazt.zqa.c(c = {0, 1, 699, 194})
    private static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f21317c = new int[32];
        public int tt;
        public int ve;

        public void a() {
            int i10 = this.tt;
            if (i10 == 0) {
                return;
            }
            int i11 = i10 - 1;
            int i12 = this.f21317c[i11] * 2;
            if ((i11 - 1) - i12 == 0) {
                return;
            }
            this.tt = i10 - (i12 + 2);
            this.ve--;
        }

        public void c() {
            this.tt = 0;
            this.ve = 0;
        }

        public void n() {
            c(2);
            int i10 = this.tt;
            int[] iArr = this.f21317c;
            iArr[i10] = 0;
            iArr[i10 + 1] = 0;
            this.tt = i10 + 2;
            this.ve++;
        }

        public int tt() {
            int i10 = this.tt;
            if (i10 == 0) {
                return 0;
            }
            return this.f21317c[i10 - 1];
        }

        public int uj() {
            return this.ve;
        }

        public boolean ve() {
            int i10;
            int[] iArr;
            int i11;
            int i12 = this.tt;
            if (i12 == 0 || (i11 = (iArr = this.f21317c)[(i10 = i12 - 1)]) == 0) {
                return false;
            }
            int i13 = i11 - 1;
            int i14 = i10 - 2;
            iArr[i14] = i13;
            iArr[i14 - ((i13 * 2) + 1)] = i13;
            this.tt = i12 - 2;
            return true;
        }

        public void c(int i10, int i11) {
            if (this.ve == 0) {
                n();
            }
            c(2);
            int i12 = this.tt;
            int i13 = i12 - 1;
            int[] iArr = this.f21317c;
            int i14 = iArr[i13];
            int i15 = (i13 - 1) - (i14 * 2);
            int i16 = i14 + 1;
            iArr[i15] = i16;
            iArr[i13] = i10;
            iArr[i13 + 1] = i11;
            iArr[i13 + 2] = i16;
            this.tt = i12 + 2;
        }

        private void c(int i10) {
            int[] iArr = this.f21317c;
            int length = iArr.length;
            int i11 = this.tt;
            int i12 = length - i11;
            if (i12 > i10) {
                return;
            }
            int[] iArr2 = new int[(iArr.length + i12) * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f21317c = iArr2;
        }
    }

    public void c() {
        if (this.sl) {
            this.sl = false;
            this.f21309da = null;
            this.f21313t = null;
            this.f21314u.c();
            uj();
        }
    }

    public void tt(InputStream inputStream) {
        c(inputStream);
    }
}
