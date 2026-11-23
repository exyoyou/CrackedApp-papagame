package com.join.mgps.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import com.join.android.app.mgsim.wufun.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public class CollapsedTextView extends AppCompatTextView implements View.OnClickListener {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f64650q = "...";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f64651r = 4;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f64652s = "展开全文";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f64653t = "收起全文";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f64654u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f64655v = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f64657c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f64658d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f64659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f64660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CharSequence f64661g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64662h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f64663i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64664j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64665k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f64666l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f64667m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private b f64668n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private View.OnClickListener f64669o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f64670p;

    @Retention(RetentionPolicy.SOURCE)
    public @interface TipsGravityMode {
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView.BufferType f64671b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CharSequence f64672c;

        a(final TextView.BufferType val$type, final CharSequence val$text) {
            this.f64671b = val$type;
            this.f64672c = val$text;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            CollapsedTextView.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            CollapsedTextView collapsedTextView = CollapsedTextView.this;
            collapsedTextView.f64662h = (collapsedTextView.getWidth() - CollapsedTextView.this.getPaddingLeft()) - CollapsedTextView.this.getPaddingRight();
            CollapsedTextView.this.n(this.f64671b, this.f64672c);
        }
    }

    private class b extends ClickableSpan {
        private b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            if (CollapsedTextView.this.f64667m) {
                CollapsedTextView.this.f64670p = false;
                CollapsedTextView collapsedTextView = CollapsedTextView.this;
                collapsedTextView.f64663i = !collapsedTextView.f64663i;
                CollapsedTextView collapsedTextView2 = CollapsedTextView.this;
                collapsedTextView2.setText(collapsedTextView2.f64661g);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(CollapsedTextView.this.f64665k == 0 ? ds.linkColor : CollapsedTextView.this.f64665k);
            ds.setUnderlineText(CollapsedTextView.this.f64666l);
        }

        /* synthetic */ b(CollapsedTextView collapsedTextView, a aVar) {
            this();
        }
    }

    public CollapsedTextView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n(TextView.BufferType type, CharSequence text) {
        int iMeasureText;
        this.f64661g = com.join.mgps.Util.s.b(text);
        Layout layout = getLayout();
        if (layout == null || !layout.getText().equals(this.f64661g)) {
            super.setText(this.f64661g, type);
            layout = getLayout();
        }
        TextPaint paint = getPaint();
        int lineCount = layout.getLineCount();
        int i10 = this.f64656b;
        if (lineCount <= i10) {
            super.setText(this.f64661g, type);
            return;
        }
        int lineStart = layout.getLineStart(i10 - 1);
        int lineVisibleEnd = layout.getLineVisibleEnd(this.f64656b - 1);
        Drawable drawable = this.f64659e;
        int intrinsicWidth = drawable != null ? drawable.getIntrinsicWidth() : 0;
        if (this.f64664j == 0) {
            iMeasureText = ((int) paint.measureText("... " + this.f64657c)) + intrinsicWidth;
        } else {
            iMeasureText = (int) paint.measureText("... ");
        }
        float f10 = iMeasureText;
        if (layout.getLineWidth(this.f64656b - 1) + f10 > this.f64662h) {
            lineVisibleEnd -= paint.breakText(this.f64661g, lineStart, lineVisibleEnd, false, f10, null) + 1;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append(this.f64661g.subSequence(0, lineVisibleEnd));
        spannableStringBuilder.append(f64650q);
        setSpan(spannableStringBuilder);
        super.setText(spannableStringBuilder, type);
    }

    private void o(TextView.BufferType type) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f64661g);
        setSpan(spannableStringBuilder);
        super.setText(spannableStringBuilder, type);
    }

    private void p(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CollapsedTextView);
            this.f64656b = typedArrayObtainStyledAttributes.getInt(1, 4);
            setExpandedText(typedArrayObtainStyledAttributes.getString(4));
            setCollapsedText(typedArrayObtainStyledAttributes.getString(2));
            setExpandedDrawable(typedArrayObtainStyledAttributes.getDrawable(3));
            setCollapsedDrawable(typedArrayObtainStyledAttributes.getDrawable(0));
            this.f64664j = typedArrayObtainStyledAttributes.getInt(7, 0);
            this.f64665k = typedArrayObtainStyledAttributes.getColor(6, 0);
            this.f64666l = typedArrayObtainStyledAttributes.getBoolean(8, false);
            this.f64667m = typedArrayObtainStyledAttributes.getBoolean(5, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void setSpan(SpannableStringBuilder spannable) {
        if (this.f64664j == 0) {
            spannable.append(" ");
        } else {
            spannable.append("\n");
        }
        if (this.f64663i) {
            return;
        }
        spannable.append((CharSequence) this.f64657c);
        spannable.setSpan(new AbsoluteSizeSpan(com.join.android.app.component.optimizetext.a.n((int) getContext().getResources().getDimension(R.dimen.wdp24)), true), spannable.length() - this.f64657c.length(), spannable.length(), 17);
        Drawable drawable = this.f64659e;
        spannable.setSpan(this.f64668n, (spannable.length() - (this.f64657c.length() + 2)) + 2, spannable.length(), 17);
        if (drawable != null) {
            spannable.append(" ");
            spannable.setSpan(new ImageSpan(drawable, 1), spannable.length() - 1, spannable.length(), 17);
            spannable.append(" ");
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (!this.f64670p) {
            this.f64670p = true;
            return;
        }
        View.OnClickListener onClickListener = this.f64669o;
        if (onClickListener != null) {
            onClickListener.onClick(v10);
        }
    }

    public void setCollapsedDrawable(Drawable collapsedDrawable) {
        if (collapsedDrawable != null) {
            this.f64660f = collapsedDrawable;
            collapsedDrawable.setBounds(0, 0, collapsedDrawable.getIntrinsicWidth(), this.f64660f.getIntrinsicHeight());
        }
    }

    public void setCollapsedDrawableRes(@DrawableRes int resId) {
        setCollapsedDrawable(ContextCompat.getDrawable(getContext(), resId));
    }

    public void setCollapsedLines(@IntRange(from = 0) int collapsedLines) {
        this.f64656b = collapsedLines;
    }

    public void setCollapsedText(String collapsedText) {
        if (TextUtils.isEmpty(collapsedText)) {
            collapsedText = f64653t;
        }
        this.f64658d = collapsedText;
    }

    public void setExpandedDrawable(Drawable expandedDrawable) {
        if (expandedDrawable != null) {
            this.f64659e = expandedDrawable;
            expandedDrawable.setBounds(5, 0, expandedDrawable.getIntrinsicWidth() + 5, this.f64659e.getIntrinsicHeight());
        }
    }

    public void setExpandedDrawableRes(@DrawableRes int resId) {
        setExpandedDrawable(ContextCompat.getDrawable(getContext(), resId));
    }

    public void setExpandedText(String expandedText) {
        if (TextUtils.isEmpty(expandedText)) {
            expandedText = f64652s;
        }
        this.f64657c = expandedText;
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener l10) {
        this.f64669o = l10;
        super.setOnClickListener(this);
    }

    @Override // android.widget.TextView
    public void setText(final CharSequence text, final TextView.BufferType type) {
        if (TextUtils.isEmpty(text) || this.f64656b == 0) {
            super.setText(text, type);
            return;
        }
        if (this.f64663i) {
            this.f64661g = com.join.mgps.Util.s.b(text);
            o(type);
        } else if (this.f64662h != 0) {
            n(type, text);
        } else {
            getViewTreeObserver().addOnGlobalLayoutListener(new a(type, text));
            super.setText(text, type);
        }
    }

    public void setTipsClickable(boolean tipsClickable) {
        this.f64667m = tipsClickable;
    }

    public void setTipsColor(@ColorInt int tipsColor) {
        this.f64665k = tipsColor;
    }

    public void setTipsGravity(int tipsGravity) {
        this.f64664j = tipsGravity;
    }

    public void setTipsUnderline(boolean tipsUnderline) {
        this.f64666l = tipsUnderline;
    }

    public CollapsedTextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CollapsedTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64668n = new b(this, null);
        this.f64670p = true;
        p(context, attrs);
        setMovementMethod(LinkMovementMethod.getInstance());
    }
}
