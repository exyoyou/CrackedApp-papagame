package com.kongzue.dialogx.dialogs;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.lifecycle.LifecycleOwner;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.interfaces.DialogXStyle;
import com.kongzue.dialogx.interfaces.SELECT_MODE;
import com.kongzue.dialogx.interfaces.p;
import com.kongzue.dialogx.interfaces.q;
import com.kongzue.dialogx.interfaces.r;
import com.kongzue.dialogx.interfaces.t;
import com.kongzue.dialogx.interfaces.u;
import com.kongzue.dialogx.interfaces.w;
import com.kongzue.dialogx.interfaces.x;
import com.kongzue.dialogx.interfaces.y;
import com.kongzue.dialogx.util.TextInfo;
import com.kongzue.dialogx.util.views.DialogListView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class h extends g {
    public static final int I2 = 100;
    protected BaseAdapter A2;
    protected List<CharSequence> B2;
    protected List<Integer> C2;
    private float E2;
    private int[] G2;
    private CharSequence[] H2;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    protected ArrayList<Integer> f73882q2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.m<h> f73884s2;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    protected com.kongzue.dialogx.util.k f73886u2;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    protected x<h> f73887v2;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    protected u<h> f73888w2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.n<h> f73889x2;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    protected DialogListView f73890y2;

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    protected TextInfo f73891z2;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    protected h f73878m2 = this;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    protected boolean f73879n2 = true;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    protected int f73880o2 = -1;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    protected SELECT_MODE f73881p2 = SELECT_MODE.NONE;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    protected boolean f73883r2 = false;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    protected Map<Integer, Boolean> f73885t2 = new HashMap();
    protected boolean D2 = true;
    private long F2 = 0;

    class a extends com.kongzue.dialogx.interfaces.d {
        a() {
        }

        @Override // com.kongzue.dialogx.interfaces.d
        public void a(MotionEvent motionEvent) {
            h hVar = h.this;
            hVar.E2 = hVar.S2().f73851c.getY();
        }
    }

    class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (h.this.E5(i10)) {
                h.this.Z(view);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - h.this.F2 > 100) {
                    h.this.F2 = jCurrentTimeMillis;
                    if (Math.abs(h.this.E2 - h.this.S2().f73851c.getY()) > h.this.o(15.0f)) {
                        return;
                    }
                    h hVar = h.this;
                    hVar.f73880o2 = i10;
                    int i11 = e.f73898a[hVar.f73881p2.ordinal()];
                    if (i11 == 1) {
                        h hVar2 = h.this;
                        x<h> xVar = hVar2.f73887v2;
                        if (xVar == null) {
                            hVar2.K2();
                            return;
                        } else {
                            if (xVar.a(hVar2.f73878m2, hVar2.B2.get(i10), i10)) {
                                return;
                            }
                            h.this.K2();
                            return;
                        }
                    }
                    if (i11 == 2) {
                        h hVar3 = h.this;
                        x<h> xVar2 = hVar3.f73887v2;
                        if (!(xVar2 instanceof y)) {
                            if (xVar2 == null) {
                                hVar3.A2.notifyDataSetInvalidated();
                                return;
                            } else {
                                if (xVar2.a(hVar3.f73878m2, hVar3.B2.get(i10), i10)) {
                                    return;
                                }
                                h.this.K2();
                                return;
                            }
                        }
                        y yVar = (y) xVar2;
                        if (!yVar.a(hVar3.f73878m2, hVar3.B2.get(i10), i10)) {
                            h.this.K2();
                            return;
                        }
                        h.this.A2.notifyDataSetInvalidated();
                        h hVar4 = h.this;
                        yVar.c(hVar4.f73878m2, hVar4.B2.get(i10), i10, true);
                        return;
                    }
                    if (i11 != 3) {
                        return;
                    }
                    h hVar5 = h.this;
                    x<h> xVar3 = hVar5.f73887v2;
                    int i12 = 0;
                    if (!(xVar3 instanceof y)) {
                        if (xVar3 != null) {
                            if (xVar3.a(hVar5.f73878m2, hVar5.B2.get(i10), i10)) {
                                return;
                            }
                            h.this.K2();
                            return;
                        }
                        if (hVar5.f73882q2.contains(Integer.valueOf(i10))) {
                            h.this.f73882q2.remove(new Integer(i10));
                        } else {
                            h.this.f73882q2.add(Integer.valueOf(i10));
                        }
                        h.this.A2.notifyDataSetInvalidated();
                        h hVar6 = h.this;
                        hVar6.G2 = new int[hVar6.f73882q2.size()];
                        h hVar7 = h.this;
                        hVar7.H2 = new CharSequence[hVar7.f73882q2.size()];
                        while (i12 < h.this.f73882q2.size()) {
                            h.this.G2[i12] = h.this.f73882q2.get(i12).intValue();
                            CharSequence[] charSequenceArr = h.this.H2;
                            h hVar8 = h.this;
                            charSequenceArr[i12] = hVar8.B2.get(hVar8.G2[i12]);
                            i12++;
                        }
                        return;
                    }
                    y yVar2 = (y) xVar3;
                    if (!yVar2.a(hVar5.f73878m2, hVar5.B2.get(i10), i10)) {
                        h.this.K2();
                        return;
                    }
                    if (h.this.f73882q2.contains(Integer.valueOf(i10))) {
                        h.this.f73882q2.remove(new Integer(i10));
                    } else {
                        h.this.f73882q2.add(Integer.valueOf(i10));
                    }
                    h.this.A2.notifyDataSetInvalidated();
                    h hVar9 = h.this;
                    hVar9.G2 = new int[hVar9.f73882q2.size()];
                    h hVar10 = h.this;
                    hVar10.H2 = new CharSequence[hVar10.f73882q2.size()];
                    while (i12 < h.this.f73882q2.size()) {
                        h.this.G2[i12] = h.this.f73882q2.get(i12).intValue();
                        CharSequence[] charSequenceArr2 = h.this.H2;
                        h hVar11 = h.this;
                        charSequenceArr2[i12] = hVar11.B2.get(hVar11.G2[i12]);
                        i12++;
                    }
                    h hVar12 = h.this;
                    yVar2.b(hVar12.f73878m2, hVar12.H2, h.this.G2);
                }
            }
        }
    }

    class c implements Runnable {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f73895b;

            a(View view) {
                this.f73895b = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f73895b.setPressed(true);
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            BaseAdapter baseAdapter = hVar.A2;
            if ((baseAdapter instanceof com.kongzue.dialogx.util.c) && hVar.f73883r2) {
                View childAt = hVar.f73890y2.getChildAt(hVar.y5());
                if (childAt != null) {
                    childAt.post(new a(childAt));
                }
            }
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.this.x0();
        }
    }

    static /* synthetic */ class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f73898a;

        static {
            int[] iArr = new int[SELECT_MODE.values().length];
            f73898a = iArr;
            try {
                iArr[SELECT_MODE.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73898a[SELECT_MODE.SINGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73898a[SELECT_MODE.MULTIPLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected h() {
    }

    public static h A7(int i10, int i11, String[] strArr) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.u6(strArr);
        hVar.M0();
        return hVar;
    }

    public static h B7(int i10, int i11, String[] strArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.u6(strArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h C7(int i10, List<CharSequence> list) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h D7(int i10, List<CharSequence> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.V6(xVar);
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h E7(int i10, CharSequence[] charSequenceArr) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.t6(charSequenceArr);
        hVar.M0();
        return hVar;
    }

    private boolean F5(int i10) {
        List<CharSequence> list = this.B2;
        return list == null || list.size() == 0 || this.B2.size() == i10;
    }

    public static h F7(int i10, CharSequence[] charSequenceArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.t6(charSequenceArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h G7(int i10, String[] strArr) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.u6(strArr);
        hVar.M0();
        return hVar;
    }

    public static h H7(int i10, String[] strArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.u6(strArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h I7(CharSequence charSequence, CharSequence charSequence2, List<CharSequence> list) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h J7(CharSequence charSequence, CharSequence charSequence2, List<CharSequence> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.s6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h K7(CharSequence charSequence, CharSequence charSequence2, CharSequence[] charSequenceArr) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.t6(charSequenceArr);
        hVar.M0();
        return hVar;
    }

    public static h L7(CharSequence charSequence, CharSequence charSequence2, CharSequence[] charSequenceArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.t6(charSequenceArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h M7(CharSequence charSequence, CharSequence charSequence2, String[] strArr) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.u6(strArr);
        hVar.M0();
        return hVar;
    }

    public static h N7(CharSequence charSequence, CharSequence charSequence2, String[] strArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.u6(strArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h O7(CharSequence charSequence, List<CharSequence> list) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h P7(CharSequence charSequence, List<CharSequence> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.s6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h Q7(CharSequence charSequence, CharSequence[] charSequenceArr) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.t6(charSequenceArr);
        hVar.M0();
        return hVar;
    }

    public static h R7(CharSequence charSequence, CharSequence[] charSequenceArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.t6(charSequenceArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h S7(CharSequence charSequence, String[] strArr) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.u6(strArr);
        hVar.M0();
        return hVar;
    }

    public static h T7(CharSequence charSequence, String[] strArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.u6(strArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h U7(String str, String str2, List<CharSequence> list) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h V7(String str, String str2, List<CharSequence> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.s6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h W7(String str, String str2, CharSequence[] charSequenceArr) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.t6(charSequenceArr);
        hVar.M0();
        return hVar;
    }

    public static h X7(String str, String str2, CharSequence[] charSequenceArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.t6(charSequenceArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h Y7(String str, String str2, String[] strArr) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.u6(strArr);
        hVar.M0();
        return hVar;
    }

    public static h Z4() {
        return new h();
    }

    public static h Z7(String str, String str2, String[] strArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.u6(strArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h a5(DialogXStyle dialogXStyle) {
        return new h().u4(dialogXStyle);
    }

    public static h a8(List<CharSequence> list) {
        h hVar = new h();
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h b5(r<g> rVar) {
        return new h().I3(rVar);
    }

    public static h b8(List<CharSequence> list, x<h> xVar) {
        h hVar = new h();
        hVar.s6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h c8(CharSequence[] charSequenceArr) {
        h hVar = new h();
        hVar.t6(charSequenceArr);
        hVar.M0();
        return hVar;
    }

    public static h d8(CharSequence[] charSequenceArr, x<h> xVar) {
        h hVar = new h();
        hVar.t6(charSequenceArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h e8(String... strArr) {
        h hVar = new h();
        hVar.u6(strArr);
        hVar.M0();
        return hVar;
    }

    public static h f8(String[] strArr, x<h> xVar) {
        h hVar = new h();
        hVar.u6(strArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h g8(int i10, int i11, List<String> list) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.x6(list);
        hVar.M0();
        return hVar;
    }

    public static h h8(int i10, int i11, List<String> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.x6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h i8(CharSequence charSequence, CharSequence charSequence2, List<String> list) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.x6(list);
        hVar.M0();
        return hVar;
    }

    public static h j8(CharSequence charSequence, CharSequence charSequence2, List<String> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = charSequence;
        hVar.Y = charSequence2;
        hVar.x6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h k8(String str, String str2, List<String> list) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.x6(list);
        hVar.M0();
        return hVar;
    }

    public static h l8(String str, String str2, List<String> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = str;
        hVar.Y = str2;
        hVar.x6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h m8(List<String> list) {
        h hVar = new h();
        hVar.x6(list);
        hVar.M0();
        return hVar;
    }

    public static h n8(List<String> list, x<h> xVar) {
        h hVar = new h();
        hVar.x6(list);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public static h w7(int i10, int i11, List<CharSequence> list) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h x7(int i10, int i11, List<CharSequence> list, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.V6(xVar);
        hVar.s6(list);
        hVar.M0();
        return hVar;
    }

    public static h y7(int i10, int i11, CharSequence[] charSequenceArr) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.t6(charSequenceArr);
        hVar.M0();
        return hVar;
    }

    public static h z7(int i10, int i11, CharSequence[] charSequenceArr, x<h> xVar) {
        h hVar = new h();
        hVar.X = hVar.S(i10);
        hVar.Y = hVar.S(i11);
        hVar.t6(charSequenceArr);
        hVar.V6(xVar);
        hVar.M0();
        return hVar;
    }

    public int[] A5() {
        return this.G2;
    }

    public h A6(String... strArr) {
        this.B2 = Arrays.asList(strArr);
        this.A2 = null;
        J5();
        return this;
    }

    public ArrayList<Integer> B5() {
        return this.f73882q2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: B6, reason: merged with bridge method [inline-methods] */
    public h W3(int i10) {
        this.Y = S(i10);
        J5();
        return this;
    }

    public boolean C5() {
        return this.f74072s.f() != null && this.f73879n2 && this.f74072s.f().k();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: C6, reason: merged with bridge method [inline-methods] */
    public h X3(CharSequence charSequence) {
        this.Y = charSequence;
        J5();
        return this;
    }

    public boolean D5() {
        return this.D2;
    }

    public h D6(float f10) {
        this.f74079z = (int) f10;
        return this;
    }

    public boolean E5(int i10) {
        Boolean bool = this.f73885t2.get(Integer.valueOf(i10));
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: E6, reason: merged with bridge method [inline-methods] */
    public h Y3(TextInfo textInfo) {
        this.f73844v1 = textInfo;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: F6, reason: merged with bridge method [inline-methods] */
    public h Z3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    public boolean G5() {
        return this.f73883r2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: G6, reason: merged with bridge method [inline-methods] */
    public h a4(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: H5, reason: merged with bridge method [inline-methods] */
    public h p3(com.kongzue.dialogx.interfaces.i<g> iVar) {
        this.f74066m = iVar;
        return this;
    }

    public h H6() {
        this.f73881p2 = SELECT_MODE.MULTIPLE;
        this.f73880o2 = -1;
        this.f73882q2 = new ArrayList<>();
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: I5, reason: merged with bridge method [inline-methods] */
    public h r3(com.kongzue.dialogx.interfaces.i<g> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    public h I6() {
        this.f73881p2 = SELECT_MODE.NONE;
        this.f73880o2 = -1;
        this.f73882q2 = null;
        this.A2 = null;
        J5();
        return this;
    }

    public void J5() {
        if (S2() == null) {
            return;
        }
        BaseDialog.C0(new d());
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: J6, reason: merged with bridge method [inline-methods] */
    public h b4(int i10) {
        this.Z = S(i10);
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: K5, reason: merged with bridge method [inline-methods] */
    public h t3() {
        this.N.clean();
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: K6, reason: merged with bridge method [inline-methods] */
    public h c4(int i10, t<g> tVar) {
        this.Z = S(i10);
        this.f73831b2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public int L2() {
        return this.f74075v.intValue();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: L5, reason: merged with bridge method [inline-methods] */
    public h u3(int i10, com.kongzue.dialogx.interfaces.i<g> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    public h L6(int i10, w<h> wVar) {
        this.Z = S(i10);
        this.f73831b2 = wVar;
        return this;
    }

    public h M5(boolean z10) {
        this.f73879n2 = z10;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: M6, reason: merged with bridge method [inline-methods] */
    public h d4(t<g> tVar) {
        this.f73831b2 = tVar;
        return this;
    }

    public h N5(boolean z10) {
        this.D2 = z10;
        x0();
        return this;
    }

    public h N6(w<h> wVar) {
        this.f73831b2 = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence O2() {
        return this.f73840p0;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: O5, reason: merged with bridge method [inline-methods] */
    public h w3(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: O6, reason: merged with bridge method [inline-methods] */
    public h e4(CharSequence charSequence) {
        this.Z = charSequence;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: P5, reason: merged with bridge method [inline-methods] */
    public h x3(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: P6, reason: merged with bridge method [inline-methods] */
    public h f4(CharSequence charSequence, t<g> tVar) {
        this.Z = charSequence;
        this.f73831b2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        K2();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo Q2() {
        return this.R1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: Q5, reason: merged with bridge method [inline-methods] */
    public h y3(boolean z10) {
        this.M = z10;
        return this;
    }

    public h Q6(CharSequence charSequence, w<h> wVar) {
        this.Z = charSequence;
        this.f73831b2 = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public View R2() {
        r<g> rVar = this.N;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: R5, reason: merged with bridge method [inline-methods] */
    public h A3(int i10) {
        this.f73840p0 = S(i10);
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: R6, reason: merged with bridge method [inline-methods] */
    public h h4(TextInfo textInfo) {
        this.L1 = textInfo;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public g.e S2() {
        return this.f73836f2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: S5, reason: merged with bridge method [inline-methods] */
    public h B3(int i10, t<g> tVar) {
        this.f73840p0 = S(i10);
        this.f73832c2 = tVar;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: S6, reason: merged with bridge method [inline-methods] */
    public h i4(p<g> pVar) {
        this.T = pVar;
        J5();
        return this;
    }

    public h T5(int i10, w<h> wVar) {
        this.f73840p0 = S(i10);
        this.f73832c2 = wVar;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: T6, reason: merged with bridge method [inline-methods] */
    public h j4(q<g> qVar) {
        this.W = qVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public com.kongzue.dialogx.interfaces.g<g> U2() {
        return this.S;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: U5, reason: merged with bridge method [inline-methods] */
    public h C3(t<g> tVar) {
        this.f73832c2 = tVar;
        return this;
    }

    public h U6(u<h> uVar) {
        this.f73888w2 = uVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public long V2() {
        return this.f74076w;
    }

    public h V5(w<h> wVar) {
        this.f73832c2 = wVar;
        return this;
    }

    public h V6(x<h> xVar) {
        this.f73887v2 = xVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public long W2() {
        return this.f74077x;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: W4, reason: merged with bridge method [inline-methods] */
    public h C2(CharSequence charSequence) {
        this.Y = TextUtils.concat(this.Y, charSequence);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: W5, reason: merged with bridge method [inline-methods] */
    public h D3(CharSequence charSequence) {
        this.f73840p0 = charSequence;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: W6, reason: merged with bridge method [inline-methods] */
    public h k4(int i10) {
        this.f73830b1 = S(i10);
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: X4, reason: merged with bridge method [inline-methods] */
    public h D2(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: X5, reason: merged with bridge method [inline-methods] */
    public h E3(CharSequence charSequence, t<g> tVar) {
        this.f73840p0 = charSequence;
        this.f73832c2 = tVar;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: X6, reason: merged with bridge method [inline-methods] */
    public h l4(int i10, t<g> tVar) {
        this.f73830b1 = S(i10);
        this.f73833d2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence Y2() {
        return this.Y;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: Y4, reason: merged with bridge method [inline-methods] */
    public h E2() {
        L0(F());
        return this;
    }

    public h Y5(CharSequence charSequence, w<h> wVar) {
        this.f73840p0 = charSequence;
        this.f73832c2 = wVar;
        J5();
        return this;
    }

    public h Y6(int i10, w<h> wVar) {
        this.f73830b1 = S(i10);
        this.f73833d2 = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo Z2() {
        return this.f73844v1;
    }

    public h Z5(w<h> wVar) {
        this.f73832c2 = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: Z6, reason: merged with bridge method [inline-methods] */
    public h m4(t<g> tVar) {
        this.f73833d2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence a3() {
        return this.Z;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: a6, reason: merged with bridge method [inline-methods] */
    public h G3(TextInfo textInfo) {
        this.R1 = textInfo;
        J5();
        return this;
    }

    public h a7(w<h> wVar) {
        this.f73833d2 = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: b6, reason: merged with bridge method [inline-methods] */
    public h H3(boolean z10) {
        this.P = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: b7, reason: merged with bridge method [inline-methods] */
    public h n4(CharSequence charSequence) {
        this.f73830b1 = charSequence;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo c3() {
        return this.L1;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: c5, reason: merged with bridge method [inline-methods] */
    public h I2(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: c6, reason: merged with bridge method [inline-methods] */
    public h I3(r<g> rVar) {
        this.N = rVar;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    @Deprecated
    /* JADX INFO: renamed from: c7, reason: merged with bridge method [inline-methods] */
    public h o4(CharSequence charSequence, t<g> tVar) {
        this.f73830b1 = charSequence;
        this.f73833d2 = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public p<g> d3() {
        return this.T;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: d5, reason: merged with bridge method [inline-methods] */
    public h J2() {
        this.f74069p.clear();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: d6, reason: merged with bridge method [inline-methods] */
    public h F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public h d7(CharSequence charSequence, w<h> wVar) {
        this.f73830b1 = charSequence;
        this.f73833d2 = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public q<g> e3() {
        return this.W;
    }

    public h e5(int... iArr) {
        for (int i10 : iArr) {
            this.f73885t2.put(Integer.valueOf(i10), Boolean.FALSE);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: e6, reason: merged with bridge method [inline-methods] */
    public h K3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: e7, reason: merged with bridge method [inline-methods] */
    public h q4(TextInfo textInfo) {
        this.V1 = textInfo;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.P;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = g.f73828l2;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence f3() {
        return this.f73830b1;
    }

    public h f5(CharSequence... charSequenceArr) {
        List<CharSequence> list = this.B2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableMenu(" + charSequenceArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (CharSequence charSequence : charSequenceArr) {
                this.f73885t2.put(Integer.valueOf(this.B2.indexOf(charSequence)), Boolean.FALSE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: f6, reason: merged with bridge method [inline-methods] */
    public h L3(com.kongzue.dialogx.interfaces.f<g> fVar) {
        this.V = fVar;
        if (this.f74071r) {
            fVar.b(this.f73878m2);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: f7, reason: merged with bridge method [inline-methods] */
    public h r4(float f10) {
        this.f73841p1 = f10;
        x0();
        return this;
    }

    public h g5(String... strArr) {
        List<CharSequence> list = this.B2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableMenu(" + strArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (String str : strArr) {
                this.f73885t2.put(Integer.valueOf(this.B2.indexOf(str)), Boolean.FALSE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: g6, reason: merged with bridge method [inline-methods] */
    public h M3(com.kongzue.dialogx.interfaces.g<g> gVar) {
        this.S = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: g7, reason: merged with bridge method [inline-methods] */
    public h s4(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public void h() {
        K2();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo h3() {
        return this.V1;
    }

    public h h5(int... iArr) {
        for (int i10 : iArr) {
            this.f73885t2.put(Integer.valueOf(i10), Boolean.TRUE);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: h6, reason: merged with bridge method [inline-methods] */
    public h I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: h7, reason: merged with bridge method [inline-methods] */
    public h t4(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public float i3() {
        return this.f73841p1;
    }

    public h i5(CharSequence... charSequenceArr) {
        List<CharSequence> list = this.B2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .enableMenu(" + charSequenceArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (CharSequence charSequence : charSequenceArr) {
                this.f73885t2.put(Integer.valueOf(this.B2.indexOf(charSequence)), Boolean.TRUE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: i6, reason: merged with bridge method [inline-methods] */
    public h O3(long j10) {
        this.f74076w = j10;
        return this;
    }

    public h i7(int i10) {
        this.f73881p2 = SELECT_MODE.SINGLE;
        this.f73880o2 = i10;
        this.f73882q2 = null;
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public CharSequence j3() {
        return this.X;
    }

    public h j5(String... strArr) {
        List<CharSequence> list = this.B2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .enableMenu(" + strArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (String str : strArr) {
                this.f73885t2.put(Integer.valueOf(this.B2.indexOf(str)), Boolean.TRUE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: j6, reason: merged with bridge method [inline-methods] */
    public h Q3(long j10) {
        this.f74077x = j10;
        return this;
    }

    public h j7(List<Integer> list) {
        this.f73881p2 = SELECT_MODE.MULTIPLE;
        this.f73880o2 = -1;
        this.f73882q2 = new ArrayList<>(list);
        this.A2 = null;
        J5();
        return this;
    }

    public int k5(int i10) {
        List<Integer> list = this.C2;
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return 0;
        }
        return this.C2.get(i10).intValue();
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: k6, reason: merged with bridge method [inline-methods] */
    public h S3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public h k7(int[] iArr) {
        this.f73881p2 = SELECT_MODE.MULTIPLE;
        this.f73880o2 = -1;
        this.f73882q2 = new ArrayList<>();
        if (iArr != null) {
            for (int i10 : iArr) {
                this.f73882q2.add(Integer.valueOf(i10));
            }
        }
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public TextInfo l3() {
        return this.f73843r1;
    }

    public List<Integer> l5() {
        return this.C2;
    }

    public h l6(List<Integer> list) {
        this.C2 = list;
        x0();
        return this;
    }

    public h l7(boolean z10) {
        this.f73883r2 = z10;
        x0();
        return this;
    }

    public com.kongzue.dialogx.util.k m5() {
        return this.f73886u2;
    }

    public h m6(int... iArr) {
        if (this.C2 == null) {
            this.C2 = new ArrayList();
        }
        for (int i10 : iArr) {
            this.C2.add(Integer.valueOf(i10));
        }
        x0();
        return this;
    }

    public h m7() {
        this.f73881p2 = SELECT_MODE.SINGLE;
        this.f73880o2 = -1;
        this.f73882q2 = null;
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    public com.kongzue.dialogx.interfaces.n<h> n5() {
        return this.f73889x2;
    }

    public h n6(com.kongzue.dialogx.util.k kVar) {
        this.f73886u2 = kVar;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: n7, reason: merged with bridge method [inline-methods] */
    public h u4(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    public boolean o3() {
        return this.M;
    }

    public List<CharSequence> o5() {
        return this.B2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: o6, reason: merged with bridge method [inline-methods] */
    public h T3(@ColorInt int i10) {
        this.f73839l1 = Integer.valueOf(i10);
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: o7, reason: merged with bridge method [inline-methods] */
    public h v4(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public BaseAdapter p5() {
        return this.A2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: p6, reason: merged with bridge method [inline-methods] */
    public h U3(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: p7, reason: merged with bridge method [inline-methods] */
    public h L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public com.kongzue.dialogx.interfaces.m<h> q5() {
        return this.f73884s2;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: q6, reason: merged with bridge method [inline-methods] */
    public h V3(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: q7, reason: merged with bridge method [inline-methods] */
    public h x4(int i10) {
        this.X = S(i10);
        J5();
        return this;
    }

    public TextInfo r5() {
        TextInfo textInfo = this.f73891z2;
        return textInfo == null ? DialogX.f73609u : textInfo;
    }

    public h r6(com.kongzue.dialogx.interfaces.n<h> nVar) {
        this.f73889x2 = nVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: r7, reason: merged with bridge method [inline-methods] */
    public h y4(CharSequence charSequence) {
        this.X = charSequence;
        J5();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void s0() {
        int iC;
        int iD;
        if (S2() != null) {
            S2().f73855g.setVisibility(0);
            if (!C5()) {
                S2().f73851c.i(this.f74079z);
                if (this.f74079z != 0) {
                    this.f73836f2.f73853e.b(true);
                }
            }
            if (this.f74072s.f() != null) {
                iC = this.f74072s.f().c(i0());
                iD = this.f74072s.f().d(i0());
            } else {
                iC = 0;
                iD = 1;
            }
            if (iC == 0) {
                iC = i0() ? R.drawable.rect_dialogx_material_menu_split_divider : R.drawable.rect_dialogx_material_menu_split_divider_night;
            }
            if (i0()) {
                this.f73890y2 = new DialogListView(S2(), N());
            } else {
                this.f73890y2 = new DialogListView(S2(), N(), R.style.DialogXCompatThemeDark);
            }
            this.f73890y2.setOverScrollMode(2);
            this.f73890y2.setDivider(getResources().getDrawable(iC));
            this.f73890y2.setDividerHeight(iD);
            this.f73890y2.d(new a());
            this.f73890y2.setOnItemClickListener(new b());
            if (this.f74072s.f() != null && this.f74072s.f().e(true, 0, 0, false) != 0) {
                this.f73890y2.setSelector(R.color.empty);
            }
            S2().f73855g.addView(this.f73890y2, new ViewGroup.LayoutParams(-1, -2));
            x0();
        }
    }

    public float s5() {
        return this.f74079z;
    }

    public h s6(List<CharSequence> list) {
        this.B2 = list;
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: s7, reason: merged with bridge method [inline-methods] */
    public h z4(int i10) {
        this.f73842q1 = getResources().getDrawable(i10);
        x0();
        return this;
    }

    public w<h> t5() {
        return (w) this.f73832c2;
    }

    public h t6(CharSequence[] charSequenceArr) {
        this.B2 = Arrays.asList(charSequenceArr);
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: t7, reason: merged with bridge method [inline-methods] */
    public h A4(Bitmap bitmap) {
        this.f73842q1 = new BitmapDrawable(getResources(), bitmap);
        x0();
        return this;
    }

    public u<h> u5() {
        return this.f73888w2;
    }

    public h u6(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        this.B2 = arrayList;
        arrayList.addAll(Arrays.asList(strArr));
        this.A2 = null;
        J5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: u7, reason: merged with bridge method [inline-methods] */
    public h B4(Drawable drawable) {
        this.f73842q1 = drawable;
        x0();
        return this;
    }

    public x<h> v5() {
        return this.f73887v2;
    }

    public h v6(BaseAdapter baseAdapter) {
        this.A2 = baseAdapter;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g
    /* JADX INFO: renamed from: v7, reason: merged with bridge method [inline-methods] */
    public h C4(TextInfo textInfo) {
        this.f73843r1 = textInfo;
        J5();
        return this;
    }

    public SELECT_MODE w5() {
        return this.f73881p2;
    }

    public h w6(com.kongzue.dialogx.interfaces.m<h> mVar) {
        this.f73884s2 = mVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.g, com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        DialogListView dialogListView;
        DialogListView dialogListView2;
        if (S2() == null) {
            return;
        }
        if (this.f73890y2 != null) {
            if (this.A2 == null) {
                this.A2 = new com.kongzue.dialogx.util.l(this.f73878m2, N(), this.B2);
            }
            if (this.f73890y2.getAdapter() == null) {
                this.f73890y2.setAdapter((ListAdapter) this.A2);
            } else {
                ListAdapter adapter = this.f73890y2.getAdapter();
                BaseAdapter baseAdapter = this.A2;
                if (adapter != baseAdapter) {
                    this.f73890y2.setAdapter((ListAdapter) baseAdapter);
                } else {
                    baseAdapter.notifyDataSetChanged();
                }
            }
        }
        if (this.f73883r2 && (dialogListView2 = this.f73890y2) != null) {
            dialogListView2.post(new c());
        }
        com.kongzue.dialogx.util.k kVar = this.f73886u2;
        if (kVar != null && (dialogListView = this.f73890y2) != null) {
            dialogListView.setDivider(kVar.a(N(), i0()));
            this.f73890y2.setDividerHeight(this.f73886u2.f());
        }
        super.x0();
    }

    public CharSequence[] x5() {
        return this.H2;
    }

    public h x6(List<String> list) {
        ArrayList arrayList = new ArrayList();
        this.B2 = arrayList;
        arrayList.addAll(list);
        this.A2 = null;
        J5();
        return this;
    }

    public int y5() {
        return this.f73880o2;
    }

    public h y6(TextInfo textInfo) {
        this.f73891z2 = textInfo;
        return this;
    }

    public int z5() {
        return this.f73880o2;
    }

    public h z6(CharSequence... charSequenceArr) {
        this.B2 = Arrays.asList(charSequenceArr);
        this.A2 = null;
        J5();
        return this;
    }
}
