package com.join.mgps.customview;

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
import androidx.appcompat.widget.AppCompatTextView;
import com.join.android.app.mgsim.wufun.R;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
public class GamelistExpandableTextView extends AppCompatTextView {
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
    public static final int f65023z = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f65024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f65025c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f65026d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f65027e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f65028f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f65029g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f65030h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f65031i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f65032j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f65033k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f65034l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f65035m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f65036n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f65037o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private e f65038p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private TextView.BufferType f65039q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private TextPaint f65040r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Layout f65041s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f65042t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f65043u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f65044v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CharSequence f65045w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private b f65046x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private d f65047y;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            GamelistExpandableTextView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            GamelistExpandableTextView gamelistExpandableTextView = GamelistExpandableTextView.this;
            gamelistExpandableTextView.v(gamelistExpandableTextView.getNewTextByConfig(), GamelistExpandableTextView.this.f65039q);
        }
    }

    private class b implements View.OnClickListener {
        private b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GamelistExpandableTextView.this.w();
        }

        /* synthetic */ b(GamelistExpandableTextView gamelistExpandableTextView, a aVar) {
            this();
        }
    }

    public class c extends LinkMovementMethod {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private e f65050a;

        public c() {
        }

        private e a(TextView textView, Spannable spannable, MotionEvent event) {
            int x10 = (int) event.getX();
            int y10 = (int) event.getY();
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
        public boolean onTouchEvent(TextView textView, Spannable spannable, MotionEvent event) {
            if (event.getAction() == 0) {
                e eVarA = a(textView, spannable, event);
                this.f65050a = eVarA;
                if (eVarA != null) {
                    eVarA.a(true);
                    Selection.setSelection(spannable, spannable.getSpanStart(this.f65050a), spannable.getSpanEnd(this.f65050a));
                }
            } else if (event.getAction() == 2) {
                e eVarA2 = a(textView, spannable, event);
                e eVar = this.f65050a;
                if (eVar != null && eVarA2 != eVar) {
                    eVar.a(false);
                    this.f65050a = null;
                    Selection.removeSelection(spannable);
                }
            } else {
                e eVar2 = this.f65050a;
                if (eVar2 != null) {
                    eVar2.a(false);
                    super.onTouchEvent(textView, spannable, event);
                }
                this.f65050a = null;
                Selection.removeSelection(spannable);
            }
            return true;
        }
    }

    public interface d {
        void a(GamelistExpandableTextView view);

        void b(GamelistExpandableTextView view);
    }

    private class e extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f65052b;

        private e() {
        }

        public void a(boolean isSelected) {
            this.f65052b = isSelected;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            super.updateDrawState(ds);
            int i10 = GamelistExpandableTextView.this.f65037o;
            if (i10 == 0) {
                ds.setColor(GamelistExpandableTextView.this.f65033k);
                ds.bgColor = this.f65052b ? GamelistExpandableTextView.this.f65035m : 0;
            } else if (i10 == 1) {
                ds.setColor(GamelistExpandableTextView.this.f65034l);
                ds.bgColor = this.f65052b ? GamelistExpandableTextView.this.f65036n : 0;
            }
            ds.setUnderlineText(false);
        }

        /* synthetic */ e(GamelistExpandableTextView gamelistExpandableTextView, a aVar) {
            this();
        }
    }

    public GamelistExpandableTextView(Context context) {
        super(context);
        this.f65027e = " ";
        this.f65028f = " ";
        this.f65029g = true;
        this.f65030h = true;
        this.f65031i = true;
        this.f65032j = 2;
        this.f65033k = H;
        this.f65034l = I;
        this.f65035m = 1436129689;
        this.f65036n = 1436129689;
        this.f65037o = 0;
        this.f65039q = TextView.BufferType.NORMAL;
        this.f65042t = -1;
        this.f65043u = 0;
        this.f65044v = 0;
        s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getNewTextByConfig() {
        String str;
        int i10;
        int i11;
        int i12;
        if (TextUtils.isEmpty(this.f65045w)) {
            return this.f65045w;
        }
        Layout layout = getLayout();
        this.f65041s = layout;
        if (layout != null) {
            this.f65043u = layout.getWidth();
        }
        if (this.f65043u <= 0) {
            if (getWidth() == 0) {
                int i13 = this.f65044v;
                if (i13 == 0) {
                    return this.f65045w;
                }
                this.f65043u = (i13 - getPaddingLeft()) - getPaddingRight();
            } else {
                this.f65043u = (getWidth() - getPaddingLeft()) - getPaddingRight();
            }
        }
        this.f65040r = getPaint();
        this.f65042t = -1;
        int i14 = this.f65037o;
        if (i14 != 0) {
            if (i14 != 1) {
                return this.f65045w;
            }
            if (!this.f65031i) {
                return this.f65045w;
            }
            DynamicLayout dynamicLayout = new DynamicLayout(this.f65045w, this.f65040r, this.f65043u, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
            this.f65041s = dynamicLayout;
            int lineCount = dynamicLayout.getLineCount();
            this.f65042t = lineCount;
            if (lineCount <= this.f65032j) {
                return this.f65045w;
            }
            SpannableStringBuilder spannableStringBuilderAppend = new SpannableStringBuilder(this.f65045w).append((CharSequence) this.f65028f).append((CharSequence) this.f65026d);
            spannableStringBuilderAppend.setSpan(this.f65038p, spannableStringBuilderAppend.length() - o(this.f65026d), spannableStringBuilderAppend.length(), 33);
            return spannableStringBuilderAppend;
        }
        DynamicLayout dynamicLayout2 = new DynamicLayout(this.f65045w, this.f65040r, this.f65043u, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        this.f65041s = dynamicLayout2;
        int lineCount2 = dynamicLayout2.getLineCount();
        this.f65042t = lineCount2;
        if (lineCount2 <= this.f65032j) {
            return this.f65045w;
        }
        int lineEnd = getValidLayout().getLineEnd(this.f65032j - 1);
        int lineStart = getValidLayout().getLineStart(this.f65032j - 1);
        int iO = (lineEnd - o(this.f65024b)) - (this.f65030h ? o(this.f65025c) + o(this.f65027e) : 0);
        if (iO > lineStart) {
            lineEnd = iO;
        }
        int width = getValidLayout().getWidth() - ((int) (((double) this.f65040r.measureText(this.f65045w.subSequence(lineStart, lineEnd).toString())) + 0.5d));
        TextPaint textPaint = this.f65040r;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(n(this.f65024b));
        if (this.f65030h) {
            str = n(this.f65025c) + n(this.f65027e);
        } else {
            str = "";
        }
        sb2.append(str);
        float fMeasureText = textPaint.measureText(sb2.toString());
        float f10 = width;
        if (f10 > fMeasureText) {
            int iMeasureText = 0;
            int i15 = 0;
            while (f10 > iMeasureText + fMeasureText && (i12 = lineEnd + (i15 = i15 + 1)) <= this.f65045w.length()) {
                iMeasureText = (int) (((double) this.f65040r.measureText(this.f65045w.subSequence(lineEnd, i12).toString())) + 0.5d);
            }
            i10 = lineEnd + (i15 - 1);
        } else {
            int iMeasureText2 = 0;
            int i16 = 0;
            while (iMeasureText2 + width < fMeasureText && (i11 = lineEnd + (i16 = i16 - 1)) > lineStart) {
                iMeasureText2 = (int) (((double) this.f65040r.measureText(this.f65045w.subSequence(i11, lineEnd).toString())) + 0.5d);
            }
            i10 = lineEnd + i16;
        }
        SpannableStringBuilder spannableStringBuilderAppend2 = new SpannableStringBuilder(u(this.f65045w.subSequence(0, i10))).append((CharSequence) this.f65024b);
        if (this.f65030h) {
            spannableStringBuilderAppend2.append((CharSequence) (n(this.f65027e) + n(this.f65025c)));
            spannableStringBuilderAppend2.setSpan(this.f65038p, spannableStringBuilderAppend2.length() - o(this.f65025c), spannableStringBuilderAppend2.length(), 33);
        }
        return spannableStringBuilderAppend2;
    }

    private Layout getValidLayout() {
        Layout layout = this.f65041s;
        return layout != null ? layout : getLayout();
    }

    private String n(String string) {
        return string == null ? "" : string;
    }

    private int o(String string) {
        if (string == null) {
            return 0;
        }
        return string.length();
    }

    private View.OnClickListener q(View view) {
        try {
            Field declaredField = View.class.getDeclaredField("mOnClickListener");
            declaredField.setAccessible(true);
            return (View.OnClickListener) declaredField.get(view);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private View.OnClickListener r(View view) {
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

    private void s() {
        a aVar = null;
        this.f65038p = new e(this, aVar);
        setMovementMethod(new c());
        if (TextUtils.isEmpty(this.f65024b)) {
            this.f65024b = D;
        }
        if (TextUtils.isEmpty(this.f65025c)) {
            this.f65025c = getResources().getString(R.string.to_expand_hint);
        }
        if (TextUtils.isEmpty(this.f65026d)) {
            this.f65026d = getResources().getString(R.string.to_shrink_hint);
        }
        if (this.f65029g) {
            b bVar = new b(this, aVar);
            this.f65046x = bVar;
            setOnClickListener(bVar);
        }
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void t(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes;
        if (attrs == null || (typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, cn.carbs.android.expandabletextview.library.R.styleable.ExpandableTextView)) == null) {
            return;
        }
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i10 = 0; i10 < indexCount; i10++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i10);
            if (index == 5) {
                this.f65032j = typedArrayObtainStyledAttributes.getInteger(index, 2);
            } else if (index == 0) {
                this.f65024b = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == 6) {
                this.f65025c = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == 10) {
                this.f65026d = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == 1) {
                this.f65029g = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == 9) {
                this.f65030h = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == 13) {
                this.f65031i = typedArrayObtainStyledAttributes.getBoolean(index, true);
            } else if (index == 7) {
                this.f65033k = typedArrayObtainStyledAttributes.getInteger(index, H);
            } else if (index == 11) {
                this.f65034l = typedArrayObtainStyledAttributes.getInteger(index, I);
            } else if (index == 8) {
                this.f65035m = typedArrayObtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == 12) {
                this.f65036n = typedArrayObtainStyledAttributes.getInteger(index, 1436129689);
            } else if (index == 4) {
                this.f65037o = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == 2) {
                this.f65027e = typedArrayObtainStyledAttributes.getString(index);
            } else if (index == 3) {
                this.f65028f = typedArrayObtainStyledAttributes.getString(index);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private String u(CharSequence text) {
        String string = text.toString();
        while (string.endsWith("\n")) {
            string = string.substring(0, string.length() - 1);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(CharSequence text, TextView.BufferType type) {
        super.setText(text, type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        int i10 = this.f65037o;
        if (i10 == 0) {
            this.f65037o = 1;
            d dVar = this.f65047y;
            if (dVar != null) {
                dVar.a(this);
            }
        } else if (i10 == 1) {
            this.f65037o = 0;
            d dVar2 = this.f65047y;
            if (dVar2 != null) {
                dVar2.b(this);
            }
        }
        v(getNewTextByConfig(), this.f65039q);
    }

    public int getExpandState() {
        return this.f65037o;
    }

    public View.OnClickListener p(View view) {
        return r(view);
    }

    public void setExpandListener(d listener) {
        this.f65047y = listener;
    }

    public void setMaxLinesOnShrink(int maxLinesOnShrink) {
        if (maxLinesOnShrink > 2) {
            this.f65032j = maxLinesOnShrink;
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence text, TextView.BufferType type) {
        this.f65045w = text;
        this.f65039q = type;
        v(getNewTextByConfig(), type);
    }

    public void x(CharSequence text, int futureTextViewWidth) {
        this.f65044v = futureTextViewWidth;
        setText(text);
    }

    public void y(CharSequence text, int futureTextViewWidth, int expandState) {
        this.f65044v = futureTextViewWidth;
        this.f65037o = expandState;
        setText(text);
    }

    public void z(CharSequence text, TextView.BufferType type, int futureTextViewWidth) {
        this.f65044v = futureTextViewWidth;
        setText(text, type);
    }

    public GamelistExpandableTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65027e = " ";
        this.f65028f = " ";
        this.f65029g = true;
        this.f65030h = true;
        this.f65031i = true;
        this.f65032j = 2;
        this.f65033k = H;
        this.f65034l = I;
        this.f65035m = 1436129689;
        this.f65036n = 1436129689;
        this.f65037o = 0;
        this.f65039q = TextView.BufferType.NORMAL;
        this.f65042t = -1;
        this.f65043u = 0;
        this.f65044v = 0;
        t(context, attrs);
        s();
    }

    public GamelistExpandableTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65027e = " ";
        this.f65028f = " ";
        this.f65029g = true;
        this.f65030h = true;
        this.f65031i = true;
        this.f65032j = 2;
        this.f65033k = H;
        this.f65034l = I;
        this.f65035m = 1436129689;
        this.f65036n = 1436129689;
        this.f65037o = 0;
        this.f65039q = TextView.BufferType.NORMAL;
        this.f65042t = -1;
        this.f65043u = 0;
        this.f65044v = 0;
        t(context, attrs);
        s();
    }
}
