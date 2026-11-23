package com.byazt.qa;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.byazt.cd.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 598, 15})
public class uj {
    public static final /* synthetic */ boolean ve = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long[] f18916a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f18917c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean[] f18918n;
    public long[] tt;
    public final com.byazt.qa.c uj;

    @com.byazt.zqa.c(c = {0, 1, 598, 123})
    static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<ve> f18919c;
        public int tt;

        public void c() {
            this.f18919c = null;
            this.tt = 0;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 598, 153})
    private static class tt implements Comparable<tt> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18920c;
        public int tt;

        private tt() {
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int compareTo(tt ttVar) {
            int i10 = this.tt;
            int i11 = ttVar.tt;
            return i10 != i11 ? i10 - i11 : this.f18920c - ttVar.f18920c;
        }

        public String toString() {
            return "Order{order=" + this.tt + ", index=" + this.f18920c + '}';
        }
    }

    public uj(com.byazt.qa.c cVar) {
        this.uj = cVar;
    }

    private int a(com.byazt.qa.tt ttVar, boolean z10) {
        return z10 ? ttVar.m() : ttVar.z();
    }

    private int n(com.byazt.qa.tt ttVar, boolean z10) {
        return z10 ? ttVar.yp() : ttVar.u();
    }

    private int uj(boolean z10) {
        return z10 ? this.uj.getPaddingBottom() : this.uj.getPaddingEnd();
    }

    private int ve(boolean z10) {
        return z10 ? this.uj.getPaddingTop() : this.uj.getPaddingStart();
    }

    public int c(long j10) {
        return (int) j10;
    }

    public int tt(long j10) {
        return (int) (j10 >> 32);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int[] c(View view, int i10, ViewGroup.LayoutParams layoutParams, SparseIntArray sparseIntArray) {
        int flexItemCount = this.uj.getFlexItemCount();
        List<tt> listTt = tt(flexItemCount);
        tt ttVar = new tt();
        if (view == null || !(layoutParams instanceof com.byazt.qa.tt)) {
            ttVar.tt = 1;
        } else {
            ttVar.tt = ((com.byazt.qa.tt) layoutParams).ve();
        }
        if (i10 == -1 || i10 == flexItemCount || i10 >= this.uj.getFlexItemCount()) {
            ttVar.f18920c = flexItemCount;
        } else {
            ttVar.f18920c = i10;
            while (i10 < flexItemCount) {
                listTt.get(i10).f18920c++;
                i10++;
            }
        }
        listTt.add(ttVar);
        return c(flexItemCount + 1, listTt, sparseIntArray);
    }

    public long tt(int i10, int i11) {
        return (((long) i10) & 4294967295L) | (((long) i11) << 32);
    }

    private List<tt> tt(int i10) {
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            com.byazt.qa.tt ttVar = (com.byazt.qa.tt) this.uj.c(i11).getLayoutParams();
            tt ttVar2 = new tt();
            ttVar2.tt = ttVar.ve();
            ttVar2.f18920c = i11;
            arrayList.add(ttVar2);
        }
        return arrayList;
    }

    private int uj(com.byazt.qa.tt ttVar, boolean z10) {
        if (z10) {
            return ttVar.z();
        }
        return ttVar.m();
    }

    private int ve(com.byazt.qa.tt ttVar, boolean z10) {
        if (z10) {
            return ttVar.u();
        }
        return ttVar.yp();
    }

    private void ve(int i10) {
        boolean[] zArr = this.f18918n;
        if (zArr == null) {
            this.f18918n = new boolean[Math.max(i10, 10)];
        } else if (zArr.length < i10) {
            this.f18918n = new boolean[Math.max(zArr.length * 2, i10)];
        } else {
            Arrays.fill(zArr, false);
        }
    }

    public boolean tt(SparseIntArray sparseIntArray) {
        int flexItemCount = this.uj.getFlexItemCount();
        if (sparseIntArray.size() != flexItemCount) {
            return true;
        }
        for (int i10 = 0; i10 < flexItemCount; i10++) {
            View viewC = this.uj.c(i10);
            if (viewC != null && ((com.byazt.qa.tt) viewC.getLayoutParams()).ve() != sparseIntArray.get(i10)) {
                return true;
            }
        }
        return false;
    }

    public void tt(c cVar, int i10, int i11) {
        c(cVar, i11, i10, Integer.MAX_VALUE, 0, -1, (List<ve>) null);
    }

    private int tt(boolean z10) {
        if (z10) {
            return this.uj.getPaddingEnd();
        }
        return this.uj.getPaddingBottom();
    }

    public int[] c(SparseIntArray sparseIntArray) {
        int flexItemCount = this.uj.getFlexItemCount();
        return c(flexItemCount, tt(flexItemCount), sparseIntArray);
    }

    private int tt(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredHeight();
        }
        return view.getMeasuredWidth();
    }

    private int[] c(int i10, List<tt> list, SparseIntArray sparseIntArray) {
        Collections.sort(list);
        sparseIntArray.clear();
        int[] iArr = new int[i10];
        int i11 = 0;
        for (tt ttVar : list) {
            int i12 = ttVar.f18920c;
            iArr[i11] = i12;
            sparseIntArray.append(i12, ttVar.tt);
            i11++;
        }
        return iArr;
    }

    private int tt(com.byazt.qa.tt ttVar, boolean z10) {
        if (z10) {
            return ttVar.tt();
        }
        return ttVar.c();
    }

    private void tt(int i10, int i11, ve veVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int iMax;
        int i16 = veVar.f18926n;
        float f10 = veVar.sl;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 > i16) {
            return;
        }
        float f12 = (i16 - i12) / f10;
        veVar.f18926n = i13 + veVar.f18921a;
        if (!z10) {
            veVar.sp = Integer.MIN_VALUE;
        }
        int i17 = 0;
        boolean z11 = false;
        int i18 = 0;
        float f13 = 0.0f;
        while (i17 < veVar.f18929x) {
            int i19 = veVar.f18930z + i17;
            View viewTt = this.uj.tt(i19);
            if (viewTt == null || viewTt.getVisibility() == 8) {
                i14 = i16;
                i15 = i17;
            } else {
                com.byazt.qa.tt ttVar = (com.byazt.qa.tt) viewTt.getLayoutParams();
                int flexDirection = this.uj.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = viewTt.getMeasuredHeight();
                    long[] jArr = this.f18916a;
                    if (jArr != null) {
                        measuredHeight = tt(jArr[i19]);
                    }
                    int measuredWidth = viewTt.getMeasuredWidth();
                    long[] jArr2 = this.f18916a;
                    if (jArr2 != null) {
                        measuredWidth = c(jArr2[i19]);
                    }
                    if (this.f18918n[i19] || ttVar.n() <= f11) {
                        i14 = i16;
                        i15 = i17;
                    } else {
                        float fN = measuredHeight - (ttVar.n() * f12);
                        if (i17 == veVar.f18929x - 1) {
                            fN += f13;
                            f13 = 0.0f;
                        }
                        int iRound = Math.round(fN);
                        if (iRound < ttVar.x()) {
                            iRound = ttVar.x();
                            this.f18918n[i19] = true;
                            veVar.sl -= ttVar.n();
                            i14 = i16;
                            i15 = i17;
                            z11 = true;
                        } else {
                            f13 += fN - iRound;
                            i14 = i16;
                            i15 = i17;
                            double d10 = f13;
                            if (d10 > 1.0d) {
                                iRound++;
                                f13 -= 1.0f;
                            } else if (d10 < -1.0d) {
                                iRound--;
                                f13 += 1.0f;
                            }
                        }
                        int iC = c(i10, ttVar, veVar.f18928u);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewTt.measure(iC, iMakeMeasureSpec);
                        measuredWidth = viewTt.getMeasuredWidth();
                        int measuredHeight2 = viewTt.getMeasuredHeight();
                        c(i19, iC, iMakeMeasureSpec, viewTt);
                        measuredHeight = measuredHeight2;
                    }
                    iMax = Math.max(i18, measuredWidth + ttVar.u() + ttVar.z() + this.uj.c(viewTt));
                    veVar.f18926n += measuredHeight + ttVar.yp() + ttVar.m();
                } else {
                    i14 = i16;
                    int i20 = i17;
                    int measuredWidth2 = viewTt.getMeasuredWidth();
                    long[] jArr3 = this.f18916a;
                    if (jArr3 != null) {
                        measuredWidth2 = c(jArr3[i19]);
                    }
                    int measuredHeight3 = viewTt.getMeasuredHeight();
                    long[] jArr4 = this.f18916a;
                    if (jArr4 != null) {
                        measuredHeight3 = tt(jArr4[i19]);
                    }
                    if (this.f18918n[i19] || ttVar.n() <= 0.0f) {
                        i15 = i20;
                    } else {
                        float fN2 = measuredWidth2 - (ttVar.n() * f12);
                        if (i15 == veVar.f18929x - 1) {
                            i15 = i20;
                            fN2 += f13;
                            f13 = 0.0f;
                        }
                        i15 = i20;
                        int iRound2 = Math.round(fN2);
                        if (iRound2 < ttVar.sp()) {
                            iRound2 = ttVar.sp();
                            this.f18918n[i19] = true;
                            veVar.sl -= ttVar.n();
                            z11 = true;
                        } else {
                            f13 += fN2 - iRound2;
                            double d11 = f13;
                            if (d11 > 1.0d) {
                                iRound2++;
                                f13 -= 1.0f;
                            } else if (d11 < -1.0d) {
                                iRound2--;
                                f13 += 1.0f;
                            }
                        }
                        int iTt = tt(i11, ttVar, veVar.f18928u);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewTt.measure(iMakeMeasureSpec2, iTt);
                        int measuredWidth3 = viewTt.getMeasuredWidth();
                        int measuredHeight4 = viewTt.getMeasuredHeight();
                        c(i19, iMakeMeasureSpec2, iTt, viewTt);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int iMax2 = Math.max(i18, measuredHeight3 + ttVar.yp() + ttVar.m() + this.uj.c(viewTt));
                    veVar.f18926n += measuredWidth2 + ttVar.u() + ttVar.z();
                    iMax = iMax2;
                }
                veVar.sp = Math.max(veVar.sp, iMax);
                i18 = iMax;
            }
            i17 = i15 + 1;
            i16 = i14;
            f11 = 0.0f;
        }
        int i21 = i16;
        if (!z11 || i21 == veVar.f18926n) {
            return;
        }
        tt(i10, i11, veVar, i12, i13, true);
    }

    public void c(c cVar, int i10, int i11) {
        c(cVar, i10, i11, Integer.MAX_VALUE, 0, -1, (List<ve>) null);
    }

    public void c(c cVar, int i10, int i11, int i12, int i13, int i14, List<ve> list) {
        int i15;
        int i16;
        List<ve> list2;
        int i17;
        View view;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24 = i11;
        int i25 = i14;
        boolean zC = this.uj.c();
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        List<ve> arrayList = list == null ? new ArrayList() : list;
        cVar.f18919c = arrayList;
        boolean z10 = i25 == -1;
        int iC = c(zC);
        int iTt = tt(zC);
        int iVe = ve(zC);
        int iUj = uj(zC);
        ve veVar = new ve();
        int i26 = i13;
        veVar.f18930z = i26;
        int i27 = iTt + iC;
        veVar.f18926n = i27;
        int flexItemCount = this.uj.getFlexItemCount();
        boolean z11 = z10;
        int i28 = 0;
        int iCombineMeasuredStates = 0;
        int i29 = 0;
        int i30 = Integer.MIN_VALUE;
        while (i26 < flexItemCount) {
            View viewTt = this.uj.tt(i26);
            if (viewTt == null) {
                if (c(i26, flexItemCount, veVar)) {
                    c(arrayList, veVar, i26, i28);
                }
            } else {
                if (viewTt.getVisibility() == 8) {
                    veVar.f18924i++;
                    veVar.f18929x++;
                    if (c(i26, flexItemCount, veVar)) {
                        c(arrayList, veVar, i26, i28);
                    }
                } else {
                    if (viewTt instanceof CompoundButton) {
                        c((CompoundButton) viewTt);
                    }
                    com.byazt.qa.tt ttVar = (com.byazt.qa.tt) viewTt.getLayoutParams();
                    int i31 = flexItemCount;
                    if (ttVar.a() == 4) {
                        veVar.yp.add(Integer.valueOf(i26));
                    }
                    int iC2 = c(ttVar, zC);
                    if (ttVar.t() != -1.0f && mode == 1073741824) {
                        iC2 = Math.round(size * ttVar.t());
                    }
                    if (zC) {
                        int iC3 = this.uj.c(i10, i27 + ve(ttVar, true) + uj(ttVar, true), iC2);
                        int iTt2 = this.uj.tt(i24, iVe + iUj + n(ttVar, true) + a(ttVar, true) + i28, tt(ttVar, true));
                        viewTt.measure(iC3, iTt2);
                        c(i26, iC3, iTt2, viewTt);
                        i16 = iC3;
                    } else {
                        int iC4 = this.uj.c(i24, iVe + iUj + n(ttVar, false) + a(ttVar, false) + i28, tt(ttVar, false));
                        int iTt3 = this.uj.tt(i10, ve(ttVar, false) + i27 + uj(ttVar, false), iC2);
                        viewTt.measure(iC4, iTt3);
                        c(i26, iC4, iTt3, viewTt);
                        i16 = iTt3;
                    }
                    c(viewTt, i26);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewTt.getMeasuredState());
                    int i32 = veVar.f18926n;
                    int i33 = i28;
                    int i34 = i27;
                    ve veVar2 = veVar;
                    int i35 = size;
                    int i36 = i26;
                    list2 = arrayList;
                    int i37 = i16;
                    if (c(viewTt, mode, i35, i32, uj(ttVar, zC) + c(viewTt, zC) + ve(ttVar, zC), ttVar, i36, i29, arrayList.size())) {
                        if (veVar2.tt() > 0) {
                            c(list2, veVar2, i36 > 0 ? i36 - 1 : 0, i33);
                            i28 = veVar2.sp + i33;
                        } else {
                            i28 = i33;
                        }
                        if (zC) {
                            if (ttVar.tt() == -1) {
                                com.byazt.qa.c cVar2 = this.uj;
                                i17 = i11;
                                i26 = i36;
                                view = viewTt;
                                view.measure(i37, cVar2.tt(i17, cVar2.getPaddingTop() + this.uj.getPaddingBottom() + ttVar.yp() + ttVar.m() + i28, ttVar.tt()));
                                c(view, i26);
                            } else {
                                i17 = i11;
                                view = viewTt;
                                i26 = i36;
                            }
                        } else {
                            i17 = i11;
                            view = viewTt;
                            i26 = i36;
                            if (ttVar.c() == -1) {
                                com.byazt.qa.c cVar3 = this.uj;
                                view.measure(cVar3.c(i17, cVar3.getPaddingLeft() + this.uj.getPaddingRight() + ttVar.u() + ttVar.z() + i28, ttVar.c()), i37);
                                c(view, i26);
                            }
                        }
                        veVar = new ve();
                        i19 = 1;
                        veVar.f18929x = 1;
                        i18 = i34;
                        veVar.f18926n = i18;
                        veVar.f18930z = i26;
                        i20 = 0;
                        i21 = Integer.MIN_VALUE;
                    } else {
                        i17 = i11;
                        view = viewTt;
                        i26 = i36;
                        veVar = veVar2;
                        i18 = i34;
                        i19 = 1;
                        veVar.f18929x++;
                        i20 = i29 + 1;
                        i28 = i33;
                        i21 = i30;
                    }
                    veVar.nu |= ttVar.uj() != 0.0f;
                    veVar.rh |= ttVar.n() != 0.0f;
                    int[] iArr = this.f18917c;
                    if (iArr != null) {
                        iArr[i26] = list2.size();
                    }
                    veVar.f18926n += c(view, zC) + ve(ttVar, zC) + uj(ttVar, zC);
                    veVar.f18923da += ttVar.uj();
                    veVar.sl += ttVar.n();
                    this.uj.c(view, i26, i20, veVar);
                    int iMax = Math.max(i21, tt(view, zC) + n(ttVar, zC) + a(ttVar, zC) + this.uj.c(view));
                    veVar.sp = Math.max(veVar.sp, iMax);
                    if (zC) {
                        if (this.uj.getFlexWrap() != 2) {
                            veVar.f18927t = Math.max(veVar.f18927t, view.getBaseline() + ttVar.yp());
                        } else {
                            veVar.f18927t = Math.max(veVar.f18927t, (view.getMeasuredHeight() - view.getBaseline()) + ttVar.m());
                        }
                    }
                    i22 = i31;
                    if (c(i26, i22, veVar)) {
                        c(list2, veVar, i26, i28);
                        i28 += veVar.sp;
                    }
                    i23 = i14;
                    if (i23 != -1 && list2.size() > 0 && list2.get(list2.size() - i19).f18925m >= i23 && i26 >= i23 && !z11) {
                        i28 = -veVar.c();
                        z11 = true;
                    }
                    if (i28 > i12 && z11) {
                        i15 = iCombineMeasuredStates;
                        cVar.tt = i15;
                    } else {
                        i29 = i20;
                        i30 = iMax;
                    }
                }
                i26++;
                flexItemCount = i22;
                i24 = i17;
                i27 = i18;
                arrayList = list2;
                size = size;
                i25 = i23;
                mode = mode;
            }
            size = size;
            mode = mode;
            i17 = i24;
            i23 = i25;
            list2 = arrayList;
            i18 = i27;
            i22 = flexItemCount;
            i26++;
            flexItemCount = i22;
            i24 = i17;
            i27 = i18;
            arrayList = list2;
            size = size;
            i25 = i23;
            mode = mode;
        }
        i15 = iCombineMeasuredStates;
        cVar.tt = i15;
    }

    private int tt(int i10, com.byazt.qa.tt ttVar, int i11) {
        com.byazt.qa.c cVar = this.uj;
        int iTt = cVar.tt(i10, cVar.getPaddingTop() + this.uj.getPaddingBottom() + ttVar.yp() + ttVar.m() + i11, ttVar.tt());
        int size = View.MeasureSpec.getSize(iTt);
        if (size > ttVar.da()) {
            return View.MeasureSpec.makeMeasureSpec(ttVar.da(), View.MeasureSpec.getMode(iTt));
        }
        return size < ttVar.x() ? View.MeasureSpec.makeMeasureSpec(ttVar.x(), View.MeasureSpec.getMode(iTt)) : iTt;
    }

    public void tt(int i10, int i11, int i12) {
        int mode;
        int size;
        int flexDirection = this.uj.getFlexDirection();
        if (flexDirection != 0 && flexDirection != 1) {
            if (flexDirection != 2 && flexDirection != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            mode = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
        } else {
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            mode = mode2;
            size = size2;
        }
        List<ve> flexLinesInternal = this.uj.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = this.uj.getSumOfCrossSize() + i12;
            int i13 = 0;
            if (flexLinesInternal.size() == 1) {
                flexLinesInternal.get(0).sp = size - i12;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = this.uj.getAlignContent();
                if (alignContent == 1) {
                    int i14 = size - sumOfCrossSize;
                    ve veVar = new ve();
                    veVar.sp = i14;
                    flexLinesInternal.add(0, veVar);
                    return;
                }
                if (alignContent == 2) {
                    this.uj.setFlexLines(c(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize < size) {
                        float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                        ArrayList arrayList = new ArrayList();
                        int size4 = flexLinesInternal.size();
                        float f10 = 0.0f;
                        while (i13 < size4) {
                            arrayList.add(flexLinesInternal.get(i13));
                            if (i13 != flexLinesInternal.size() - 1) {
                                ve veVar2 = new ve();
                                if (i13 == flexLinesInternal.size() - 2) {
                                    veVar2.sp = Math.round(f10 + size3);
                                    f10 = 0.0f;
                                } else {
                                    veVar2.sp = Math.round(size3);
                                }
                                int i15 = veVar2.sp;
                                f10 += size3 - i15;
                                if (f10 > 1.0f) {
                                    veVar2.sp = i15 + 1;
                                    f10 -= 1.0f;
                                } else if (f10 < -1.0f) {
                                    veVar2.sp = i15 - 1;
                                    f10 += 1.0f;
                                }
                                arrayList.add(veVar2);
                            }
                            i13++;
                        }
                        this.uj.setFlexLines(arrayList);
                        return;
                    }
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        this.uj.setFlexLines(c(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    ve veVar3 = new ve();
                    veVar3.sp = size5;
                    for (ve veVar4 : flexLinesInternal) {
                        arrayList2.add(veVar3);
                        arrayList2.add(veVar4);
                        arrayList2.add(veVar3);
                    }
                    this.uj.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f11 = 0.0f;
                    while (i13 < size7) {
                        ve veVar5 = flexLinesInternal.get(i13);
                        float f12 = veVar5.sp + size6;
                        if (i13 == flexLinesInternal.size() - 1) {
                            f12 += f11;
                            f11 = 0.0f;
                        }
                        int iRound = Math.round(f12);
                        f11 += f12 - iRound;
                        if (f11 > 1.0f) {
                            iRound++;
                            f11 -= 1.0f;
                        } else if (f11 < -1.0f) {
                            iRound--;
                            f11 += 1.0f;
                        }
                        veVar5.sp = iRound;
                        i13++;
                    }
                }
            }
        }
    }

    private void c(CompoundButton compoundButton) {
        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) compoundButton.getLayoutParams();
        int iSp = ttVar.sp();
        int iX = ttVar.x();
        Drawable drawableC = com.byazt.cd.n.c(compoundButton);
        int minimumWidth = drawableC == null ? 0 : drawableC.getMinimumWidth();
        int minimumHeight = drawableC != null ? drawableC.getMinimumHeight() : 0;
        if (iSp == -1) {
            iSp = minimumWidth;
        }
        ttVar.c(iSp);
        if (iX == -1) {
            iX = minimumHeight;
        }
        ttVar.tt(iX);
    }

    private int c(boolean z10) {
        if (z10) {
            return this.uj.getPaddingStart();
        }
        return this.uj.getPaddingTop();
    }

    private int c(View view, boolean z10) {
        if (z10) {
            return view.getMeasuredWidth();
        }
        return view.getMeasuredHeight();
    }

    private void tt(View view, int i10, int i11) {
        int measuredHeight;
        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i10 - ttVar.u()) - ttVar.z()) - this.uj.c(view), ttVar.sp()), ttVar.i());
        long[] jArr = this.f18916a;
        if (jArr != null) {
            measuredHeight = tt(jArr[i11]);
        } else {
            measuredHeight = view.getMeasuredHeight();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        c(i11, iMakeMeasureSpec2, iMakeMeasureSpec, view);
    }

    private int c(com.byazt.qa.tt ttVar, boolean z10) {
        if (z10) {
            return ttVar.c();
        }
        return ttVar.tt();
    }

    private boolean c(View view, int i10, int i11, int i12, int i13, com.byazt.qa.tt ttVar, int i14, int i15, int i16) {
        if (this.uj.getFlexWrap() == 0) {
            return false;
        }
        if (ttVar.sl()) {
            return true;
        }
        if (i10 == 0) {
            return false;
        }
        int maxLine = this.uj.getMaxLine();
        if (maxLine != -1 && maxLine <= i16 + 1) {
            return false;
        }
        int iC = this.uj.c(view, i14, i15);
        if (iC > 0) {
            i13 += iC;
        }
        return i11 < i12 + i13;
    }

    private boolean c(int i10, int i11, ve veVar) {
        return i10 == i11 - 1 && veVar.tt() != 0;
    }

    private void c(List<ve> list, ve veVar, int i10, int i11) {
        veVar.f18928u = i11;
        this.uj.c(veVar);
        veVar.f18925m = i10;
        list.add(veVar);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    private void c(View view, int i10) {
        boolean z10;
        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z11 = true;
        if (measuredWidth < ttVar.sp()) {
            measuredWidth = ttVar.sp();
        } else {
            if (measuredWidth > ttVar.i()) {
                measuredWidth = ttVar.i();
            } else {
                z10 = false;
            }
            if (measuredHeight < ttVar.x()) {
                measuredHeight = ttVar.x();
            } else if (measuredHeight > ttVar.da()) {
                measuredHeight = ttVar.da();
            } else {
                z11 = z10;
            }
            if (z11) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                c(i10, iMakeMeasureSpec, iMakeMeasureSpec2, view);
            }
        }
        z10 = true;
        if (measuredHeight < ttVar.x()) {
            measuredHeight = ttVar.x();
        } else if (measuredHeight > ttVar.da()) {
            measuredHeight = ttVar.da();
        } else {
            z11 = z10;
        }
        if (z11) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            c(i10, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
        }
    }

    public void c(int i10, int i11) {
        c(i10, i11, 0);
    }

    public void c(int i10, int i11, int i12) {
        int size;
        int paddingLeft;
        int paddingRight;
        ve(this.uj.getFlexItemCount());
        if (i12 >= this.uj.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.uj.getFlexDirection();
        int flexDirection2 = this.uj.getFlexDirection();
        if (flexDirection2 != 0 && flexDirection2 != 1) {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
            }
            int mode = View.MeasureSpec.getMode(i11);
            size = View.MeasureSpec.getSize(i11);
            if (mode != 1073741824) {
                size = this.uj.getLargestMainSize();
            }
            paddingLeft = this.uj.getPaddingTop();
            paddingRight = this.uj.getPaddingBottom();
        } else {
            int mode2 = View.MeasureSpec.getMode(i10);
            size = View.MeasureSpec.getSize(i10);
            int largestMainSize = this.uj.getLargestMainSize();
            if (mode2 != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = this.uj.getPaddingLeft();
            paddingRight = this.uj.getPaddingRight();
        }
        int i13 = paddingLeft + paddingRight;
        int[] iArr = this.f18917c;
        List<ve> flexLinesInternal = this.uj.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        for (int i14 = iArr != null ? iArr[i12] : 0; i14 < size2; i14++) {
            ve veVar = flexLinesInternal.get(i14);
            int i15 = veVar.f18926n;
            if (i15 < size && veVar.nu) {
                c(i10, i11, veVar, size, i13, false);
            } else if (i15 > size && veVar.rh) {
                tt(i10, i11, veVar, size, i13, false);
            }
        }
    }

    private void c(int i10, int i11, ve veVar, int i12, int i13, boolean z10) {
        int i14;
        int i15;
        int iMax;
        double d10;
        int i16;
        double d11;
        float f10 = veVar.f18923da;
        float f11 = 0.0f;
        if (f10 <= 0.0f || i12 < (i14 = veVar.f18926n)) {
            return;
        }
        float f12 = (i12 - i14) / f10;
        veVar.f18926n = i13 + veVar.f18921a;
        if (!z10) {
            veVar.sp = Integer.MIN_VALUE;
        }
        int i17 = 0;
        boolean z11 = false;
        int i18 = 0;
        float f13 = 0.0f;
        while (i17 < veVar.f18929x) {
            int i19 = veVar.f18930z + i17;
            View viewTt = this.uj.tt(i19);
            if (viewTt == null || viewTt.getVisibility() == 8) {
                i15 = i14;
            } else {
                com.byazt.qa.tt ttVar = (com.byazt.qa.tt) viewTt.getLayoutParams();
                int flexDirection = this.uj.getFlexDirection();
                if (flexDirection != 0 && flexDirection != 1) {
                    int measuredHeight = viewTt.getMeasuredHeight();
                    long[] jArr = this.f18916a;
                    if (jArr != null) {
                        measuredHeight = tt(jArr[i19]);
                    }
                    int measuredWidth = viewTt.getMeasuredWidth();
                    long[] jArr2 = this.f18916a;
                    if (jArr2 != null) {
                        measuredWidth = c(jArr2[i19]);
                    }
                    if (this.f18918n[i19] || ttVar.uj() <= f11) {
                        i16 = i14;
                    } else {
                        float fUj = measuredHeight + (ttVar.uj() * f12);
                        if (i17 == veVar.f18929x - 1) {
                            fUj += f13;
                            f13 = 0.0f;
                        }
                        int iRound = Math.round(fUj);
                        if (iRound > ttVar.da()) {
                            iRound = ttVar.da();
                            this.f18918n[i19] = true;
                            veVar.f18923da -= ttVar.uj();
                            i16 = i14;
                            z11 = true;
                        } else {
                            f13 += fUj - iRound;
                            i16 = i14;
                            double d12 = f13;
                            if (d12 > 1.0d) {
                                iRound++;
                                d11 = d12 - 1.0d;
                            } else if (d12 < -1.0d) {
                                iRound--;
                                d11 = d12 + 1.0d;
                            }
                            f13 = (float) d11;
                        }
                        int iC = c(i10, ttVar, veVar.f18928u);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewTt.measure(iC, iMakeMeasureSpec);
                        measuredWidth = viewTt.getMeasuredWidth();
                        int measuredHeight2 = viewTt.getMeasuredHeight();
                        c(i19, iC, iMakeMeasureSpec, viewTt);
                        measuredHeight = measuredHeight2;
                    }
                    iMax = Math.max(i18, measuredWidth + ttVar.u() + ttVar.z() + this.uj.c(viewTt));
                    veVar.f18926n += measuredHeight + ttVar.yp() + ttVar.m();
                    i15 = i16;
                } else {
                    int i20 = i14;
                    int measuredWidth2 = viewTt.getMeasuredWidth();
                    long[] jArr3 = this.f18916a;
                    if (jArr3 != null) {
                        measuredWidth2 = c(jArr3[i19]);
                    }
                    int measuredHeight3 = viewTt.getMeasuredHeight();
                    long[] jArr4 = this.f18916a;
                    i15 = i20;
                    if (jArr4 != null) {
                        measuredHeight3 = tt(jArr4[i19]);
                    }
                    if (!this.f18918n[i19] && ttVar.uj() > 0.0f) {
                        float fUj2 = measuredWidth2 + (ttVar.uj() * f12);
                        if (i17 == veVar.f18929x - 1) {
                            fUj2 += f13;
                            f13 = 0.0f;
                        }
                        int iRound2 = Math.round(fUj2);
                        if (iRound2 > ttVar.i()) {
                            iRound2 = ttVar.i();
                            this.f18918n[i19] = true;
                            veVar.f18923da -= ttVar.uj();
                            z11 = true;
                        } else {
                            f13 += fUj2 - iRound2;
                            double d13 = f13;
                            if (d13 > 1.0d) {
                                iRound2++;
                                d10 = d13 - 1.0d;
                            } else if (d13 < -1.0d) {
                                iRound2--;
                                d10 = d13 + 1.0d;
                            }
                            f13 = (float) d10;
                        }
                        int iTt = tt(i11, ttVar, veVar.f18928u);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewTt.measure(iMakeMeasureSpec2, iTt);
                        int measuredWidth3 = viewTt.getMeasuredWidth();
                        int measuredHeight4 = viewTt.getMeasuredHeight();
                        c(i19, iMakeMeasureSpec2, iTt, viewTt);
                        measuredWidth2 = measuredWidth3;
                        measuredHeight3 = measuredHeight4;
                    }
                    int iMax2 = Math.max(i18, measuredHeight3 + ttVar.yp() + ttVar.m() + this.uj.c(viewTt));
                    veVar.f18926n += measuredWidth2 + ttVar.u() + ttVar.z();
                    iMax = iMax2;
                }
                veVar.sp = Math.max(veVar.sp, iMax);
                i18 = iMax;
            }
            i17++;
            i14 = i15;
            f11 = 0.0f;
        }
        int i21 = i14;
        if (!z11 || i21 == veVar.f18926n) {
            return;
        }
        c(i10, i11, veVar, i12, i13, true);
    }

    private int c(int i10, com.byazt.qa.tt ttVar, int i11) {
        com.byazt.qa.c cVar = this.uj;
        int iC = cVar.c(i10, cVar.getPaddingLeft() + this.uj.getPaddingRight() + ttVar.u() + ttVar.z() + i11, ttVar.c());
        int size = View.MeasureSpec.getSize(iC);
        if (size > ttVar.i()) {
            return View.MeasureSpec.makeMeasureSpec(ttVar.i(), View.MeasureSpec.getMode(iC));
        }
        return size < ttVar.sp() ? View.MeasureSpec.makeMeasureSpec(ttVar.sp(), View.MeasureSpec.getMode(iC)) : iC;
    }

    private List<ve> c(List<ve> list, int i10, int i11) {
        int i12 = (i10 - i11) / 2;
        ArrayList arrayList = new ArrayList();
        ve veVar = new ve();
        veVar.sp = i12;
        int size = list.size();
        for (int i13 = 0; i13 < size; i13++) {
            if (i13 == 0) {
                arrayList.add(veVar);
            }
            arrayList.add(list.get(i13));
            if (i13 == list.size() - 1) {
                arrayList.add(veVar);
            }
        }
        return arrayList;
    }

    public void c() {
        c(0);
    }

    public void c(int i10) {
        View viewTt;
        if (i10 >= this.uj.getFlexItemCount()) {
            return;
        }
        int flexDirection = this.uj.getFlexDirection();
        if (this.uj.getAlignItems() == 4) {
            int[] iArr = this.f18917c;
            List<ve> flexLinesInternal = this.uj.getFlexLinesInternal();
            int size = flexLinesInternal.size();
            for (int i11 = iArr != null ? iArr[i10] : 0; i11 < size; i11++) {
                ve veVar = flexLinesInternal.get(i11);
                int i12 = veVar.f18929x;
                for (int i13 = 0; i13 < i12; i13++) {
                    int i14 = veVar.f18930z + i13;
                    if (i13 < this.uj.getFlexItemCount() && (viewTt = this.uj.tt(i14)) != null && viewTt.getVisibility() != 8) {
                        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) viewTt.getLayoutParams();
                        if (ttVar.a() == -1 || ttVar.a() == 4) {
                            if (flexDirection != 0 && flexDirection != 1) {
                                if (flexDirection != 2 && flexDirection != 3) {
                                    throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                                }
                                tt(viewTt, veVar.sp, i14);
                            } else {
                                c(viewTt, veVar.sp, i14);
                            }
                        }
                    }
                }
            }
            return;
        }
        for (ve veVar2 : this.uj.getFlexLinesInternal()) {
            for (Integer num : veVar2.yp) {
                View viewTt2 = this.uj.tt(num.intValue());
                if (flexDirection != 0 && flexDirection != 1) {
                    if (flexDirection != 2 && flexDirection != 3) {
                        throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(flexDirection)));
                    }
                    tt(viewTt2, veVar2.sp, num.intValue());
                } else {
                    c(viewTt2, veVar2.sp, num.intValue());
                }
            }
        }
    }

    private void c(View view, int i10, int i11) {
        int measuredWidth;
        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) view.getLayoutParams();
        int iMin = Math.min(Math.max(((i10 - ttVar.yp()) - ttVar.m()) - this.uj.c(view), ttVar.x()), ttVar.da());
        long[] jArr = this.f18916a;
        if (jArr != null) {
            measuredWidth = c(jArr[i11]);
        } else {
            measuredWidth = view.getMeasuredWidth();
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        c(i11, iMakeMeasureSpec, iMakeMeasureSpec2, view);
    }

    public void c(View view, ve veVar, int i10, int i11, int i12, int i13) {
        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) view.getLayoutParams();
        int alignItems = this.uj.getAlignItems();
        if (ttVar.a() != -1) {
            alignItems = ttVar.a();
        }
        int i14 = veVar.sp;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (this.uj.getFlexWrap() != 2) {
                    int i15 = i11 + i14;
                    view.layout(i10, (i15 - view.getMeasuredHeight()) - ttVar.m(), i12, i15 - ttVar.m());
                    return;
                } else {
                    view.layout(i10, (i11 - i14) + view.getMeasuredHeight() + ttVar.yp(), i12, (i13 - i14) + view.getMeasuredHeight() + ttVar.yp());
                    return;
                }
            }
            if (alignItems == 2) {
                int measuredHeight = (((i14 - view.getMeasuredHeight()) + ttVar.yp()) - ttVar.m()) / 2;
                if (this.uj.getFlexWrap() != 2) {
                    int i16 = i11 + measuredHeight;
                    view.layout(i10, i16, i12, view.getMeasuredHeight() + i16);
                    return;
                } else {
                    int i17 = i11 - measuredHeight;
                    view.layout(i10, i17, i12, view.getMeasuredHeight() + i17);
                    return;
                }
            }
            if (alignItems == 3) {
                if (this.uj.getFlexWrap() != 2) {
                    int iMax = Math.max(veVar.f18927t - view.getBaseline(), ttVar.yp());
                    view.layout(i10, i11 + iMax, i12, i13 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max((veVar.f18927t - view.getMeasuredHeight()) + view.getBaseline(), ttVar.m());
                    view.layout(i10, i11 - iMax2, i12, i13 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (this.uj.getFlexWrap() != 2) {
            view.layout(i10, i11 + ttVar.yp(), i12, i13 + ttVar.yp());
        } else {
            view.layout(i10, i11 - ttVar.m(), i12, i13 - ttVar.m());
        }
    }

    public void c(View view, ve veVar, boolean z10, int i10, int i11, int i12, int i13) {
        com.byazt.qa.tt ttVar = (com.byazt.qa.tt) view.getLayoutParams();
        int alignItems = this.uj.getAlignItems();
        if (ttVar.a() != -1) {
            alignItems = ttVar.a();
        }
        int i14 = veVar.sp;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z10) {
                    view.layout(((i10 + i14) - view.getMeasuredWidth()) - ttVar.z(), i11, ((i12 + i14) - view.getMeasuredWidth()) - ttVar.z(), i13);
                    return;
                } else {
                    view.layout((i10 - i14) + view.getMeasuredWidth() + ttVar.u(), i11, (i12 - i14) + view.getMeasuredWidth() + ttVar.u(), i13);
                    return;
                }
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int measuredWidth = (((i14 - view.getMeasuredWidth()) + a.c(marginLayoutParams)) - a.tt(marginLayoutParams)) / 2;
                if (!z10) {
                    view.layout(i10 + measuredWidth, i11, i12 + measuredWidth, i13);
                    return;
                } else {
                    view.layout(i10 - measuredWidth, i11, i12 - measuredWidth, i13);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (!z10) {
            view.layout(i10 + ttVar.u(), i11, i12 + ttVar.u(), i13);
        } else {
            view.layout(i10 - ttVar.z(), i11, i12 - ttVar.z(), i13);
        }
    }

    private void c(int i10, int i11, int i12, View view) {
        long[] jArr = this.tt;
        if (jArr != null) {
            jArr[i10] = tt(i11, i12);
        }
        long[] jArr2 = this.f18916a;
        if (jArr2 != null) {
            jArr2[i10] = tt(view.getMeasuredWidth(), view.getMeasuredHeight());
        }
    }
}
