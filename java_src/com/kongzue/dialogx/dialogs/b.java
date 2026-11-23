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
public class b extends com.kongzue.dialogx.dialogs.a {
    public static final int E2 = 100;
    private float A2;
    private int[] C2;
    private CharSequence[] D2;

    /* JADX INFO: renamed from: n2, reason: collision with root package name */
    protected ArrayList<Integer> f73766n2;

    /* JADX INFO: renamed from: p2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.m<b> f73768p2;

    /* JADX INFO: renamed from: r2, reason: collision with root package name */
    protected com.kongzue.dialogx.util.k f73770r2;

    /* JADX INFO: renamed from: s2, reason: collision with root package name */
    protected x<b> f73771s2;

    /* JADX INFO: renamed from: t2, reason: collision with root package name */
    protected u<b> f73772t2;

    /* JADX INFO: renamed from: u2, reason: collision with root package name */
    protected com.kongzue.dialogx.interfaces.n<b> f73773u2;

    /* JADX INFO: renamed from: v2, reason: collision with root package name */
    protected DialogListView f73774v2;

    /* JADX INFO: renamed from: w2, reason: collision with root package name */
    protected BaseAdapter f73775w2;

    /* JADX INFO: renamed from: x2, reason: collision with root package name */
    protected List<CharSequence> f73776x2;

    /* JADX INFO: renamed from: y2, reason: collision with root package name */
    protected List<Integer> f73777y2;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    protected b f73763k2 = this;

    /* JADX INFO: renamed from: l2, reason: collision with root package name */
    protected int f73764l2 = -1;

    /* JADX INFO: renamed from: m2, reason: collision with root package name */
    protected SELECT_MODE f73765m2 = SELECT_MODE.NONE;

    /* JADX INFO: renamed from: o2, reason: collision with root package name */
    protected boolean f73767o2 = false;

    /* JADX INFO: renamed from: q2, reason: collision with root package name */
    protected Map<Integer, Boolean> f73769q2 = new HashMap();

    /* JADX INFO: renamed from: z2, reason: collision with root package name */
    protected boolean f73778z2 = true;
    private long B2 = 0;

    class a extends com.kongzue.dialogx.interfaces.d {
        a() {
        }

        @Override // com.kongzue.dialogx.interfaces.d
        public void a(MotionEvent motionEvent) {
            b bVar = b.this;
            bVar.A2 = bVar.j2().f73728c.getY();
            BaseDialog.n0("#TouchDown: " + b.this.A2);
        }
    }

