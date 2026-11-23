package com.join.mgps.customview;

import android.content.Context;
import android.text.Html;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes3.dex */
public class HtmlTextView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f65121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f65122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f65123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f65124e;

    public HtmlTextView(Context paramContext) {
        super(paramContext);
        this.f65121b = true;
        this.f65123d = "...";
        this.f65124e = false;
    }

    public void a() {
        b((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingBottom()) - getPaddingTop());
    }

    public void b(int paramInt1, int paramInt2) {
        CharSequence text = getText();
        if (text == null || text.length() == 0 || paramInt2 <= 0 || paramInt1 <= 0) {
            return;
        }
        TextPaint paint = getPaint();
        StaticLayout staticLayout = new StaticLayout(text, paint, paramInt1, Layout.Alignment.ALIGN_NORMAL, 1.25f, 0.0f, true);
        int lineCount = staticLayout.getLineCount();
        int height = paramInt2 / (staticLayout.getHeight() / lineCount);
        if (lineCount > height && height > 0) {
            int i10 = height - 1;
            int lineStart = staticLayout.getLineStart(i10);
            int lineEnd = staticLayout.getLineEnd(i10);
            float lineWidth = staticLayout.getLineWidth(i10);
            float fMeasureText = paint.measureText(this.f65123d);
            while (paramInt1 < lineWidth + fMeasureText) {
                lineEnd--;
                lineWidth = paint.measureText(text.subSequence(lineStart, lineEnd + 1).toString());
            }
            setText(((Object) text.subSequence(0, lineEnd)) + this.f65123d);
        }
        setMaxLines(height);
        this.f65124e = false;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
        if (paramBoolean || this.f65124e) {
            b(((paramInt3 - paramInt1) - getCompoundPaddingLeft()) - getCompoundPaddingRight(), ((paramInt4 - paramInt2) - getCompoundPaddingBottom()) - getCompoundPaddingTop());
        }
        super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    }

    @Override // android.view.View
    protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
        if (paramInt1 == paramInt3 && paramInt2 == paramInt4) {
            return;
        }
        this.f65124e = true;
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent paramMotionEvent) {
        this.f65122c = false;
        return this.f65121b ? this.f65122c : super.onTouchEvent(paramMotionEvent);
    }

    public void setTextViewHtml(String paramString) {
        setText(new SpannableStringBuilder(Html.fromHtml(paramString)));
    }

    public HtmlTextView(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
        this.f65121b = true;
        this.f65123d = "...";
        this.f65124e = false;
    }

    public HtmlTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
        super(paramContext, paramAttributeSet, paramInt);
        this.f65121b = true;
        this.f65123d = "...";
        this.f65124e = false;
    }
}
