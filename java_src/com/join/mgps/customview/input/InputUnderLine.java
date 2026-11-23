package com.join.mgps.customview.input;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.widget.EditText;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class InputUnderLine extends EditText {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f66609b;

    public InputUnderLine(Context context, AttributeSet attrs) {
        super(context, attrs);
        Paint paint = new Paint();
        this.f66609b = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f66609b.setColor(context.getResources().getColor(R.color.app_gray_color));
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawLine(0.0f, getHeight() - 1, getWidth() - 1, getHeight() - 1, this.f66609b);
    }
}
