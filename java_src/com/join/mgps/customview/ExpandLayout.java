package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class ExpandLayout extends RelativeLayout implements View.OnClickListener {
    private static final String D = "ExpandLayout";
    public static final int E = 0;
    public static final int F = 1;
    public static final int G = 2;
    private boolean A;
    private b B;
    private boolean C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f64861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f64862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f64863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f64864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ImageView f64865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f64866g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f64868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64869j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64870k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f64871l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f64872m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f64873n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f64874o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64875p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f64876q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f64877r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f64878s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f64879t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f64880u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f64881v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f64882w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f64883x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f64884y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f64885z;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            ExpandLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            ExpandLayout expandLayout = ExpandLayout.this;
            expandLayout.f64867h = expandLayout.getMeasuredWidth();
            String unused = ExpandLayout.D;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("onGlobalLayout,控件宽度 = ");
            sb2.append(ExpandLayout.this.f64867h);
            ExpandLayout expandLayout2 = ExpandLayout.this;
            expandLayout2.n(expandLayout2.f64867h);
        }
    }

    public interface b {
        void a();

        void b();

        void c();
    }

    public ExpandLayout(Context context) {
        this(context, null);
    }

    private int f(Context context, float dipValue) {
        return (int) ((dipValue * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    private float getExpandLayoutReservedWidth() {
        float fMeasureText;
        int i10 = this.f64881v;
        int i11 = (i10 == 0 || i10 == 1) ? this.f64882w : 0;
        if (i10 == 0 || i10 == 2) {
            TextPaint paint = this.f64866g.getPaint();
            String str = this.f64871l;
            if (str == null) {
                str = "";
            }
            fMeasureText = paint.measureText(str);
        } else {
            fMeasureText = 0.0f;
        }
        return i11 + fMeasureText;
    }

    private void h(StaticLayout staticLayout, int lineWidth) {
        if (staticLayout == null) {
            return;
        }
        TextPaint paint = this.f64863d.getPaint();
        int lineStart = staticLayout.getLineStart(this.f64873n - 1);
        int lineEnd = staticLayout.getLineEnd(this.f64873n - 1);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("startPos = ");
        sb2.append(lineStart);
        StringBuilder sb3 = new StringBuilder();
        sb3.append("endPos = ");
        sb3.append(lineEnd);
        if (lineStart < 0) {
            lineStart = 0;
        }
        if (lineEnd < 0) {
            lineEnd = 0;
        }
        if (lineEnd > this.f64877r.length()) {
            lineEnd = this.f64877r.length();
        }
        if (lineStart > lineEnd) {
            lineStart = lineEnd;
        }
        String strSubstring = this.f64877r.substring(lineStart, lineEnd);
        float fMeasureText = strSubstring != null ? paint.measureText(strSubstring) : 0.0f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append("第");
        sb4.append(this.f64873n);
        sb4.append("行 = ");
        sb4.append(strSubstring);
        StringBuilder sb5 = new StringBuilder();
        sb5.append("第");
        sb5.append(this.f64873n);
        sb5.append("行 文本长度 = ");
        sb5.append(fMeasureText);
        float fMeasureText2 = this.f64883x + paint.measureText("...") + getExpandLayoutReservedWidth();
        StringBuilder sb6 = new StringBuilder();
        sb6.append("需要预留的长度 = ");
        sb6.append(fMeasureText2);
        float f10 = fMeasureText2 + fMeasureText;
        float f11 = lineWidth;
        if (f10 > f11) {
            float f12 = f10 - f11;
            if (fMeasureText != 0.0f) {
                lineEnd -= (int) (((f12 / fMeasureText) * 1.0f) * (lineEnd - lineStart));
            }
        }
        StringBuilder sb7 = new StringBuilder();
        sb7.append("correctEndPos = ");
        sb7.append(lineEnd);
        this.f64878s = o(this.f64877r.substring(0, lineEnd)) + "...";
    }

    private void i(StaticLayout staticLayout, int lineWidth) {
        int lineCount;
        if (staticLayout != null && (lineCount = staticLayout.getLineCount()) >= 1) {
            int i10 = lineCount - 1;
            int lineStart = staticLayout.getLineStart(i10);
            int lineEnd = staticLayout.getLineEnd(i10) - 2;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("最后一行 startPos = ");
            sb2.append(lineStart);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("最后一行 endPos = ");
            sb3.append(lineEnd);
            if (lineStart < 0) {
                lineStart = 0;
            }
            if (lineEnd < 0) {
                lineEnd = 0;
            }
            if (lineEnd > this.f64877r.length()) {
                lineEnd = this.f64877r.length();
            }
            if (lineStart > lineEnd) {
                lineStart = lineEnd;
            }
            String strSubstring = this.f64877r.substring(lineStart, lineEnd);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("最后一行 内容 = ");
            sb4.append(strSubstring);
            float fMeasureText = strSubstring != null ? this.f64863d.getPaint().measureText(strSubstring) : 0.0f;
            StringBuilder sb5 = new StringBuilder();
            sb5.append("最后一行 文本长度 = ");
            sb5.append(fMeasureText);
            if (fMeasureText + getExpandLayoutReservedWidth() > lineWidth) {
                this.f64877r += "\n";
            }
        }
    }

    private void j(int lineWidth) {
        StaticLayout staticLayout = new StaticLayout(this.f64877r, this.f64863d.getPaint(), lineWidth, Layout.Alignment.ALIGN_NORMAL, this.f64885z, this.f64884y, false);
        int lineCount = staticLayout.getLineCount();
        try {
            if (lineCount > this.f64873n) {
                if (this.A) {
                    this.f64862c.setOnClickListener(this);
                } else {
                    this.f64865f.setOnClickListener(this);
                    this.f64866g.setOnClickListener(this);
                }
                this.f64864e.setVisibility(0);
                h(staticLayout, lineWidth);
                i(staticLayout, lineWidth);
                if (this.f64876q) {
                    g();
                } else {
                    e();
                }
            } else if (this.C) {
                this.f64865f.setOnClickListener(this);
                this.f64866g.setOnClickListener(this);
                int i10 = this.f64873n;
                this.f64873n = lineCount;
                h(staticLayout, lineWidth);
                this.f64873n = i10;
                this.f64863d.setMaxLines(Integer.MAX_VALUE);
                e();
            } else {
                this.f64878s = this.f64877r;
                this.f64864e.setVisibility(8);
                this.f64863d.setMaxLines(Integer.MAX_VALUE);
                this.f64863d.setText(this.f64877r);
            }
        } finally {
            if (this.C) {
                this.f64863d.setVisibility(0);
                if (this.f64864e.getVisibility() != 8) {
                    this.f64864e.setVisibility(0);
                }
            }
        }
    }

    private void k(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ExpandLayout);
        if (typedArrayObtainStyledAttributes != null) {
            this.f64873n = typedArrayObtainStyledAttributes.getInt(12, 2);
            this.f64869j = typedArrayObtainStyledAttributes.getResourceId(4, 0);
            this.f64870k = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            this.f64871l = typedArrayObtainStyledAttributes.getString(6);
            this.f64872m = typedArrayObtainStyledAttributes.getString(1);
            this.f64874o = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, p(context, 14.0f));
            this.f64879t = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f64875p = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, p(context, 14.0f));
            this.f64880u = typedArrayObtainStyledAttributes.getColor(8, 0);
            this.f64881v = typedArrayObtainStyledAttributes.getInt(7, 0);
            this.f64882w = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, f(context, 15.0f));
            this.f64883x = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, f(context, 20.0f));
            this.f64884y = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, 0);
            this.f64885z = typedArrayObtainStyledAttributes.getFloat(11, 1.0f);
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.f64873n < 1) {
            this.f64873n = 1;
        }
    }

    private void l() {
        this.f64862c = View.inflate(this.f64861b, R.layout.layout_expand, this);
        this.f64863d = (TextView) findViewById(R.id.expand_content_tv);
        this.f64864e = (LinearLayout) findViewById(R.id.expand_ll);
        this.f64865f = (ImageView) findViewById(R.id.expand_iv);
        this.f64866g = (TextView) findViewById(R.id.expand_tv);
        this.f64868i = (TextView) findViewById(R.id.expand_helper_tv);
        this.f64866g.setText(this.f64871l);
        this.f64863d.setTextSize(0, this.f64874o);
        this.f64868i.setTextSize(0, this.f64874o);
        this.f64866g.setTextSize(0, this.f64875p);
        this.f64863d.setLineSpacing(this.f64884y, this.f64885z);
        this.f64868i.setLineSpacing(this.f64884y, this.f64885z);
        this.f64866g.setLineSpacing(this.f64884y, this.f64885z);
        setExpandMoreIcon(this.f64869j);
        setContentTextColor(this.f64879t);
        setExpandTextColor(this.f64880u);
        r(this.f64881v);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(int lineWidth) {
        if (TextUtils.isEmpty(this.f64877r)) {
            return;
        }
        j(lineWidth);
    }

    private String o(CharSequence text) {
        if (text == null) {
            return null;
        }
        String string = text.toString();
        return string.endsWith("\n") ? string.substring(0, string.length() - 1) : string;
    }

    private void q() {
        if (this.f64876q) {
            this.f64866g.setText(this.f64872m);
        } else {
            this.f64866g.setText(this.f64871l);
        }
    }

    private void r(int expandStyle) {
        if (expandStyle == 1) {
            this.f64865f.setVisibility(0);
            this.f64866g.setVisibility(8);
        } else if (expandStyle != 2) {
            this.f64865f.setVisibility(0);
            this.f64866g.setVisibility(0);
        } else {
            this.f64865f.setVisibility(8);
            this.f64866g.setVisibility(0);
        }
    }

    public void e() {
        setIsExpand(false);
        this.f64863d.setMaxLines(Integer.MAX_VALUE);
        this.f64863d.setText(this.f64878s);
        this.f64866g.setText(this.f64871l);
        int i10 = this.f64869j;
        if (i10 != 0) {
            this.f64865f.setImageResource(i10);
        }
    }

    public void g() {
        setIsExpand(true);
        this.f64863d.setMaxLines(Integer.MAX_VALUE);
        this.f64863d.setText(this.f64877r);
        this.f64866g.setText(this.f64872m);
        int i10 = this.f64870k;
        if (i10 != 0) {
            this.f64865f.setImageResource(i10);
        }
    }

    public int getLineCount() {
        TextView textView = this.f64863d;
        if (textView == null) {
            return 0;
        }
        return textView.getLineCount();
    }

    public boolean m() {
        return this.f64876q;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (!this.A) {
            if (v10 == this.f64866g || v10 == this.f64865f) {
                this.B.b();
                return;
            }
            return;
        }
        if (this.f64876q) {
            e();
            b bVar = this.B;
            if (bVar != null) {
                bVar.a();
                return;
            }
            return;
        }
        g();
        b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.c();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onMeasure,measureWidth = ");
        sb2.append(getMeasuredWidth());
        if (this.f64867h > 0 || getMeasuredWidth() <= 0) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        this.f64867h = measuredWidth;
        n(measuredWidth);
    }

    public int p(Context context, float spValue) {
        return (int) ((spValue * context.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setAlwaysShowMore(boolean alwaysShowMore) {
        this.C = alwaysShowMore;
    }

    public void setCollapseLessIcon(int resId) {
        if (resId != 0) {
            this.f64870k = resId;
            if (this.f64876q) {
                this.f64865f.setImageResource(resId);
            }
        }
    }

    public void setCollapseLessText(String text) {
        this.f64872m = text;
        q();
    }

    public void setContent(String contentStr) {
        setContent(contentStr, null);
    }

    public void setContentTextColor(int colorId) {
        if (colorId != 0) {
            this.f64879t = colorId;
            this.f64863d.setTextColor(colorId);
        }
    }

    public void setExpandMoreIcon(int resId) {
        if (resId != 0) {
            this.f64869j = resId;
            if (this.f64876q) {
                return;
            }
            this.f64865f.setImageResource(resId);
        }
    }

    public void setExpandMoreText(String text) {
        this.f64871l = text;
        q();
    }

    public void setExpandStyle(int style) {
        this.f64881v = style;
        r(style);
    }

    public void setExpandTextColor(int colorId) {
        if (colorId != 0) {
            this.f64880u = colorId;
            this.f64866g.setTextColor(colorId);
        }
    }

    public void setExpandable(boolean mExpandable) {
        this.A = mExpandable;
    }

    public void setIsExpand(boolean isExpand) {
        this.f64876q = isExpand;
    }

    public void setShrinkLines(int shrinkLines) {
        this.f64873n = shrinkLines;
    }

    public ExpandLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public void setContent(String contentStr, final b onExpandStateChangeListener) {
        if (TextUtils.isEmpty(contentStr) || this.f64862c == null) {
            return;
        }
        this.f64877r = contentStr;
        this.B = onExpandStateChangeListener;
        if (this.C) {
            this.f64863d.setVisibility(4);
            this.f64864e.setVisibility(4);
        } else {
            this.f64863d.setVisibility(0);
            this.f64864e.setVisibility(8);
        }
        this.f64863d.setMaxLines(this.f64873n);
        this.f64863d.setText(this.f64877r);
        if (this.f64867h <= 0) {
            getViewTreeObserver().addOnGlobalLayoutListener(new a());
        } else {
            n(this.f64867h);
        }
    }

    public ExpandLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64873n = 2;
        this.f64876q = false;
        this.f64881v = 0;
        this.f64882w = 15;
        this.f64883x = 20;
        this.f64884y = 0.0f;
        this.f64885z = 1.0f;
        this.A = true;
        this.f64861b = context;
        k(context, attrs);
        l();
    }
}
