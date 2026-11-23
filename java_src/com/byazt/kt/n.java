package com.byazt.kt;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 166, 46})
public class n extends RecyclerView.i implements RecyclerView.my.tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public uj f16421a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16422c;
    public final tt gr;
    public boolean gt;
    public boolean gu;
    public boolean my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f16423n;
    public boolean qy;
    public ve rh;
    public boolean rl;
    public final c sp;
    public x tt;
    public int uj;
    public boolean ve;
    public int zm;

    @com.byazt.zqa.c(c = {0, 1, 166, 151})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public x f16424c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f16425n;
        public int tt;
        public boolean uj;
        public int ve;

        public c() {
            c();
        }

        public void c() {
            this.tt = -1;
            this.ve = Integer.MIN_VALUE;
            this.uj = false;
            this.f16425n = false;
        }

        public String toString() {
            return "AnchorInfo{mPosition=" + this.tt + ", mCoordinate=" + this.ve + ", mLayoutFromEnd=" + this.uj + ", mValid=" + this.f16425n + '}';
        }

        public void tt() {
            this.ve = this.uj ? this.f16424c.uj() : this.f16424c.ve();
        }

        public void tt(View view, int i10) {
            if (this.uj) {
                this.ve = this.f16424c.tt(view) + this.f16424c.tt();
            } else {
                this.ve = this.f16424c.c(view);
            }
            this.tt = i10;
        }

        public boolean c(View view, RecyclerView.gt gtVar) {
            RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
            return !daVar.tt() && daVar.uj() >= 0 && daVar.uj() < gtVar.uj();
        }

        public void c(View view, int i10) {
            int iTt = this.f16424c.tt();
            if (iTt >= 0) {
                tt(view, i10);
                return;
            }
            this.tt = i10;
            if (this.uj) {
                int iUj = (this.f16424c.uj() - iTt) - this.f16424c.tt(view);
                this.ve = this.f16424c.uj() - iUj;
                if (iUj > 0) {
                    int iN = this.ve - this.f16424c.n(view);
                    int iVe = this.f16424c.ve();
                    int iMin = iN - (iVe + Math.min(this.f16424c.c(view) - iVe, 0));
                    if (iMin < 0) {
                        this.ve += Math.min(iUj, -iMin);
                        return;
                    }
                    return;
                }
                return;
            }
            int iC = this.f16424c.c(view);
            int iVe2 = iC - this.f16424c.ve();
            this.ve = iC;
            if (iVe2 > 0) {
                int iUj2 = (this.f16424c.uj() - Math.min(0, (this.f16424c.uj() - iTt) - this.f16424c.tt(view))) - (iC + this.f16424c.n(view));
                if (iUj2 < 0) {
                    this.ve -= Math.min(iVe2, -iUj2);
                }
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 934})
    protected static class tt {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16426c;
        public boolean tt;
        public boolean uj;
        public boolean ve;

        public void c() {
            this.f16426c = 0;
            this.tt = false;
            this.ve = false;
            this.uj = false;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, 938})
    public static class uj implements Parcelable {
        public static final Parcelable.Creator<uj> CREATOR = new Parcelable.Creator<uj>() { // from class: com.byazt.kt.n.uj.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public uj createFromParcel(Parcel parcel) {
                return new uj(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public uj[] newArray(int i10) {
                return new uj[i10];
            }
        };

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16427c;
        public int tt;
        public boolean ve;

        public uj() {
        }

        public boolean c() {
            return this.f16427c >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public void tt() {
            this.f16427c = -1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f16427c);
            parcel.writeInt(this.tt);
            parcel.writeInt(this.ve ? 1 : 0);
        }

        public uj(Parcel parcel) {
            this.f16427c = parcel.readInt();
            this.tt = parcel.readInt();
            this.ve = parcel.readInt() == 1;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 166, MediaPlayer.MEDIA_PLAYER_OPTION_TTMP_DNS_PARSE_ENABLE})
    static class ve {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16428a;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f16430da;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16432n;
        public int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public boolean f16433t;
        public int tt;
        public int uj;
        public int ve;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f16429c = true;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f16434x = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f16431i = false;
        public List<RecyclerView.gu> sl = null;

        private View tt() {
            int size = this.sl.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = this.sl.get(i10).f16372c;
                RecyclerView.da daVar = (RecyclerView.da) view.getLayoutParams();
                if (!daVar.tt() && this.uj == daVar.uj()) {
                    c(view);
                    return view;
                }
            }
            return null;
        }

        public boolean c(RecyclerView.gt gtVar) {
            int i10 = this.uj;
            return i10 >= 0 && i10 < gtVar.uj();
        }

        public View c(RecyclerView.m mVar) {
            if (this.sl != null) {
                return tt();
            }
            View viewTt = mVar.tt(this.uj);
            this.uj += this.f16432n;
            return viewTt;
        }

        public void c() {
            c((View) null);
        }

        public View tt(View view) {
            int iUj;
            int size = this.sl.size();
            View view2 = null;
            int i10 = Integer.MAX_VALUE;
            for (int i11 = 0; i11 < size; i11++) {
                View view3 = this.sl.get(i11).f16372c;
                RecyclerView.da daVar = (RecyclerView.da) view3.getLayoutParams();
                if (view3 != view && !daVar.tt() && (iUj = (daVar.uj() - this.uj) * this.f16432n) >= 0 && iUj < i10) {
                    view2 = view3;
                    if (iUj == 0) {
                        break;
                    }
                    i10 = iUj;
                }
            }
            return view2;
        }

        public void c(View view) {
            View viewTt = tt(view);
            if (viewTt == null) {
                this.uj = -1;
            } else {
                this.uj = ((RecyclerView.da) viewTt.getLayoutParams()).uj();
            }
        }
    }

    public n(Context context) {
        this(context, 1, false);
    }

    private void a(int i10, int i11) {
        this.rh.ve = this.tt.uj() - i11;
        ve veVar = this.rh;
        veVar.f16432n = this.ve ? -1 : 1;
        veVar.uj = i10;
        veVar.f16428a = 1;
        veVar.tt = i11;
        veVar.sp = Integer.MIN_VALUE;
    }

    private void cu() {
        if (this.f16422c == 1 || !n()) {
            this.ve = this.gt;
        } else {
            this.ve = !this.gt;
        }
    }

    private int da(RecyclerView.gt gtVar) {
        if (my() == 0) {
            return 0;
        }
        a();
        return da.c(gtVar, this.tt, c(!this.qy, true), tt(!this.qy, true), this, this.qy);
    }

    private int i(RecyclerView.gt gtVar) {
        if (my() == 0) {
            return 0;
        }
        a();
        return da.c(gtVar, this.tt, c(!this.qy, true), tt(!this.qy, true), this, this.qy, this.ve);
    }

    private View nb() {
        return x(this.ve ? 0 : my() - 1);
    }

    private View qp() {
        return x(this.ve ? my() - 1 : 0);
    }

    private int sl(RecyclerView.gt gtVar) {
        if (my() == 0) {
            return 0;
        }
        a();
        return da.tt(gtVar, this.tt, c(!this.qy, true), tt(!this.qy, true), this, this.qy);
    }

    private void sp(int i10, int i11) {
        this.rh.ve = i11 - this.tt.ve();
        ve veVar = this.rh;
        veVar.uj = i10;
        veVar.f16432n = this.ve ? 1 : -1;
        veVar.f16428a = -1;
        veVar.tt = i11;
        veVar.sp = Integer.MIN_VALUE;
    }

    @Override // com.byazt.kt.RecyclerView.i
    public boolean c() {
        return true;
    }

    public boolean n() {
        return nu() == 1;
    }

    @Override // com.byazt.kt.RecyclerView.i
    public boolean t() {
        return this.f16421a == null && this.my == this.rl;
    }

    @Override // com.byazt.kt.RecyclerView.i
    public RecyclerView.da tt() {
        return new RecyclerView.da(-2, -2);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public boolean uj() {
        return this.f16422c == 1;
    }

    @Override // com.byazt.kt.RecyclerView.i
    public boolean ve() {
        return this.f16422c == 0;
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int x(RecyclerView.gt gtVar) {
        return sl(gtVar);
    }

    public n(Context context, int i10, boolean z10) {
        this.f16422c = 1;
        this.gt = false;
        this.ve = false;
        this.rl = false;
        this.qy = true;
        this.uj = -1;
        this.f16423n = Integer.MIN_VALUE;
        this.f16421a = null;
        this.sp = new c();
        this.gr = new tt();
        this.zm = 2;
        c(i10);
        c(z10);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void c(RecyclerView recyclerView, RecyclerView.m mVar) {
        super.c(recyclerView, mVar);
        if (this.gu) {
            ve(mVar);
            mVar.c();
        }
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int n(RecyclerView.gt gtVar) {
        return da(gtVar);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public View tt(int i10) {
        int iMy = my();
        if (iMy == 0) {
            return null;
        }
        int iUj = i10 - uj(x(0));
        if (iUj >= 0 && iUj < iMy) {
            View viewX = x(iUj);
            if (uj(viewX) == i10) {
                return viewX;
            }
        }
        return super.tt(i10);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void uj(int i10) {
        this.uj = i10;
        this.f16423n = Integer.MIN_VALUE;
        uj ujVar = this.f16421a;
        if (ujVar != null) {
            ujVar.tt();
        }
        u();
    }

    @Override // com.byazt.kt.RecyclerView.my.tt
    public PointF ve(int i10) {
        if (my() == 0) {
            return null;
        }
        int i11 = (i10 < uj(x(0))) != this.ve ? -1 : 1;
        return this.f16422c == 0 ? new PointF(i11, 0.0f) : new PointF(0.0f, i11);
    }

    public boolean x() {
        return this.tt.x() == 0 && this.tt.n() == 0;
    }

    private View x(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return c(0, my());
    }

    public int n(int i10) {
        if (i10 == 1) {
            return (this.f16422c != 1 && n()) ? 1 : -1;
        }
        if (i10 == 2) {
            return (this.f16422c != 1 && n()) ? -1 : 1;
        }
        if (i10 == 17) {
            return this.f16422c == 0 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 == 33) {
            return this.f16422c == 1 ? -1 : Integer.MIN_VALUE;
        }
        if (i10 != 66) {
            return (i10 == 130 && this.f16422c == 1) ? 1 : Integer.MIN_VALUE;
        }
        return this.f16422c == 0 ? 1 : Integer.MIN_VALUE;
    }

    public int da() {
        View viewC = c(0, my(), false, true);
        if (viewC == null) {
            return -1;
        }
        return uj(viewC);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public boolean i() {
        return (rl() == 1073741824 || gt() == 1073741824 || !or()) ? false : true;
    }

    public int sl() {
        View viewC = c(my() - 1, -1, false, true);
        if (viewC == null) {
            return -1;
        }
        return uj(viewC);
    }

    private View i(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return c(my() - 1, -1);
    }

    public void c(int i10) {
        if (i10 != 0 && i10 != 1) {
            throw new IllegalArgumentException("invalid orientation:".concat(String.valueOf(i10)));
        }
        c((String) null);
        if (i10 != this.f16422c || this.tt == null) {
            x xVarC = x.c(this, i10);
            this.tt = xVarC;
            this.sp.f16424c = xVarC;
            this.f16422c = i10;
            u();
        }
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int ve(RecyclerView.gt gtVar) {
        return i(gtVar);
    }

    public void a() {
        if (this.rh == null) {
            this.rh = sp();
        }
    }

    public ve sp() {
        return new ve();
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void tt(RecyclerView.gt gtVar) {
        super.tt(gtVar);
        this.f16421a = null;
        this.uj = -1;
        this.f16423n = Integer.MIN_VALUE;
        this.sp.c();
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int uj(RecyclerView.gt gtVar) {
        return i(gtVar);
    }

    public int ve(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar) {
        if (my() == 0 || i10 == 0) {
            return 0;
        }
        this.rh.f16429c = true;
        a();
        int i11 = i10 > 0 ? 1 : -1;
        int iAbs = Math.abs(i10);
        c(i11, iAbs, true, gtVar);
        ve veVar = this.rh;
        int iC = veVar.sp + c(mVar, veVar, gtVar, false);
        if (iC < 0) {
            return 0;
        }
        if (iAbs > iC) {
            i10 = i11 * iC;
        }
        this.tt.c(-i10);
        this.rh.f16430da = i10;
        return i10;
    }

    private View uj(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return c(mVar, gtVar, 0, my(), gtVar.uj());
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int sp(RecyclerView.gt gtVar) {
        return sl(gtVar);
    }

    private View sp(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return this.ve ? i(mVar, gtVar) : x(mVar, gtVar);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int a(RecyclerView.gt gtVar) {
        return da(gtVar);
    }

    private View a(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return this.ve ? x(mVar, gtVar) : i(mVar, gtVar);
    }

    private View n(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return c(mVar, gtVar, my() - 1, -1, gtVar.uj());
    }

    private void tt(RecyclerView.m mVar, RecyclerView.gt gtVar, int i10, int i11) {
        if (!gtVar.tt() || my() == 0 || gtVar.c() || !t()) {
            return;
        }
        List<RecyclerView.gu> listVe = mVar.ve();
        int size = listVe.size();
        int iUj = uj(x(0));
        int iN = 0;
        int iN2 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            RecyclerView.gu guVar = listVe.get(i12);
            if (!guVar.nu()) {
                if (((guVar.uj() < iUj) != this.ve ? (byte) -1 : (byte) 1) == -1) {
                    iN += this.tt.n(guVar.f16372c);
                } else {
                    iN2 += this.tt.n(guVar.f16372c);
                }
            }
        }
        this.rh.sl = listVe;
        if (iN > 0) {
            sp(uj(qp()), i10);
            ve veVar = this.rh;
            veVar.f16434x = iN;
            veVar.ve = 0;
            veVar.c();
            c(mVar, this.rh, gtVar, false);
        }
        if (iN2 > 0) {
            a(uj(nb()), i11);
            ve veVar2 = this.rh;
            veVar2.f16434x = iN2;
            veVar2.ve = 0;
            veVar2.c();
            c(mVar, this.rh, gtVar, false);
        }
        this.rh.sl = null;
    }

    public void c(boolean z10) {
        c((String) null);
        if (z10 != this.gt) {
            this.gt = z10;
            u();
        }
    }

    private View ve(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return this.ve ? n(mVar, gtVar) : uj(mVar, gtVar);
    }

    public int c(RecyclerView.gt gtVar) {
        if (gtVar.ve()) {
            return this.tt.a();
        }
        return 0;
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void c(RecyclerView recyclerView, RecyclerView.gt gtVar, int i10) {
        a aVar = new a(recyclerView.getContext());
        aVar.ve(i10);
        c(aVar);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void c(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int iC;
        int i15;
        View viewTt;
        int iC2;
        int iUj;
        if ((this.f16421a != null || this.uj != -1) && gtVar.uj() == 0) {
            ve(mVar);
            return;
        }
        uj ujVar = this.f16421a;
        if (ujVar != null && ujVar.c()) {
            this.uj = this.f16421a.f16427c;
        }
        a();
        this.rh.f16429c = false;
        cu();
        View viewMd = md();
        c cVar = this.sp;
        if (cVar.f16425n && this.uj == -1 && this.f16421a == null) {
            if (viewMd != null && (this.tt.c(viewMd) >= this.tt.uj() || this.tt.tt(viewMd) <= this.tt.ve())) {
                this.sp.c(viewMd, uj(viewMd));
            }
        } else {
            cVar.c();
            c cVar2 = this.sp;
            cVar2.uj = this.ve ^ this.rl;
            c(mVar, gtVar, cVar2);
            this.sp.f16425n = true;
        }
        int iC3 = c(gtVar);
        if (this.rh.f16430da >= 0) {
            i10 = iC3;
            iC3 = 0;
        } else {
            i10 = 0;
        }
        int iVe = iC3 + this.tt.ve();
        int iSp = i10 + this.tt.sp();
        if (gtVar.c() && (i15 = this.uj) != -1 && this.f16423n != Integer.MIN_VALUE && (viewTt = tt(i15)) != null) {
            if (this.ve) {
                iUj = this.tt.uj() - this.tt.tt(viewTt);
                iC2 = this.f16423n;
            } else {
                iC2 = this.tt.c(viewTt) - this.tt.ve();
                iUj = this.f16423n;
            }
            int i16 = iUj - iC2;
            if (i16 > 0) {
                iVe += i16;
            } else {
                iSp -= i16;
            }
        }
        c(mVar);
        this.rh.f16433t = x();
        this.rh.f16431i = gtVar.c();
        c cVar3 = this.sp;
        if (cVar3.uj) {
            tt(cVar3);
            ve veVar = this.rh;
            veVar.f16434x = iVe;
            c(mVar, veVar, gtVar, false);
            ve veVar2 = this.rh;
            i12 = veVar2.tt;
            int i17 = veVar2.uj;
            int i18 = veVar2.ve;
            if (i18 > 0) {
                iSp += i18;
            }
            c(this.sp);
            ve veVar3 = this.rh;
            veVar3.f16434x = iSp;
            veVar3.uj += veVar3.f16432n;
            c(mVar, veVar3, gtVar, false);
            ve veVar4 = this.rh;
            i11 = veVar4.tt;
            int i19 = veVar4.ve;
            if (i19 > 0) {
                sp(i17, i12);
                ve veVar5 = this.rh;
                veVar5.f16434x = i19;
                c(mVar, veVar5, gtVar, false);
                i12 = this.rh.tt;
            }
        } else {
            c(cVar3);
            ve veVar6 = this.rh;
            veVar6.f16434x = iSp;
            c(mVar, veVar6, gtVar, false);
            ve veVar7 = this.rh;
            i11 = veVar7.tt;
            int i20 = veVar7.uj;
            int i21 = veVar7.ve;
            if (i21 > 0) {
                iVe += i21;
            }
            tt(this.sp);
            ve veVar8 = this.rh;
            veVar8.f16434x = iVe;
            veVar8.uj += veVar8.f16432n;
            c(mVar, veVar8, gtVar, false);
            ve veVar9 = this.rh;
            i12 = veVar9.tt;
            int i22 = veVar9.ve;
            if (i22 > 0) {
                a(i20, i11);
                ve veVar10 = this.rh;
                veVar10.f16434x = i22;
                c(mVar, veVar10, gtVar, false);
                i11 = this.rh.tt;
            }
        }
        if (my() > 0) {
            if (this.ve ^ this.rl) {
                int iC4 = c(i11, mVar, gtVar, true);
                i13 = i12 + iC4;
                i14 = i11 + iC4;
                iC = tt(i13, mVar, gtVar, false);
            } else {
                int iTt = tt(i12, mVar, gtVar, true);
                i13 = i12 + iTt;
                i14 = i11 + iTt;
                iC = c(i14, mVar, gtVar, false);
            }
            i12 = i13 + iC;
            i11 = i14 + iC;
        }
        tt(mVar, gtVar, i12, i11);
        if (!gtVar.c()) {
            this.tt.c();
        } else {
            this.sp.c();
        }
        this.my = this.rl;
    }

    private boolean tt(RecyclerView.m mVar, RecyclerView.gt gtVar, c cVar) {
        if (my() == 0) {
            return false;
        }
        View viewMd = md();
        if (viewMd != null && cVar.c(viewMd, gtVar)) {
            cVar.c(viewMd, uj(viewMd));
            return true;
        }
        if (this.my != this.rl) {
            return false;
        }
        View viewTt = cVar.uj ? tt(mVar, gtVar) : ve(mVar, gtVar);
        if (viewTt == null) {
            return false;
        }
        cVar.tt(viewTt, uj(viewTt));
        if (!gtVar.c() && t()) {
            if (this.tt.c(viewTt) >= this.tt.uj() || this.tt.tt(viewTt) < this.tt.ve()) {
                cVar.ve = cVar.uj ? this.tt.uj() : this.tt.ve();
            }
        }
        return true;
    }

    private int tt(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar, boolean z10) {
        int iVe;
        int iVe2 = i10 - this.tt.ve();
        if (iVe2 <= 0) {
            return 0;
        }
        int i11 = -ve(iVe2, mVar, gtVar);
        int i12 = i10 + i11;
        if (!z10 || (iVe = i12 - this.tt.ve()) <= 0) {
            return i11;
        }
        this.tt.c(-iVe);
        return i11 - iVe;
    }

    private void tt(c cVar) {
        sp(cVar.tt, cVar.ve);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int tt(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar) {
        if (this.f16422c == 0) {
            return 0;
        }
        return ve(i10, mVar, gtVar);
    }

    private void tt(RecyclerView.m mVar, int i10) {
        int iMy = my();
        if (i10 >= 0) {
            int iN = this.tt.n() - i10;
            if (this.ve) {
                for (int i11 = 0; i11 < iMy; i11++) {
                    View viewX = x(i11);
                    if (this.tt.c(viewX) < iN || this.tt.uj(viewX) < iN) {
                        c(mVar, 0, i11);
                        return;
                    }
                }
                return;
            }
            int i12 = iMy - 1;
            for (int i13 = i12; i13 >= 0; i13--) {
                View viewX2 = x(i13);
                if (this.tt.c(viewX2) < iN || this.tt.uj(viewX2) < iN) {
                    c(mVar, i12, i13);
                    return;
                }
            }
        }
    }

    private View tt(boolean z10, boolean z11) {
        int iMy;
        int iMy2;
        if (this.ve) {
            iMy = 0;
            iMy2 = my();
        } else {
            iMy = my() - 1;
            iMy2 = -1;
        }
        return c(iMy, iMy2, z10, z11);
    }

    private View tt(RecyclerView.m mVar, RecyclerView.gt gtVar) {
        return this.ve ? uj(mVar, gtVar) : n(mVar, gtVar);
    }

    private void c(RecyclerView.m mVar, RecyclerView.gt gtVar, c cVar) {
        if (c(gtVar, cVar) || tt(mVar, gtVar, cVar)) {
            return;
        }
        cVar.tt();
        cVar.tt = this.rl ? gtVar.uj() - 1 : 0;
    }

    private boolean c(RecyclerView.gt gtVar, c cVar) {
        int i10;
        if (!gtVar.c() && (i10 = this.uj) != -1) {
            if (i10 >= 0 && i10 < gtVar.uj()) {
                cVar.tt = this.uj;
                uj ujVar = this.f16421a;
                if (ujVar != null && ujVar.c()) {
                    boolean z10 = this.f16421a.ve;
                    cVar.uj = z10;
                    if (z10) {
                        cVar.ve = this.tt.uj() - this.f16421a.tt;
                    } else {
                        cVar.ve = this.tt.ve() + this.f16421a.tt;
                    }
                    return true;
                }
                if (this.f16423n == Integer.MIN_VALUE) {
                    View viewTt = tt(this.uj);
                    if (viewTt != null) {
                        if (this.tt.n(viewTt) > this.tt.a()) {
                            cVar.tt();
                            return true;
                        }
                        if (this.tt.c(viewTt) - this.tt.ve() < 0) {
                            cVar.ve = this.tt.ve();
                            cVar.uj = false;
                            return true;
                        }
                        if (this.tt.uj() - this.tt.tt(viewTt) < 0) {
                            cVar.ve = this.tt.uj();
                            cVar.uj = true;
                            return true;
                        }
                        cVar.ve = cVar.uj ? this.tt.tt(viewTt) + this.tt.tt() : this.tt.c(viewTt);
                    } else {
                        if (my() > 0) {
                            cVar.uj = (this.uj < uj(x(0))) == this.ve;
                        }
                        cVar.tt();
                    }
                    return true;
                }
                boolean z11 = this.ve;
                cVar.uj = z11;
                if (z11) {
                    cVar.ve = this.tt.uj() - this.f16423n;
                } else {
                    cVar.ve = this.tt.ve() + this.f16423n;
                }
                return true;
            }
            this.uj = -1;
            this.f16423n = Integer.MIN_VALUE;
        }
        return false;
    }

    private int c(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar, boolean z10) {
        int iUj;
        int iUj2 = this.tt.uj() - i10;
        if (iUj2 <= 0) {
            return 0;
        }
        int i11 = -ve(-iUj2, mVar, gtVar);
        int i12 = i10 + i11;
        if (!z10 || (iUj = this.tt.uj() - i12) <= 0) {
            return i11;
        }
        this.tt.c(iUj);
        return iUj + i11;
    }

    private void c(c cVar) {
        a(cVar.tt, cVar.ve);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public int c(int i10, RecyclerView.m mVar, RecyclerView.gt gtVar) {
        if (this.f16422c == 1) {
            return 0;
        }
        return ve(i10, mVar, gtVar);
    }

    private void c(int i10, int i11, boolean z10, RecyclerView.gt gtVar) {
        int iVe;
        this.rh.f16433t = x();
        this.rh.f16434x = c(gtVar);
        ve veVar = this.rh;
        veVar.f16428a = i10;
        if (i10 == 1) {
            veVar.f16434x += this.tt.sp();
            View viewNb = nb();
            ve veVar2 = this.rh;
            veVar2.f16432n = this.ve ? -1 : 1;
            int iUj = uj(viewNb);
            ve veVar3 = this.rh;
            veVar2.uj = iUj + veVar3.f16432n;
            veVar3.tt = this.tt.tt(viewNb);
            iVe = this.tt.tt(viewNb) - this.tt.uj();
        } else {
            View viewQp = qp();
            this.rh.f16434x += this.tt.ve();
            ve veVar4 = this.rh;
            veVar4.f16432n = this.ve ? 1 : -1;
            int iUj2 = uj(viewQp);
            ve veVar5 = this.rh;
            veVar4.uj = iUj2 + veVar5.f16432n;
            veVar5.tt = this.tt.c(viewQp);
            iVe = (-this.tt.c(viewQp)) + this.tt.ve();
        }
        ve veVar6 = this.rh;
        veVar6.ve = i11;
        if (z10) {
            veVar6.ve = i11 - iVe;
        }
        veVar6.sp = iVe;
    }

    public void c(RecyclerView.gt gtVar, ve veVar, RecyclerView.i.c cVar) {
        int i10 = veVar.uj;
        if (i10 < 0 || i10 >= gtVar.uj()) {
            return;
        }
        cVar.tt(i10, Math.max(0, veVar.sp));
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void c(int i10, RecyclerView.i.c cVar) {
        boolean z10;
        int i11;
        uj ujVar = this.f16421a;
        if (ujVar != null && ujVar.c()) {
            uj ujVar2 = this.f16421a;
            z10 = ujVar2.ve;
            i11 = ujVar2.f16427c;
        } else {
            cu();
            z10 = this.ve;
            i11 = this.uj;
            if (i11 == -1) {
                i11 = z10 ? i10 - 1 : 0;
            }
        }
        int i12 = z10 ? -1 : 1;
        for (int i13 = 0; i13 < this.zm && i11 >= 0 && i11 < i10; i13++) {
            cVar.tt(i11, 0);
            i11 += i12;
        }
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void c(int i10, int i11, RecyclerView.gt gtVar, RecyclerView.i.c cVar) {
        if (this.f16422c != 0) {
            i10 = i11;
        }
        if (my() == 0 || i10 == 0) {
            return;
        }
        a();
        c(i10 > 0 ? 1 : -1, Math.abs(i10), true, gtVar);
        c(gtVar, this.rh, cVar);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public void c(String str) {
        if (this.f16421a == null) {
            super.c(str);
        }
    }

    private void c(RecyclerView.m mVar, int i10, int i11) {
        if (i10 != i11) {
            if (i11 <= i10) {
                while (i10 > i11) {
                    c(i10, mVar);
                    i10--;
                }
            } else {
                for (int i12 = i11 - 1; i12 >= i10; i12--) {
                    c(i12, mVar);
                }
            }
        }
    }

    private void c(RecyclerView.m mVar, int i10) {
        if (i10 >= 0) {
            int iMy = my();
            if (!this.ve) {
                for (int i11 = 0; i11 < iMy; i11++) {
                    View viewX = x(i11);
                    if (this.tt.tt(viewX) > i10 || this.tt.ve(viewX) > i10) {
                        c(mVar, 0, i11);
                        return;
                    }
                }
                return;
            }
            int i12 = iMy - 1;
            for (int i13 = i12; i13 >= 0; i13--) {
                View viewX2 = x(i13);
                if (this.tt.tt(viewX2) > i10 || this.tt.ve(viewX2) > i10) {
                    c(mVar, i12, i13);
                    return;
                }
            }
        }
    }

    private void c(RecyclerView.m mVar, ve veVar) {
        if (!veVar.f16429c || veVar.f16433t) {
            return;
        }
        if (veVar.f16428a == -1) {
            tt(mVar, veVar.sp);
        } else {
            c(mVar, veVar.sp);
        }
    }

    public int c(RecyclerView.m mVar, ve veVar, RecyclerView.gt gtVar, boolean z10) {
        int i10 = veVar.ve;
        int i11 = veVar.sp;
        if (i11 != Integer.MIN_VALUE) {
            if (i10 < 0) {
                veVar.sp = i11 + i10;
            }
            c(mVar, veVar);
        }
        int i12 = veVar.ve + veVar.f16434x;
        tt ttVar = this.gr;
        while (true) {
            if ((!veVar.f16433t && i12 <= 0) || !veVar.c(gtVar)) {
                break;
            }
            ttVar.c();
            c(mVar, gtVar, veVar, ttVar);
            if (!ttVar.tt) {
                veVar.tt += ttVar.f16426c * veVar.f16428a;
                if (!ttVar.ve || this.rh.sl != null || !gtVar.c()) {
                    int i13 = veVar.ve;
                    int i14 = ttVar.f16426c;
                    veVar.ve = i13 - i14;
                    i12 -= i14;
                }
                int i15 = veVar.sp;
                if (i15 != Integer.MIN_VALUE) {
                    int i16 = i15 + ttVar.f16426c;
                    veVar.sp = i16;
                    int i17 = veVar.ve;
                    if (i17 < 0) {
                        veVar.sp = i16 + i17;
                    }
                    c(mVar, veVar);
                }
                if (z10 && ttVar.uj) {
                    break;
                }
            } else {
                break;
            }
        }
        return i10 - veVar.ve;
    }

    public void c(RecyclerView.m mVar, RecyclerView.gt gtVar, ve veVar, tt ttVar) {
        int i10;
        int i11;
        int i12;
        int iGr;
        int iA;
        View viewC = veVar.c(mVar);
        if (viewC == null) {
            ttVar.tt = true;
            return;
        }
        RecyclerView.da daVar = (RecyclerView.da) viewC.getLayoutParams();
        if (veVar.sl == null) {
            if (this.ve == (veVar.f16428a == -1)) {
                tt(viewC);
            } else {
                tt(viewC, 0);
            }
        } else {
            if (this.ve == (veVar.f16428a == -1)) {
                c(viewC);
            } else {
                c(viewC, 0);
            }
        }
        c(viewC, 0, 0);
        ttVar.f16426c = this.tt.n(viewC);
        if (this.f16422c == 1) {
            if (n()) {
                iA = qy() - yv();
                iGr = iA - this.tt.a(viewC);
            } else {
                iGr = gr();
                iA = this.tt.a(viewC) + iGr;
            }
            if (veVar.f16428a == -1) {
                int i13 = veVar.tt;
                i12 = i13;
                i11 = iA;
                i10 = i13 - ttVar.f16426c;
            } else {
                int i14 = veVar.tt;
                i10 = i14;
                i11 = iA;
                i12 = ttVar.f16426c + i14;
            }
        } else {
            int iZm = zm();
            int iA2 = this.tt.a(viewC) + iZm;
            if (veVar.f16428a == -1) {
                int i15 = veVar.tt;
                i11 = i15;
                i10 = iZm;
                i12 = iA2;
                iGr = i15 - ttVar.f16426c;
            } else {
                int i16 = veVar.tt;
                i10 = iZm;
                i11 = ttVar.f16426c + i16;
                i12 = iA2;
                iGr = i16;
            }
        }
        c(viewC, iGr, i10, i11, i12);
        if (daVar.tt() || daVar.ve()) {
            ttVar.ve = true;
        }
        ttVar.uj = viewC.hasFocusable();
    }

    private View c(boolean z10, boolean z11) {
        int iMy;
        int iMy2;
        if (this.ve) {
            iMy = my() - 1;
            iMy2 = -1;
        } else {
            iMy = 0;
            iMy2 = my();
        }
        return c(iMy, iMy2, z10, z11);
    }

    public View c(RecyclerView.m mVar, RecyclerView.gt gtVar, int i10, int i11, int i12) {
        a();
        int iVe = this.tt.ve();
        int iUj = this.tt.uj();
        int i13 = i11 > i10 ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i10 != i11) {
            View viewX = x(i10);
            int iUj2 = uj(viewX);
            if (iUj2 >= 0 && iUj2 < i12) {
                if (((RecyclerView.da) viewX.getLayoutParams()).tt()) {
                    if (view2 == null) {
                        view2 = viewX;
                    }
                } else {
                    if (this.tt.c(viewX) < iUj && this.tt.tt(viewX) >= iVe) {
                        return viewX;
                    }
                    if (view == null) {
                        view = viewX;
                    }
                }
            }
            i10 += i13;
        }
        return view != null ? view : view2;
    }

    public View c(int i10, int i11, boolean z10, boolean z11) {
        a();
        return (this.f16422c == 0 ? this.f16383da : this.sl).c(i10, i11, z10 ? 24579 : 320, z11 ? 320 : 0);
    }

    public View c(int i10, int i11) {
        byte b10;
        int i12;
        int i13;
        a();
        if (i11 > i10) {
            b10 = 1;
        } else {
            b10 = i11 < i10 ? (byte) -1 : (byte) 0;
        }
        if (b10 == 0) {
            return x(i10);
        }
        if (this.tt.c(x(i10)) < this.tt.ve()) {
            i12 = 16644;
            i13 = 16388;
        } else {
            i12 = 4161;
            i13 = 4097;
        }
        return (this.f16422c == 0 ? this.f16383da : this.sl).c(i10, i11, i12, i13);
    }

    @Override // com.byazt.kt.RecyclerView.i
    public View c(View view, int i10, RecyclerView.m mVar, RecyclerView.gt gtVar) {
        int iN;
        View viewA;
        View viewNb;
        cu();
        if (my() == 0 || (iN = n(i10)) == Integer.MIN_VALUE) {
            return null;
        }
        a();
        a();
        c(iN, (int) (this.tt.a() * 0.33333334f), false, gtVar);
        ve veVar = this.rh;
        veVar.sp = Integer.MIN_VALUE;
        veVar.f16429c = false;
        c(mVar, veVar, gtVar, true);
        if (iN == -1) {
            viewA = sp(mVar, gtVar);
        } else {
            viewA = a(mVar, gtVar);
        }
        if (iN == -1) {
            viewNb = qp();
        } else {
            viewNb = nb();
        }
        if (!viewNb.hasFocusable()) {
            return viewA;
        }
        if (viewA == null) {
            return null;
        }
        return viewNb;
    }
}
