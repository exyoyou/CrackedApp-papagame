package cn.carbs.android.expandabletextview.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes7.dex */
public class ExpandableTextView extends TextView {
    public static final int A = 1;
    private static final String B = "android.view.View";
    private static final String C = "android.view.View$ListenerInfo";
    private static final String D = "..";
    private static final String E = " ";
    private static final String F = " ";
    private static final int G = 2;
    private static final int H = -13330213;
    private static final int I = -1618884;
    private static final int J = 1436129689;
    private static final int K = 1436129689;
    private static final boolean L = true;
    private static final boolean M = true;
    private static final boolean N = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f682z = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f683b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f684c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f685d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f686e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f687f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f688g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f689h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f690i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f691j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f692k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f693l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f694m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f695n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f696o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private e f697p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView.BufferType f698q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextPaint f699r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Layout f700s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f701t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f702u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f703v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CharSequence f704w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private b f705x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private d f706y;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ExpandableTextView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandableTextView expandableTextView = ExpandableTextView.this;
            expandableTextView.r(expandableTextView.getNewTextByConfig(), ExpandableTextView.this.f698q);
        }
    }

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ExpandableTextView.this.s();
        }

        /* synthetic */ b(ExpandableTextView expandableTextView, a aVar) {
            this();
        }
    }

    public class c extends LinkMovementMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f709a;

        public c() {
        }

        private e a(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            int x10 = (int) motionEvent.getX();
            int y10 = (int) motionEvent.getY();
            int totalPaddingLeft = x10 - textView.getTotalPaddingLeft();
            int totalPaddingTop = y10 - textView.getTotalPaddingTop();
            int scrollX = totalPaddingLeft + textView.getScrollX();
            int scrollY = totalPaddingTop + textView.getScrollY();
            Layout layout = textView.getLayout();
            int offsetForHorizontal = layout.getOffsetForHorizontal(layout.getLineForVertical(scrollY), scrollX);
            e[] eVarArr = (e[]) spannable.getSpans(offsetForHorizontal, offsetForHorizontal, e.class);
            if (eVarArr.length > 0) {
                return eVarArr[0];
            }
            return null;
        }

        @Override // android.text.method.LinkMovementMethod, android.text.method.ScrollingMovementMethod, android.text.method.BaseMovementMethod, android.text.method.MovementMethod
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                e eVarA = a(textView, spannable, motionEvent);
                this.f709a = eVarA;
                if (eVarA != null) {
                    eVarA.a(true);
                    Selection.setSelection(spannable, spannable.getSpanStart(this.f709a), spannable.getSpanEnd(this.f709a));
                }
            } else if (motionEvent.getAction() == 2) {
                e eVarA2 = a(textView, spannable, motionEvent);
                e eVar = this.f709a;
                if (eVar != null && eVarA2 != eVar) {
                    eVar.a(false);
                    this.f709a = null;
                    Selection.removeSelection(spannable);
                }
            } else {
                e eVar2 = this.f709a;
                if (eVar2 != null) {
                    eVar2.a(false);
                    super.onTouchEvent(textView, spannable, motionEvent);
                }
                this.f709a = null;
                Selection.removeSelection(spannable);
            }
            return true;
        }
    }

    public interface d {
        void a(ExpandableTextView expandableTextView);

        void b(ExpandableTextView expandableTextView);
    }

    private class e extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f711b;

        private e() {
        }

        public void a(boolean z10) {
            this.f711b = z10;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            if (ExpandableTextView.this.hasOnClickListeners()) {
                ExpandableTextView expandableTextView = ExpandableTextView.this;
                if (expandableTextView.l(expandableTextView) instanceof b) {
                    return;
                }
            }
            ExpandableTextView.this.s();
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint textPaint) {
            super.updateDrawState(textPaint);
            int i10 = ExpandableTextView.this.f696o;
            if (i10 == 0) {
                textPaint.setColor(ExpandableTextView.this.f692k);
                textPaint.bgColor = this.f711b ? ExpandableTextView.this.f694m : 0;
            } else if (i10 == 1) {
                textPaint.setColor(ExpandableTextView.this.f693l);
                textPaint.bgColor = this.f711b ? ExpandableTextView.this.f695n : 0;
            }
            textPaint.setUnderlineText(false);
        }

        /* synthetic */ e(ExpandableTextView expandableTextView, a aVar) {
            this();
        }
    }

    public ExpandableTextView(Context context) {
        super(context);
        this.f686e = " ";
        this.f687f = " ";
        this.f688g = true;
        this.f689h = true;
        this.f690i = true;
        this.f691j = 2;
        this.f692k = H;
        this.f693l = I;
        this.f694m = 1436129689;
        this.f695n = 1436129689;
        this.f696o = 0;
        this.f698q = TextView.BufferType.NORMAL;
        this.f701t = -1;
        this.f702u = 0;
        this.f703v = 0;
        o();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getNewTextByConfig() {
        String str;
        int i10;
        int i11;
        int i12;
        if (TextUtils.isEmpty(this.f704w)) {
            return this.f704w;
        }
        Layout layout = getLayout();
        this.f700s = layout;
        if (layout != null) {
            this.f702u = layout.getWidth();
        }
        if (this.f702u <= 0) {
            if (getWidth() == 0) {
                int i13 = this.f703v;
                if (i13 == 0) {
                    return this.f704w;
                }
                this.f702u = (i13 - getPaddingLeft()) - getPaddingRight();
            } else {
                this.f702u = (getWidth() - getPaddingLeft()) - getPaddingRight();
            }
        }
        this.f699r = getPaint();
        this.f701t = -1;
        int i14 = this.f696o;
        if (i14 != 0) {
            if (i14 != 1) {
                return this.f704w;
            }
            if (!this.f690i) {
                return this.f704w;
            }
            DynamicLayout dynamicLayout = new DynamicLayout(this.f704w, this.f699r, this.f702u, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.f700s = dynamicLayout;
            int lineCount = dynamicLayout.getLineCount();
            this.f701t = lineCount;
            if (lineCount <= this.f691j) {
                return this.f704w;
            }
            SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(this.f704w).append((CharSequence) this.f687f).append((CharSequence) this.f685d);
            spannableStringBuilderAppend.setSpan(this.f697p, spannableStringBuilderAppend.length() - k(this.f685d), spannableStringBuilderAppend.length(), 33);
            return spannableStringBuilderAppend;
        }
        DynamicLayout dynamicLayout2 = new DynamicLayout(this.f704w, this.f699r, this.f702u, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.f700s = dynamicLayout2;
        int lineCount2 = dynamicLayout2.getLineCount();
        this.f701t = lineCount2;
        if (lineCount2 <= this.f691j) {
            return this.f704w;
        }
        int lineEnd = getValidLayout().getLineEnd(this.f691j - 1);
        int lineStart = getValidLayout().getLineStart(this.f691j - 1);
        int iK = (lineEnd - k(this.f683b)) - (this.f689h ? k(this.f684c) + k(this.f686e) : 0);
        if (iK > lineStart) {
            lineEnd = iK;
        }
        int width = getValidLayout().getWidth() - ((int) (((double) this.f699r.measureText(this.f704w.subSequence(lineStart, lineEnd).toString())) + 0.5d));
        TextPaint textPaint = this.f699r;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(j(this.f683b));
        if (this.f689h) {
            str = j(this.f684c) + j(this.f686e);
        } else {
            str = "";
        }
        sb2.append(str);
        float fMeasureText = textPaint.measureText(sb2.toString());
        float f10 = width;
        if (f10 > fMeasureText) {
            int iMeasureText = 0;
            int i15 = 0;
            while (f10 > iMeasureText + fMeasureText && (i12 = lineEnd + (i15 = i15 + 1)) <= this.f704w.length()) {
                iMeasureText = (int) (((double) this.f699r.measureText(this.f704w.subSequence(lineEnd, i12).toString())) + 0.5d);
            }
            i10 = lineEnd + (i15 - 1);
        } else {
            int iMeasureText2 = 0;
            int i16 = 0;
            while (iMeasureText2 + width < fMeasureText && (i11 = lineEnd + (i16 = i16 - 1)) > lineStart) {
                iMeasureText2 = (int) (((double) this.f699r.measureText(this.f704w.subSequence(i11, lineEnd).toString())) + 0.5d);
            }
            i10 = lineEnd + i16;
        }
        SpannableStringBuilder spannableStringBuilderAppend2 = new SpannableStringBuilder(q(this.f704w.subSequence(0, i10))).append((CharSequence) this.f683b);
        if (this.f689h) {
            spannableStringBuilderAppend2.append((CharSequence) (j(this.f686e) + j(this.f684c)));
            spannableStringBuilderAppend2.setSpan(this.f697p, spannableStringBuilderAppend2.length() - k(this.f684c), spannableStringBuilderAppend2.length(), 33);
        }
        return spannableStringBuilderAppend2;
    }

    private Layout getValidLayout() {
        Layout layout = this.f700s;
        return layout != null ? layout : getLayout();
    }

    private String j(String str) {
        return str == null ? "" : str;
    }

    private int k(String str) {
        if (str == null) {
            return 0;
        }
        return str.length();
    }

    private View.OnClickListener m(View view) {
        try {
            Field declaredField = View.class.getDeclaredField("mOnClickListener");
            declaredField.setAccessible(true);
            return (View.OnClickListener) declaredField.get(view);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private View.OnClickListener n(View view) {
        Object obj;
        try {
            Field declaredField = View.class.getDeclaredField("mListenerInfo");
            if (declaredField != null) {
                declaredField.setAccessible(true);
                obj = declaredField.get(view);
            } else {
                obj = null;
            }
            Field declaredField2 = Class.forName(C).getDeclaredField("mOnClickListener");
            if (declaredField2 == null || obj == null) {
                return null;
            }
            declaredField2.setAccessible(true);
            return (View.OnClickListener) declaredField2.get(obj);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void o() {
        a aVar = null;
        this.f697p = new e(this, aVar);
        setMovementMethod(new c());
        if (TextUtils.isEmpty(this.f683b)) {
            this.f683b = D;
        }
        if (TextUtils.isEmpty(this.f684c)) {
            this.f684c = getResources().getString(R.string.to_expand_hint);
        }
        if (TextUtils.isEmpty(this.f685d)) {
            this.f685d = getResources().getString(R.string.to_shrink_hint);
        }
        if (this.f688g) {
            b bVar = new b(this, aVar);
            this.f705x = bVar;
            setOnClickListener(bVar);
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void p(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes;
        if (attributeSet == null || (typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ExpandableTextView)) == null) {
            return;
        }
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == R.styleable.ExpandableTextView_etv_MaxLinesOnShrink) {
                this.f691j = typedArrayObtainStyledAttributes.getInteger(index, 2);
            } else if (index == R.styleable.ExpandableTextView_etv_EllipsisHint) {
                this.f683b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHint) {
                this.f684c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHint) {
                this.f685d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_EnableToggle) {
                this.f688g = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHintShow) {
                this.f689h = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHintShow) {
                this.f690i = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHintColor) {
                this.f692k = typedArrayObtainStyledAttributes.getInteger(index, H);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHintColor) {
                this.f693l = typedArrayObtainStyledAttributes.getInteger(index, I);
            } else if (index == R.styleable.ExpandableTextView_etv_ToExpandHintColorBgPressed) {
                this.f694m = typedArrayObtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == R.styleable.ExpandableTextView_etv_ToShrinkHintColorBgPressed) {
                this.f695n = typedArrayObtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == R.styleable.ExpandableTextView_etv_InitState) {
                this.f696o = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == R.styleable.ExpandableTextView_etv_GapToExpandHint) {
                this.f686e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == R.styleable.ExpandableTextView_etv_GapToShrinkHint) {
                this.f687f = typedArrayObtainStyledAttributes.getString(index);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private String q(CharSequence charSequence) {
        String string = charSequence.toString();
        while (string.endsWith("\n")) {
            string = string.substring(0, string.length() - 1);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        int i10 = this.f696o;
        if (i10 == 0) {
            this.f696o = 1;
            d dVar = this.f706y;
            if (dVar != null) {
                dVar.b(this);
            }
        } else if (i10 == 1) {
            this.f696o = 0;
            d dVar2 = this.f706y;
            if (dVar2 != null) {
                dVar2.a(this);
            }
        }
        r(getNewTextByConfig(), this.f698q);
    }

    public int getExpandState() {
        return this.f696o;
    }

    public View.OnClickListener l(View view) {
        return n(view);
    }

    public void setExpandListener(d dVar) {
        this.f706y = dVar;
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.f704w = charSequence;
        this.f698q = bufferType;
        r(getNewTextByConfig(), bufferType);
    }

    public void t(CharSequence charSequence, int i10) {
        this.f703v = i10;
        setText(charSequence);
    }

    public void u(CharSequence charSequence, int i10, int i11) {
        this.f703v = i10;
        this.f696o = i11;
        setText(charSequence);
    }

    public void v(CharSequence charSequence, TextView.BufferType bufferType, int i10) {
        this.f703v = i10;
        setText(charSequence, bufferType);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f686e = " ";
        this.f687f = " ";
        this.f688g = true;
        this.f689h = true;
        this.f690i = true;
        this.f691j = 2;
        this.f692k = H;
        this.f693l = I;
        this.f694m = 1436129689;
        this.f695n = 1436129689;
        this.f696o = 0;
        this.f698q = TextView.BufferType.NORMAL;
        this.f701t = -1;
        this.f702u = 0;
        this.f703v = 0;
        p(context, attributeSet);
        o();
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f686e = " ";
        this.f687f = " ";
        this.f688g = true;
        this.f689h = true;
        this.f690i = true;
        this.f691j = 2;
        this.f692k = H;
        this.f693l = I;
        this.f694m = 1436129689;
        this.f695n = 1436129689;
        this.f696o = 0;
        this.f698q = TextView.BufferType.NORMAL;
        this.f701t = -1;
        this.f702u = 0;
        this.f703v = 0;
        p(context, attributeSet);
        o();
    }
}
