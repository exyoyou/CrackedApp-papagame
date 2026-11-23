package com.byazt.jb;

import com.alipay.sdk.packet.d;
import com.baidu.mobads.sdk.internal.cm;
import com.byazt.mk.my;
import com.haima.hmcp.ConstantsInternal;
import com.sigmob.sdk.downloader.core.breakpoint.f;
import com.windmill.sdk.point.PointCategory;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 15})
public final class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ve[] f15786c;
    public static final Map<com.byazt.mk.a, Integer> tt;

    @com.byazt.zqa.c(c = {0, 1, 63, 123})
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final com.byazt.mk.n f15787a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ve[] f15788c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final List<ve> f15789n;
        public final int sp;
        public int tt;
        public int uj;
        public int ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f15790x;

        public c(int i10, my myVar) {
            this(i10, i10, myVar);
        }

        private void a() throws IOException {
            this.f15789n.add(new ve(uj.c(ve()), ve()));
        }

        private int c(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.f15788c.length;
                while (true) {
                    length--;
                    i11 = this.tt;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.f15788c[length].f15800i;
                    i10 -= i13;
                    this.uj -= i13;
                    this.ve--;
                    i12++;
                }
                ve[] veVarArr = this.f15788c;
                System.arraycopy(veVarArr, i11 + 1, veVarArr, i11 + 1 + i12, this.ve);
                this.tt += i12;
            }
            return i12;
        }

        private void n() {
            Arrays.fill(this.f15788c, (Object) null);
            this.tt = this.f15788c.length - 1;
            this.ve = 0;
            this.uj = 0;
        }

        private void sp() throws IOException {
            c(-1, new ve(uj.c(ve()), ve()));
        }

        private void uj() {
            int i10 = this.f15790x;
            int i11 = this.uj;
            if (i10 < i11) {
                if (i10 == 0) {
                    n();
                } else {
                    c(i11 - i10);
                }
            }
        }

        private int ve(int i10) {
            return this.tt + 1 + i10;
        }

        private int x() throws IOException {
            return this.f15787a.x() & 255;
        }

        public List<ve> tt() {
            ArrayList arrayList = new ArrayList(this.f15789n);
            this.f15789n.clear();
            return arrayList;
        }

        public c(int i10, int i11, my myVar) {
            this.f15789n = new ArrayList();
            ve[] veVarArr = new ve[8];
            this.f15788c = veVarArr;
            this.tt = veVarArr.length - 1;
            this.ve = 0;
            this.uj = 0;
            this.sp = i10;
            this.f15790x = i11;
            this.f15787a = com.byazt.mk.t.c(myVar);
        }

        public com.byazt.mk.a ve() throws IOException {
            int iX = x();
            boolean z10 = (iX & 128) == 128;
            int iC = c(iX, 127);
            return z10 ? com.byazt.mk.a.c(sl.c().c(this.f15787a.sp(iC))) : this.f15787a.ve(iC);
        }

        private void tt(int i10) throws IOException {
            if (sp(i10)) {
                this.f15789n.add(uj.f15786c[i10]);
                return;
            }
            int iVe = ve(i10 - uj.f15786c.length);
            if (iVe >= 0) {
                ve[] veVarArr = this.f15788c;
                if (iVe <= veVarArr.length - 1) {
                    this.f15789n.add(veVarArr[iVe]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i10 + 1));
        }

        private com.byazt.mk.a a(int i10) {
            if (sp(i10)) {
                return uj.f15786c[i10].sp;
            }
            return this.f15788c[ve(i10 - uj.f15786c.length)].sp;
        }

        private boolean sp(int i10) {
            return i10 >= 0 && i10 <= uj.f15786c.length - 1;
        }

        private void uj(int i10) throws IOException {
            this.f15789n.add(new ve(a(i10), ve()));
        }

        private void n(int i10) throws IOException {
            c(-1, new ve(a(i10), ve()));
        }

        public void c() throws IOException {
            while (!this.f15787a.n()) {
                int iX = this.f15787a.x() & 255;
                if (iX == 128) {
                    throw new IOException("index == 0");
                }
                if ((iX & 128) == 128) {
                    tt(c(iX, 127) - 1);
                } else if (iX == 64) {
                    sp();
                } else if ((iX & 64) == 64) {
                    n(c(iX, 63) - 1);
                } else if ((iX & 32) == 32) {
                    int iC = c(iX, 31);
                    this.f15790x = iC;
                    if (iC >= 0 && iC <= this.sp) {
                        uj();
                    } else {
                        throw new IOException("Invalid dynamic table size update " + this.f15790x);
                    }
                } else if (iX != 16 && iX != 0) {
                    uj(c(iX, 15) - 1);
                } else {
                    a();
                }
            }
        }

        private void c(int i10, ve veVar) {
            this.f15789n.add(veVar);
            int i11 = veVar.f15800i;
            if (i10 != -1) {
                i11 -= this.f15788c[ve(i10)].f15800i;
            }
            int i12 = this.f15790x;
            if (i11 > i12) {
                n();
                return;
            }
            int iC = c((this.uj + i11) - i12);
            if (i10 == -1) {
                int i13 = this.ve + 1;
                ve[] veVarArr = this.f15788c;
                if (i13 > veVarArr.length) {
                    ve[] veVarArr2 = new ve[veVarArr.length * 2];
                    System.arraycopy(veVarArr, 0, veVarArr2, veVarArr.length, veVarArr.length);
                    this.tt = this.f15788c.length - 1;
                    this.f15788c = veVarArr2;
                }
                int i14 = this.tt;
                this.tt = i14 - 1;
                this.f15788c[i14] = veVar;
                this.ve++;
            } else {
                this.f15788c[i10 + ve(i10) + iC] = veVar;
            }
            this.uj += i11;
        }

        public int c(int i10, int i11) throws IOException {
            int i12 = i10 & i11;
            if (i12 < i11) {
                return i12;
            }
            int i13 = 0;
            while (true) {
                int iX = x();
                if ((iX & 128) == 0) {
                    return i11 + (iX << i13);
                }
                i11 += (iX & 127) << i13;
                i13 += 7;
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 63, 153})
    static final class tt {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f15791a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f15792c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public boolean f15793da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f15794i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f15795n;
        public final com.byazt.mk.ve sp;
        public int tt;
        public int uj;
        public ve[] ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final boolean f15796x;

        public tt(com.byazt.mk.ve veVar) {
            this(4096, true, veVar);
        }

        private void c() {
            Arrays.fill(this.ve, (Object) null);
            this.uj = this.ve.length - 1;
            this.f15795n = 0;
            this.f15791a = 0;
        }

        private int tt(int i10) {
            int i11;
            int i12 = 0;
            if (i10 > 0) {
                int length = this.ve.length;
                while (true) {
                    length--;
                    i11 = this.uj;
                    if (length < i11 || i10 <= 0) {
                        break;
                    }
                    int i13 = this.ve[length].f15800i;
                    i10 -= i13;
                    this.f15791a -= i13;
                    this.f15795n--;
                    i12++;
                }
                ve[] veVarArr = this.ve;
                System.arraycopy(veVarArr, i11 + 1, veVarArr, i11 + 1 + i12, this.f15795n);
                ve[] veVarArr2 = this.ve;
                int i14 = this.uj;
                Arrays.fill(veVarArr2, i14 + 1, i14 + 1 + i12, (Object) null);
                this.uj += i12;
            }
            return i12;
        }

        public tt(int i10, boolean z10, com.byazt.mk.ve veVar) {
            this.f15794i = Integer.MAX_VALUE;
            ve[] veVarArr = new ve[8];
            this.ve = veVarArr;
            this.uj = veVarArr.length - 1;
            this.f15795n = 0;
            this.f15791a = 0;
            this.f15792c = i10;
            this.tt = i10;
            this.f15796x = z10;
            this.sp = veVar;
        }

        private void c(ve veVar) {
            int i10 = veVar.f15800i;
            int i11 = this.tt;
            if (i10 > i11) {
                c();
                return;
            }
            tt((this.f15791a + i10) - i11);
            int i12 = this.f15795n + 1;
            ve[] veVarArr = this.ve;
            if (i12 > veVarArr.length) {
                ve[] veVarArr2 = new ve[veVarArr.length * 2];
                System.arraycopy(veVarArr, 0, veVarArr2, veVarArr.length, veVarArr.length);
                this.uj = this.ve.length - 1;
                this.ve = veVarArr2;
            }
            int i13 = this.uj;
            this.uj = i13 - 1;
            this.ve[i13] = veVar;
            this.f15795n++;
            this.f15791a += i10;
        }

        private void tt() {
            int i10 = this.tt;
            int i11 = this.f15791a;
            if (i10 < i11) {
                if (i10 == 0) {
                    c();
                } else {
                    tt(i11 - i10);
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:22:0x006a  */
        public void c(List<ve> list) throws IOException {
            int length;
            int length2;
            if (this.f15793da) {
                int i10 = this.f15794i;
                if (i10 < this.tt) {
                    c(i10, 31, 32);
                }
                this.f15793da = false;
                this.f15794i = Integer.MAX_VALUE;
                c(this.tt, 31, 32);
            }
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ve veVar = list.get(i11);
                com.byazt.mk.a aVarA = veVar.sp.a();
                com.byazt.mk.a aVar = veVar.f15801x;
                Integer num = uj.tt.get(aVarA);
                if (num != null) {
                    length = num.intValue() + 1;
                    if (length <= 1 || length >= 8) {
                        length2 = length;
                        length = -1;
                    } else {
                        ve[] veVarArr = uj.f15786c;
                        if (com.byazt.kh.ve.c(veVarArr[length - 1].f15801x, aVar)) {
                            length2 = length;
                        } else if (com.byazt.kh.ve.c(veVarArr[length].f15801x, aVar)) {
                            length2 = length;
                            length++;
                        } else {
                            length2 = length;
                            length = -1;
                        }
                    }
                } else {
                    length = -1;
                    length2 = -1;
                }
                if (length == -1) {
                    int length3 = this.ve.length;
                    for (int i12 = this.uj + 1; i12 < length3; i12++) {
                        if (com.byazt.kh.ve.c(this.ve[i12].sp, aVarA)) {
                            if (com.byazt.kh.ve.c(this.ve[i12].f15801x, aVar)) {
                                length = uj.f15786c.length + (i12 - this.uj);
                                break;
                            } else if (length2 == -1) {
                                length2 = (i12 - this.uj) + uj.f15786c.length;
                            }
                        }
                    }
                }
                if (length != -1) {
                    c(length, 127, 128);
                } else if (length2 == -1) {
                    this.sp.i(64);
                    c(aVarA);
                    c(aVar);
                    c(veVar);
                } else if (aVarA.c(ve.f15798c) && !ve.f15797a.equals(aVarA)) {
                    c(length2, 15, 0);
                    c(aVar);
                } else {
                    c(length2, 63, 64);
                    c(aVar);
                    c(veVar);
                }
            }
        }

        public void c(int i10, int i11, int i12) {
            if (i10 < i11) {
                this.sp.i(i10 | i12);
                return;
            }
            this.sp.i(i12 | i11);
            int i13 = i10 - i11;
            while (i13 >= 128) {
                this.sp.i(128 | (i13 & 127));
                i13 >>>= 7;
            }
            this.sp.i(i13);
        }

        public void c(com.byazt.mk.a aVar) throws IOException {
            if (this.f15796x && sl.c().c(aVar) < aVar.sp()) {
                com.byazt.mk.ve veVar = new com.byazt.mk.ve();
                sl.c().c(aVar, veVar);
                com.byazt.mk.a aVarYp = veVar.yp();
                c(aVarYp.sp(), 127, 128);
                this.sp.tt(aVarYp);
                return;
            }
            c(aVar.sp(), 127, 0);
            this.sp.tt(aVar);
        }

        public void c(int i10) {
            this.f15792c = i10;
            int iMin = Math.min(i10, 16384);
            int i11 = this.tt;
            if (i11 == iMin) {
                return;
            }
            if (iMin < i11) {
                this.f15794i = Math.min(this.f15794i, iMin);
            }
            this.f15793da = true;
            this.tt = iMin;
            tt();
        }
    }

    static {
        com.byazt.mk.a aVar = ve.ve;
        com.byazt.mk.a aVar2 = ve.uj;
        com.byazt.mk.a aVar3 = ve.f15799n;
        com.byazt.mk.a aVar4 = ve.tt;
        f15786c = new ve[]{new ve(ve.f15797a, ""), new ve(aVar, "GET"), new ve(aVar, "POST"), new ve(aVar2, e.F0), new ve(aVar2, "/index.html"), new ve(aVar3, "http"), new ve(aVar3, "https"), new ve(aVar4, ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS), new ve(aVar4, "204"), new ve(aVar4, "206"), new ve(aVar4, "304"), new ve(aVar4, "400"), new ve(aVar4, cm.f7731b), new ve(aVar4, "500"), new ve("accept-charset", ""), new ve("accept-encoding", "gzip, deflate"), new ve("accept-language", ""), new ve("accept-ranges", ""), new ve("accept", ""), new ve("access-control-allow-origin", ""), new ve(PointCategory.AGE, ""), new ve("allow", ""), new ve("authorization", ""), new ve("cache-control", ""), new ve("content-disposition", ""), new ve("content-encoding", ""), new ve("content-language", ""), new ve("content-length", ""), new ve("content-location", ""), new ve("content-range", ""), new ve(d.f7182f, ""), new ve("cookie", ""), new ve("date", ""), new ve(f.f80400c, ""), new ve("expect", ""), new ve("expires", ""), new ve("from", ""), new ve(u.c.f97430f, ""), new ve("if-match", ""), new ve("if-modified-since", ""), new ve("if-none-match", ""), new ve("if-range", ""), new ve("if-unmodified-since", ""), new ve("last-modified", ""), new ve("link", ""), new ve("location", ""), new ve("max-forwards", ""), new ve("proxy-authenticate", ""), new ve("proxy-authorization", ""), new ve("range", ""), new ve("referer", ""), new ve("refresh", ""), new ve("retry-after", ""), new ve("server", ""), new ve("set-cookie", ""), new ve("strict-transport-security", ""), new ve("transfer-encoding", ""), new ve("user-agent", ""), new ve("vary", ""), new ve("via", ""), new ve("www-authenticate", "")};
        tt = c();
    }

    private static Map<com.byazt.mk.a, Integer> c() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(f15786c.length);
        int i10 = 0;
        while (true) {
            ve[] veVarArr = f15786c;
            if (i10 >= veVarArr.length) {
                return Collections.unmodifiableMap(linkedHashMap);
            }
            if (!linkedHashMap.containsKey(veVarArr[i10].sp)) {
                linkedHashMap.put(veVarArr[i10].sp, Integer.valueOf(i10));
            }
            i10++;
        }
    }

    public static com.byazt.mk.a c(com.byazt.mk.a aVar) throws IOException {
        int iSp = aVar.sp();
        for (int i10 = 0; i10 < iSp; i10++) {
            byte bC = aVar.c(i10);
            if (bC >= 65 && bC <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + aVar.c());
            }
        }
        return aVar;
    }
}
