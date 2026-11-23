package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* JADX INFO: loaded from: classes3.dex */
public class MultilineTextView extends AppCompatTextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f65311b;

    public MultilineTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65311b = false;
    }

    private void e() {
        setLines(getMeasuredHeight() / getLineHeight());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (!this.f65311b) {
            e();
            this.f65311b = true;
        }
        super.onDraw(canvas);
    }
}
