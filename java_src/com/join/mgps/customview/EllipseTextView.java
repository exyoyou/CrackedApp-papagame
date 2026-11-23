package com.join.mgps.customview;

import android.content.Context;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes3.dex */
public class EllipseTextView extends AppCompatTextView {

    class a implements TextUtils.EllipsizeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int[] f64831a;

        a(final int[] val$range) {
            this.f64831a = val$range;
        }

        @Override // android.text.TextUtils.EllipsizeCallback
        public void ellipsized(int start, int end) {
            this.f64831a[0] = start;
        }
    }

    public EllipseTextView(Context context) {
        super(context);
    }

    private static int e(TextPaint tp, CharSequence cs, int line, int lineWidth) {
        StaticLayout staticLayout = new StaticLayout(cs, tp, lineWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() <= line) {
            return -1;
        }
        int lineStart = staticLayout.getLineStart(line - 1);
        int[] iArr = {0};
        TextUtils.ellipsize(cs.subSequence(lineStart, cs.length()), tp, lineWidth, TextUtils.TruncateAt.END, false, new a(iArr));
        return lineStart + iArr[0];
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        e(getPaint(), getText(), 2, View.MeasureSpec.getSize(widthMeasureSpec));
    }

    public EllipseTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public EllipseTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