    /* JADX INFO: renamed from: com.kongzue.dialogx.dialogs.b$b, reason: collision with other inner class name */
    class C0765b implements AdapterView.OnItemClickListener {
        C0765b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            if (b.this.X4(i10)) {
                b.this.Z(view);
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - b.this.B2 > 100) {
                    b.this.B2 = jCurrentTimeMillis;
                    float fAbs = Math.abs(b.this.A2 - b.this.j2().f73728c.getY());
                    BaseDialog.n0("#Click:deltaY= " + fAbs);
                    if (fAbs > b.this.o(15.0f)) {
                        return;
                    }
                    b.this.f73764l2 = i10;
                    BaseDialog.n0("### onMenuItemClickListener=" + b.this.f73771s2);
                    int i11 = e.f73785a[b.this.f73765m2.ordinal()];
                    if (i11 == 1) {
                        b bVar = b.this;
                        x<b> xVar = bVar.f73771s2;
                        if (xVar == null) {
                            bVar.b2();
                            return;
                        } else {
                            if (xVar.a(bVar.f73763k2, bVar.f73776x2.get(i10), i10)) {
                                return;
                            }
                            b.this.b2();
                            return;
                        }
                    }
                    if (i11 == 2) {
                        b bVar2 = b.this;
                        x<b> xVar2 = bVar2.f73771s2;
                        if (!(xVar2 instanceof y)) {
                            if (xVar2 == null) {
                                bVar2.f73775w2.notifyDataSetInvalidated();
                                return;
                            } else {
                                if (xVar2.a(bVar2.f73763k2, bVar2.f73776x2.get(i10), i10)) {
                                    return;
                                }
                                b.this.b2();
                                return;
                            }
                        }
                        y yVar = (y) xVar2;
                        if (!yVar.a(bVar2.f73763k2, bVar2.f73776x2.get(i10), i10)) {
                            b.this.b2();
                            return;
                        }
                        b.this.f73775w2.notifyDataSetInvalidated();
                        b bVar3 = b.this;
                        yVar.c(bVar3.f73763k2, bVar3.f73776x2.get(i10), i10, true);
                        return;
                    }
                    if (i11 != 3) {
                        return;
                    }
                    b bVar4 = b.this;
                    x<b> xVar3 = bVar4.f73771s2;
                    int i12 = 0;
                    if (!(xVar3 instanceof y)) {
                        if (xVar3 != null) {
                            if (xVar3.a(bVar4.f73763k2, bVar4.f73776x2.get(i10), i10)) {
                                return;
                            }
                            b.this.b2();
                            return;
                        }
                        if (bVar4.f73766n2.contains(Integer.valueOf(i10))) {
                            b.this.f73766n2.remove(new Integer(i10));
                        } else {
                            b.this.f73766n2.add(Integer.valueOf(i10));
                        }
                        b.this.f73775w2.notifyDataSetInvalidated();
                        b bVar5 = b.this;
                        bVar5.C2 = new int[bVar5.f73766n2.size()];
                        b bVar6 = b.this;
                        bVar6.D2 = new CharSequence[bVar6.f73766n2.size()];
                        while (i12 < b.this.f73766n2.size()) {
                            b.this.C2[i12] = b.this.f73766n2.get(i12).intValue();
                            CharSequence[] charSequenceArr = b.this.D2;
                            b bVar7 = b.this;
                            charSequenceArr[i12] = bVar7.f73776x2.get(bVar7.C2[i12]);
                            i12++;
                        }
                        return;
                    }
                    y yVar2 = (y) xVar3;
                    if (!yVar2.a(bVar4.f73763k2, bVar4.f73776x2.get(i10), i10)) {
                        b.this.b2();
                        return;
                    }
                    if (b.this.f73766n2.contains(Integer.valueOf(i10))) {
                        b.this.f73766n2.remove(new Integer(i10));
                    } else {
                        b.this.f73766n2.add(Integer.valueOf(i10));
                    }
                    b.this.f73775w2.notifyDataSetInvalidated();
                    b bVar8 = b.this;
                    bVar8.C2 = new int[bVar8.f73766n2.size()];
                    b bVar9 = b.this;
                    bVar9.D2 = new CharSequence[bVar9.f73766n2.size()];
                    while (i12 < b.this.f73766n2.size()) {
                        b.this.C2[i12] = b.this.f73766n2.get(i12).intValue();
                        CharSequence[] charSequenceArr2 = b.this.D2;
                        b bVar10 = b.this;
                        charSequenceArr2[i12] = bVar10.f73776x2.get(bVar10.C2[i12]);
                        i12++;
                    }
                    b bVar11 = b.this;
                    yVar2.b(bVar11.f73763k2, bVar11.D2, b.this.C2);
                }
            }
        }
    }

    class c implements Runnable {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f73782b;

            a(View view) {
                this.f73782b = view;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f73782b.setPressed(true);
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            BaseAdapter baseAdapter = bVar.f73775w2;
            if ((baseAdapter instanceof com.kongzue.dialogx.util.c) && bVar.f73767o2) {
                View childAt = bVar.f73774v2.getChildAt(bVar.R4());
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
            b.this.x0();
        }
    }

    static /* synthetic */ class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f73785a;

        static {
            int[] iArr = new int[SELECT_MODE.values().length];
            f73785a = iArr;
            try {
                iArr[SELECT_MODE.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f73785a[SELECT_MODE.SINGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f73785a[SELECT_MODE.MULTIPLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected b() {
    }

    public static b A7(String[] strArr, x<b> xVar) {
        b bVar = new b();
        bVar.O5(strArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b B7(int i10, int i11, List<String> list) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.R5(list);
        bVar.M0();
        return bVar;
    }

    public static b C7(int i10, int i11, List<String> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.R5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b D7(CharSequence charSequence, CharSequence charSequence2, List<String> list) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.R5(list);
        bVar.M0();
        return bVar;
    }

    public static b E7(CharSequence charSequence, CharSequence charSequence2, List<String> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.R5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b F7(String str, String str2, List<String> list) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.R5(list);
        bVar.M0();
        return bVar;
    }

    public static b G7(String str, String str2, List<String> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.R5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b H7(List<String> list) {
        b bVar = new b();
        bVar.R5(list);
        bVar.M0();
        return bVar;
    }

    public static b I7(List<String> list, x<b> xVar) {
        b bVar = new b();
        bVar.R5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b R6(int i10, int i11, List<CharSequence> list) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b S6(int i10, int i11, List<CharSequence> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.p6(xVar);
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b T6(int i10, int i11, CharSequence[] charSequenceArr) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.N5(charSequenceArr);
        bVar.M0();
        return bVar;
    }

    public static b U6(int i10, int i11, CharSequence[] charSequenceArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.N5(charSequenceArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    private String[] V4(int[] iArr) {
        String[] strArr = new String[iArr == null ? 0 : iArr.length];
        int i10 = 0;
        while (true) {
            if (i10 >= (iArr == null ? 0 : iArr.length)) {
                return strArr;
            }
            strArr[i10] = S(iArr[i10]);
            i10++;
        }
    }

    public static b V6(int i10, int i11, String[] strArr) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.O5(strArr);
        bVar.M0();
        return bVar;
    }

    public static b W6(int i10, int i11, String[] strArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O = bVar.S(i11);
        bVar.O5(strArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b X6(int i10, List<CharSequence> list) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    private boolean Y4(int i10) {
        List<CharSequence> list = this.f73776x2;
        return list == null || list.size() == 0 || this.f73776x2.size() == i10;
    }

    public static b Y6(int i10, List<CharSequence> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.p6(xVar);
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b Z6(int i10, CharSequence[] charSequenceArr) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.N5(charSequenceArr);
        bVar.M0();
        return bVar;
    }

    public static b a7(int i10, CharSequence[] charSequenceArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.N5(charSequenceArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b b7(int i10, String[] strArr) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O5(strArr);
        bVar.M0();
        return bVar;
    }

    public static b c7(int i10, String[] strArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = bVar.S(i10);
        bVar.O5(strArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b d7(CharSequence charSequence, CharSequence charSequence2, List<CharSequence> list) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b e7(CharSequence charSequence, CharSequence charSequence2, List<CharSequence> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.M5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b f7(CharSequence charSequence, CharSequence charSequence2, CharSequence[] charSequenceArr) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.N5(charSequenceArr);
        bVar.M0();
        return bVar;
    }

    public static b g7(CharSequence charSequence, CharSequence charSequence2, CharSequence[] charSequenceArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.N5(charSequenceArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b h7(CharSequence charSequence, CharSequence charSequence2, String[] strArr) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.O5(strArr);
        bVar.M0();
        return bVar;
    }

    public static b i7(CharSequence charSequence, CharSequence charSequence2, String[] strArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O = charSequence2;
        bVar.O5(strArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b j7(CharSequence charSequence, List<CharSequence> list) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b k7(CharSequence charSequence, List<CharSequence> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.M5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b l7(CharSequence charSequence, CharSequence[] charSequenceArr) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.N5(charSequenceArr);
        bVar.M0();
        return bVar;
    }

    public static b m7(CharSequence charSequence, CharSequence[] charSequenceArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.N5(charSequenceArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b n7(CharSequence charSequence, String[] strArr) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O5(strArr);
        bVar.M0();
        return bVar;
    }

    public static b o7(CharSequence charSequence, String[] strArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = charSequence;
        bVar.O5(strArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b p7(String str, String str2, List<CharSequence> list) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b q7(String str, String str2, List<CharSequence> list, x<b> xVar) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.M5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b r7(String str, String str2, CharSequence[] charSequenceArr) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.N5(charSequenceArr);
        bVar.M0();
        return bVar;
    }

    public static b s7(String str, String str2, CharSequence[] charSequenceArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.N5(charSequenceArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b t4() {
        return new b();
    }

    public static b t7(String str, String str2, String[] strArr) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.O5(strArr);
        bVar.M0();
        return bVar;
    }

    public static b u4(DialogXStyle dialogXStyle) {
        return new b().I3(dialogXStyle);
    }

    public static b u7(String str, String str2, String[] strArr, x<b> xVar) {
        b bVar = new b();
        bVar.N = str;
        bVar.O = str2;
        bVar.O5(strArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b v4(r<com.kongzue.dialogx.dialogs.a> rVar) {
        return new b().Z2(rVar);
    }

    public static b v7(List<CharSequence> list) {
        b bVar = new b();
        bVar.M5(list);
        bVar.M0();
        return bVar;
    }

    public static b w7(List<CharSequence> list, x<b> xVar) {
        b bVar = new b();
        bVar.M5(list);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b x7(CharSequence[] charSequenceArr) {
        b bVar = new b();
        bVar.N5(charSequenceArr);
        bVar.M0();
        return bVar;
    }

    public static b y7(CharSequence[] charSequenceArr, x<b> xVar) {
        b bVar = new b();
        bVar.N5(charSequenceArr);
        bVar.p6(xVar);
        bVar.M0();
        return bVar;
    }

    public static b z7(String... strArr) {
        b bVar = new b();
        bVar.O5(strArr);
        bVar.M0();
        return bVar;
    }

    public b A4(CharSequence... charSequenceArr) {
        List<CharSequence> list = this.f73776x2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableMenu(" + charSequenceArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (CharSequence charSequence : charSequenceArr) {
                this.f73769q2.put(Integer.valueOf(this.f73776x2.indexOf(charSequence)), Boolean.FALSE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: A5, reason: merged with bridge method [inline-methods] */
    public b d3(com.kongzue.dialogx.interfaces.g<com.kongzue.dialogx.dialogs.a> gVar) {
        this.f73716l1 = gVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: A6, reason: merged with bridge method [inline-methods] */
    public b F3(int i10) {
        this.C = new int[]{i10, i10, i10, i10};
        x0();
        return this;
    }

    public b B4(String... strArr) {
        List<CharSequence> list = this.f73776x2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .disableMenu(" + strArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (String str : strArr) {
                this.f73769q2.put(Integer.valueOf(this.f73776x2.indexOf(str)), Boolean.FALSE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: B5, reason: merged with bridge method [inline-methods] */
    public b I0(boolean z10) {
        this.f74067n = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: B6, reason: merged with bridge method [inline-methods] */
    public b G3(int i10, int i11, int i12, int i13) {
        this.C = new int[]{i10, i11, i12, i13};
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public boolean C2() {
        return super.C2();
    }

    public b C4(int... iArr) {
        for (int i10 : iArr) {
            this.f73769q2.put(Integer.valueOf(i10), Boolean.TRUE);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: C5, reason: merged with bridge method [inline-methods] */
    public b f3(long j10) {
        this.f74076w = j10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: C6, reason: merged with bridge method [inline-methods] */
    public b H3(boolean z10) {
        this.f73719q1 = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public boolean D2() {
        return this.f73707b1;
    }

    public b D4(CharSequence... charSequenceArr) {
        List<CharSequence> list = this.f73776x2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .enableMenu(" + charSequenceArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (CharSequence charSequence : charSequenceArr) {
                this.f73769q2.put(Integer.valueOf(this.f73776x2.indexOf(charSequence)), Boolean.TRUE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: D5, reason: merged with bridge method [inline-methods] */
    public b g3(long j10) {
        this.f74077x = j10;
        return this;
    }

    public b D6(int i10) {
        this.f73765m2 = SELECT_MODE.SINGLE;
        this.f73764l2 = i10;
        this.f73766n2 = null;
        this.f73775w2 = null;
        c5();
        return this;
    }

    public b E4(String... strArr) {
        List<CharSequence> list = this.f73776x2;
        if (list == null || list.isEmpty()) {
            BaseDialog.r("DialogX: " + n() + " .enableMenu(" + strArr + ")执行失败，请先初始化菜单项 menuList");
        } else {
            for (String str : strArr) {
                this.f73769q2.put(Integer.valueOf(this.f73776x2.indexOf(str)), Boolean.TRUE);
            }
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: E5, reason: merged with bridge method [inline-methods] */
    public b h3(boolean z10) {
        this.f74057d = z10 ? 1 : 0;
        return this;
    }

    public b E6(List<Integer> list) {
        this.f73765m2 = SELECT_MODE.MULTIPLE;
        this.f73764l2 = -1;
        this.f73766n2 = new ArrayList<>(list);
        this.f73775w2 = null;
        c5();
        return this;
    }

    public w<b> F4() {
        return (w) this.V;
    }

    public b F5(List<Integer> list) {
        this.f73777y2 = list;
        x0();
        return this;
    }

    public b F6(int[] iArr) {
        this.f73765m2 = SELECT_MODE.MULTIPLE;
        this.f73764l2 = -1;
        this.f73766n2 = new ArrayList<>();
        if (iArr != null) {
            for (int i10 : iArr) {
                this.f73766n2.add(Integer.valueOf(i10));
            }
        }
        this.f73775w2 = null;
        c5();
        return this;
    }

    public int G4(int i10) {
        List<Integer> list = this.f73777y2;
        if (list == null || i10 < 0 || i10 >= list.size()) {
            return 0;
        }
        return this.f73777y2.get(i10).intValue();
    }

    public b G5(int... iArr) {
        if (this.f73777y2 == null) {
            this.f73777y2 = new ArrayList();
        }
        for (int i10 : iArr) {
            this.f73777y2.add(Integer.valueOf(i10));
        }
        x0();
        return this;
    }

    public b G6(boolean z10) {
        this.f73767o2 = z10;
        x0();
        return this;
    }

    public List<Integer> H4() {
        return this.f73777y2;
    }

    public b H5(com.kongzue.dialogx.util.k kVar) {
        this.f73770r2 = kVar;
        x0();
        return this;
    }

    public b H6() {
        this.f73765m2 = SELECT_MODE.SINGLE;
        this.f73764l2 = -1;
        this.f73766n2 = null;
        this.f73775w2 = null;
        c5();
        return this;
    }

    public com.kongzue.dialogx.interfaces.n<b> I4() {
        return this.f73773u2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: I5, reason: merged with bridge method [inline-methods] */
    public b i3(@ColorInt int i10) {
        this.U = Integer.valueOf(i10);
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: I6, reason: merged with bridge method [inline-methods] */
    public b I3(DialogXStyle dialogXStyle) {
        this.f74072s = dialogXStyle;
        return this;
    }

    public List<CharSequence> J4() {
        return this.f73776x2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: J5, reason: merged with bridge method [inline-methods] */
    public b j3(int i10) {
        this.f74079z = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: J6, reason: merged with bridge method [inline-methods] */
    public b J3(DialogX.THEME theme) {
        this.f74073t = theme;
        return this;
    }

    public BaseAdapter K4() {
        return this.f73775w2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: K5, reason: merged with bridge method [inline-methods] */
    public b k3(int i10) {
        this.f74078y = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a, com.kongzue.dialogx.interfaces.BaseDialog
    /* JADX INFO: renamed from: K6, reason: merged with bridge method [inline-methods] */
    public b L0(int i10) {
        this.f74068o = i10;
        if (C() != null) {
            C().setTranslationZ(i10);
        }
        return this;
    }

    public com.kongzue.dialogx.interfaces.m<b> L4() {
        return this.f73768p2;
    }

    public b L5(com.kongzue.dialogx.interfaces.n<b> nVar) {
        this.f73773u2 = nVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: L6, reason: merged with bridge method [inline-methods] */
    public b L3(int i10) {
        this.N = S(i10);
        c5();
        return this;
    }

    public TextInfo M4() {
        TextInfo textInfo = this.L1;
        return textInfo == null ? DialogX.f73609u : textInfo;
    }

    public b M5(List<CharSequence> list) {
        this.f73776x2 = list;
        this.f73775w2 = null;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: M6, reason: merged with bridge method [inline-methods] */
    public b M3(CharSequence charSequence) {
        this.N = charSequence;
        c5();
        return this;
    }

    public u<b> N4() {
        return this.f73772t2;
    }

    public b N5(CharSequence[] charSequenceArr) {
        this.f73776x2 = Arrays.asList(charSequenceArr);
        this.f73775w2 = null;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: N6, reason: merged with bridge method [inline-methods] */
    public b N3(int i10) {
        this.f73715i1 = getResources().getDrawable(i10);
        x0();
        return this;
    }

    public x<b> O4() {
        return this.f73771s2;
    }

    public b O5(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        this.f73776x2 = arrayList;
        arrayList.addAll(Arrays.asList(strArr));
        this.f73775w2 = null;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: O6, reason: merged with bridge method [inline-methods] */
    public b O3(Bitmap bitmap) {
        this.f73715i1 = new BitmapDrawable(getResources(), bitmap);
        x0();
        return this;
    }

    public SELECT_MODE P4() {
        return this.f73765m2;
    }

    public b P5(BaseAdapter baseAdapter) {
        this.f73775w2 = baseAdapter;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: P6, reason: merged with bridge method [inline-methods] */
    public b P3(Drawable drawable) {
        this.f73715i1 = drawable;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a, com.kongzue.dialogx.interfaces.BaseDialog
    protected void Q0() {
        b2();
    }

    public CharSequence[] Q4() {
        return this.D2;
    }

    public b Q5(com.kongzue.dialogx.interfaces.m<b> mVar) {
        this.f73768p2 = mVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: Q6, reason: merged with bridge method [inline-methods] */
    public b Q3(TextInfo textInfo) {
        this.f73720r1 = textInfo;
        c5();
        return this;
    }

    public int R4() {
        return this.f73764l2;
    }

    public b R5(List<String> list) {
        ArrayList arrayList = new ArrayList();
        this.f73776x2 = arrayList;
        arrayList.addAll(list);
        this.f73775w2 = null;
        c5();
        return this;
    }

    public int S4() {
        return this.f73764l2;
    }

    public b S5(TextInfo textInfo) {
        this.L1 = textInfo;
        return this;
    }

    public int[] T4() {
        return this.C2;
    }

    public b T5(int... iArr) {
        this.f73776x2 = Arrays.asList(V4(iArr));
        this.f73775w2 = null;
        c5();
        return this;
    }

    public ArrayList<Integer> U4() {
        return this.f73766n2;
    }

    public b U5(CharSequence... charSequenceArr) {
        this.f73776x2 = Arrays.asList(charSequenceArr);
        this.f73775w2 = null;
        c5();
        return this;
    }

    public b V5(String... strArr) {
        this.f73776x2 = Arrays.asList(strArr);
        this.f73775w2 = null;
        c5();
        return this;
    }

    public boolean W4() {
        return this.f73778z2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: W5, reason: merged with bridge method [inline-methods] */
    public b l3(int i10) {
        this.O = S(i10);
        c5();
        return this;
    }

    public boolean X4(int i10) {
        Boolean bool = this.f73769q2.get(Integer.valueOf(i10));
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: X5, reason: merged with bridge method [inline-methods] */
    public b m3(CharSequence charSequence) {
        this.O = charSequence;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: Y5, reason: merged with bridge method [inline-methods] */
    public b n3(TextInfo textInfo) {
        this.f73721v1 = textInfo;
        c5();
        return this;
    }

    public boolean Z4() {
        return this.f73767o2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: Z5, reason: merged with bridge method [inline-methods] */
    public b o3(int i10) {
        this.B = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: a5, reason: merged with bridge method [inline-methods] */
    public b F2(com.kongzue.dialogx.interfaces.i<com.kongzue.dialogx.dialogs.a> iVar) {
        this.f74066m = iVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: a6, reason: merged with bridge method [inline-methods] */
    public b p3(int i10) {
        this.A = i10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: b5, reason: merged with bridge method [inline-methods] */
    public b H2(com.kongzue.dialogx.interfaces.i<com.kongzue.dialogx.dialogs.a> iVar) {
        com.kongzue.dialogx.interfaces.i iVar2;
        this.f74065l = iVar;
        if (m0() && (iVar2 = this.f74065l) != null) {
            iVar2.run(this);
        }
        return this;
    }

    public b b6() {
        this.f73765m2 = SELECT_MODE.MULTIPLE;
        this.f73764l2 = -1;
        this.f73766n2 = new ArrayList<>();
        this.f73775w2 = null;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public int c2() {
        return this.f74075v.intValue();
    }

    public void c5() {
        if (j2() == null) {
            return;
        }
        BaseDialog.C0(new d());
    }

    public b c6() {
        this.f73765m2 = SELECT_MODE.NONE;
        this.f73764l2 = -1;
        this.f73766n2 = null;
        this.f73775w2 = null;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public float d2() {
        return this.f73708b2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: d5, reason: merged with bridge method [inline-methods] */
    public b J2() {
        this.M.clean();
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: d6, reason: merged with bridge method [inline-methods] */
    public b q3(int i10) {
        this.Q = S(i10);
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: e5, reason: merged with bridge method [inline-methods] */
    public b K2(int i10, com.kongzue.dialogx.interfaces.i<com.kongzue.dialogx.dialogs.a> iVar) {
        this.f74069p.put(Integer.valueOf(i10), iVar);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: e6, reason: merged with bridge method [inline-methods] */
    public b r3(int i10, t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.Q = S(i10);
        this.W = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a, com.kongzue.dialogx.interfaces.BaseDialog
    public boolean f0() {
        BaseDialog.BOOLEAN r10 = this.f73717p0;
        if (r10 != null) {
            return r10 == BaseDialog.BOOLEAN.TRUE;
        }
        BaseDialog.BOOLEAN r11 = com.kongzue.dialogx.dialogs.a.f73705j2;
        if (r11 != null) {
            return r11 == BaseDialog.BOOLEAN.TRUE;
        }
        return this.f74070q;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public CharSequence f2() {
        return this.P;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: f5, reason: merged with bridge method [inline-methods] */
    public b L2(boolean z10) {
        this.S = z10;
        c5();
        return this;
    }

    public b f6(int i10, w<b> wVar) {
        this.Q = S(i10);
        this.W = wVar;
        return this;
    }

    public b g5(boolean z10) {
        this.f73778z2 = z10;
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: g6, reason: merged with bridge method [inline-methods] */
    public b s3(t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.W = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public TextInfo h2() {
        return this.R1;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: h5, reason: merged with bridge method [inline-methods] */
    public b M2(@ColorInt int i10) {
        this.f74075v = Integer.valueOf(i10);
        c5();
        return this;
    }

    public b h6(w<b> wVar) {
        this.W = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public View i2() {
        r<com.kongzue.dialogx.dialogs.a> rVar = this.M;
        if (rVar == null) {
            return null;
        }
        return rVar.getCustomView();
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: i5, reason: merged with bridge method [inline-methods] */
    public b N2(@ColorRes int i10) {
        this.f74075v = Integer.valueOf(v(i10));
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: i6, reason: merged with bridge method [inline-methods] */
    public b t3(CharSequence charSequence) {
        this.Q = charSequence;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public com.kongzue.dialogx.dialogs.a.e j2() {
        return this.f73711e2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: j5, reason: merged with bridge method [inline-methods] */
    public b O2(boolean z10) {
        this.f73707b1 = z10;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: j6, reason: merged with bridge method [inline-methods] */
    public b u3(CharSequence charSequence, t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.Q = charSequence;
        this.W = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: k5, reason: merged with bridge method [inline-methods] */
    public b P2(float f10) {
        this.f73708b2 = f10;
        return this;
    }

    public b k6(CharSequence charSequence, w<b> wVar) {
        this.Q = charSequence;
        this.W = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public com.kongzue.dialogx.interfaces.g<com.kongzue.dialogx.dialogs.a> l2() {
        return this.f73716l1;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: l5, reason: merged with bridge method [inline-methods] */
    public b R2(int i10) {
        this.P = S(i10);
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: l6, reason: merged with bridge method [inline-methods] */
    public b v3(TextInfo textInfo) {
        this.V1 = textInfo;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public long m2() {
        return this.f74076w;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: m5, reason: merged with bridge method [inline-methods] */
    public b S2(int i10, t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.P = S(i10);
        this.V = tVar;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: m6, reason: merged with bridge method [inline-methods] */
    public b w3(p<com.kongzue.dialogx.dialogs.a> pVar) {
        this.Z = pVar;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a, com.kongzue.dialogx.interfaces.BaseDialog
    public String n() {
        return getClass().getSimpleName() + "(" + Integer.toHexString(hashCode()) + ")";
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public long n2() {
        return this.f74077x;
    }

    public b n5(int i10, w<b> wVar) {
        this.P = S(i10);
        this.V = wVar;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: n6, reason: merged with bridge method [inline-methods] */
    public b x3(q<com.kongzue.dialogx.dialogs.a> qVar) {
        this.Y = qVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public CharSequence o2() {
        return this.O;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: o5, reason: merged with bridge method [inline-methods] */
    public b T2(t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.V = tVar;
        return this;
    }

    public b o6(u<b> uVar) {
        this.f73772t2 = uVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public TextInfo p2() {
        return this.f73721v1;
    }

    public b p5(w<b> wVar) {
        this.V = wVar;
        return this;
    }

    public b p6(x<b> xVar) {
        this.f73771s2 = xVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public CharSequence q2() {
        return this.Q;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: q4, reason: merged with bridge method [inline-methods] */
    public b T1(CharSequence charSequence) {
        this.O = TextUtils.concat(this.O, charSequence);
        x0();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: q5, reason: merged with bridge method [inline-methods] */
    public b U2(CharSequence charSequence) {
        this.P = charSequence;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: q6, reason: merged with bridge method [inline-methods] */
    public b y3(int i10) {
        this.R = S(i10);
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public TextInfo r2() {
        return this.V1;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: r4, reason: merged with bridge method [inline-methods] */
    public b U1(LifecycleOwner lifecycleOwner) {
        super.f(lifecycleOwner);
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: r5, reason: merged with bridge method [inline-methods] */
    public b V2(CharSequence charSequence, t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.P = charSequence;
        this.V = tVar;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: r6, reason: merged with bridge method [inline-methods] */
    public b z3(int i10, t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.R = S(i10);
        this.X = tVar;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kongzue.dialogx.interfaces.BaseDialog
    public void s0() {
        int iC;
        int iD;
        if (j2() != null) {
            j2().f73737l.setVisibility(0);
            if (!C2()) {
                j2().f73729d.i((int) this.f73708b2);
                if (this.f73708b2 != 0.0f) {
                    this.f73711e2.f73733h.b(true);
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
                this.f73774v2 = new DialogListView(j2(), N());
            } else {
                this.f73774v2 = new DialogListView(j2(), N(), R.style.DialogXCompatThemeDark);
            }
            this.f73774v2.setTag("ScrollController");
            this.f73774v2.setOverScrollMode(2);
            this.f73774v2.setDivider(getResources().getDrawable(iC));
            this.f73774v2.setDividerHeight(iD);
            com.kongzue.dialogx.dialogs.a.e eVarJ2 = j2();
            DialogListView dialogListView = this.f73774v2;
            eVarJ2.f73733h = dialogListView;
            dialogListView.d(new a());
            this.f73774v2.setOnItemClickListener(new C0765b());
            if (this.f74072s.f() != null && this.f74072s.f().e(true, 0, 0, false) != 0) {
                this.f73774v2.setSelector(R.color.empty);
            }
            j2().f73737l.addView(this.f73774v2, new ViewGroup.LayoutParams(-1, -2));
            x0();
        }
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public p<com.kongzue.dialogx.dialogs.a> s2() {
        return this.Z;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: s4, reason: merged with bridge method [inline-methods] */
    public b V1() {
        L0(F());
        return this;
    }

    public b s5(CharSequence charSequence, w<b> wVar) {
        this.P = charSequence;
        this.V = wVar;
        c5();
        return this;
    }

    public b s6(int i10, w<b> wVar) {
        this.R = S(i10);
        this.X = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public q<com.kongzue.dialogx.dialogs.a> t2() {
        return this.Y;
    }

    public b t5(w<b> wVar) {
        this.V = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: t6, reason: merged with bridge method [inline-methods] */
    public b A3(t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.X = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public CharSequence u2() {
        return this.R;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: u5, reason: merged with bridge method [inline-methods] */
    public b X2(TextInfo textInfo) {
        this.R1 = textInfo;
        c5();
        return this;
    }

    public b u6(w<b> wVar) {
        this.X = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public TextInfo v2() {
        return this.f73706a2;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: v5, reason: merged with bridge method [inline-methods] */
    public b Y2(boolean z10) {
        this.f73717p0 = z10 ? BaseDialog.BOOLEAN.TRUE : BaseDialog.BOOLEAN.FALSE;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: v6, reason: merged with bridge method [inline-methods] */
    public b B3(CharSequence charSequence) {
        this.R = charSequence;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public float w2() {
        return this.f73712f1;
    }

    protected void w4() {
        b2();
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: w5, reason: merged with bridge method [inline-methods] */
    public b Z2(r<com.kongzue.dialogx.dialogs.a> rVar) {
        this.M = rVar;
        c5();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    @Deprecated
    /* JADX INFO: renamed from: w6, reason: merged with bridge method [inline-methods] */
    public b C3(CharSequence charSequence, t<com.kongzue.dialogx.dialogs.a> tVar) {
        this.R = charSequence;
        this.X = tVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a, com.kongzue.dialogx.interfaces.BaseDialog
    public void x0() {
        DialogListView dialogListView;
        if (j2() == null) {
            return;
        }
        if (this.f73774v2 != null) {
            if (this.f73775w2 == null) {
                this.f73775w2 = new com.kongzue.dialogx.util.c(this.f73763k2, N(), this.f73776x2);
            }
            if (this.f73774v2.getAdapter() == null) {
                this.f73774v2.setAdapter((ListAdapter) this.f73775w2);
            } else {
                ListAdapter adapter = this.f73774v2.getAdapter();
                BaseAdapter baseAdapter = this.f73775w2;
                if (adapter != baseAdapter) {
                    this.f73774v2.setAdapter((ListAdapter) baseAdapter);
                } else {
                    baseAdapter.notifyDataSetChanged();
                }
            }
        }
        if (this.f73767o2 && (dialogListView = this.f73774v2) != null) {
            dialogListView.post(new c());
        }
        com.kongzue.dialogx.util.k kVar = this.f73770r2;
        if (kVar != null) {
            this.f73774v2.setDivider(kVar.a(N(), i0()));
            this.f73774v2.setDividerHeight(this.f73770r2.f());
        }
        super.x0();
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public CharSequence x2() {
        return this.N;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: x4, reason: merged with bridge method [inline-methods] */
    public b Z1(int i10) {
        this.f74069p.remove(Integer.valueOf(i10));
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: x5, reason: merged with bridge method [inline-methods] */
    public b F0(String str, Object obj) {
        if (this.f74064k == null) {
            this.f74064k = new HashMap();
        }
        this.f74064k.put(str, obj);
        return this;
    }

    public b x6(CharSequence charSequence, w<b> wVar) {
        this.R = charSequence;
        this.X = wVar;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: y4, reason: merged with bridge method [inline-methods] */
    public b a2() {
        this.f74069p.clear();
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: y5, reason: merged with bridge method [inline-methods] */
    public b b3(DialogX.IMPL_MODE impl_mode) {
        this.f74060g = impl_mode;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: y6, reason: merged with bridge method [inline-methods] */
    public b D3(TextInfo textInfo) {
        this.f73706a2 = textInfo;
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    public TextInfo z2() {
        return this.f73720r1;
    }

    public b z4(int... iArr) {
        for (int i10 : iArr) {
            this.f73769q2.put(Integer.valueOf(i10), Boolean.FALSE);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: z5, reason: merged with bridge method [inline-methods] */
    public b c3(com.kongzue.dialogx.interfaces.f<com.kongzue.dialogx.dialogs.a> fVar) {
        this.f73709c2 = fVar;
        if (this.f74071r) {
            fVar.b(this.f73763k2);
        }
        return this;
    }

    @Override // com.kongzue.dialogx.dialogs.a
    /* JADX INFO: renamed from: z6, reason: merged with bridge method [inline-methods] */
    public b E3(float f10) {
        this.f73712f1 = f10;
        x0();
        return this;
    }
}
