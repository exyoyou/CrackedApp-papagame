package com.byazt.kt;

import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 67})
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final tt f16442c;
    public c tt = new c();

    @com.byazt.zqa.c(c = {0, 1, 166, 57})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16443c = 0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16444n;
        public int tt;
        public int uj;
        public int ve;

        public int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }

        public boolean tt() {
            int i10 = this.f16443c;
            if ((i10 & 7) != 0 && (i10 & (c(this.uj, this.tt) << 0)) == 0) {
                return false;
            }
            int i11 = this.f16443c;
            if ((i11 & 112) != 0 && (i11 & (c(this.uj, this.ve) << 4)) == 0) {
                return false;
            }
            int i12 = this.f16443c;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f16444n, this.tt) << 8)) == 0) {
                return false;
            }
            int i13 = this.f16443c;
            return (i13 & 28672) == 0 || (i13 & (c(this.f16444n, this.ve) << 12)) != 0;
        }

        public void c(int i10, int i11, int i12, int i13) {
            this.tt = i10;
            this.ve = i11;
            this.uj = i12;
            this.f16444n = i13;
        }

        public void c(int i10) {
            this.f16443c = i10 | this.f16443c;
        }

        public void c() {
            this.f16443c = 0;
        }
    }

    interface tt {
        int c();

        int c(View view);

        View c(int i10);

        int tt();

        int tt(View view);
    }

    public u(tt ttVar) {
        this.f16442c = ttVar;
    }

    public View c(int i10, int i11, int i12, int i13) {
        int iC = this.f16442c.c();
        int iTt = this.f16442c.tt();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View viewC = this.f16442c.c(i10);
            this.tt.c(iC, iTt, this.f16442c.c(viewC), this.f16442c.tt(viewC));
            if (i12 != 0) {
                this.tt.c();
                this.tt.c(i12);
                if (this.tt.tt()) {
                    return viewC;
                }
            }
            if (i13 != 0) {
                this.tt.c();
                this.tt.c(i13);
                if (this.tt.tt()) {
                    view = viewC;
                }
            }
            i10 += i14;
        }
        return view;
    }
}
