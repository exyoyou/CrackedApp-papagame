package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import java.lang.reflect.Array;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class MyTextView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f65352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f65354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f65356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65357g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f65358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f65359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int[][] f65360j;

    public MyTextView(Context context) {
        super(context);
        c();
    }

    public static int a(Context context, float dip) {
        return (int) ((dip * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void b(String content) {
        int i10;
        float f10;
        int i11;
        this.f65352b = content;
        int length = content.length();
        this.f65359i = length;
        this.f65360j = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length, 2);
        int i12 = 1;
        int i13 = 0;
        for (int i14 = 0; i14 < this.f65359i; i14++) {
            String strValueOf = String.valueOf(content.charAt(i14));
            Rect rect = new Rect();
            this.f65354d.getTextBounds(strValueOf, 0, 1, rect);
            int iWidth = rect.width();
            if (strValueOf.equals("《") || strValueOf.equals("（")) {
                iWidth += this.f65358h * 2;
            }
            float f11 = iWidth;
            int i15 = (int) (i13 + f11);
            if (i15 > this.f65353c) {
                i12++;
                i10 = 0;
            } else {
                i10 = (int) (i15 - f11);
            }
            int[] iArr = this.f65360j[i14];
            iArr[0] = i10;
            iArr[1] = (this.f65357g * i12) + (this.f65356f * (i12 - 1));
            if (d(strValueOf)) {
                f10 = i10;
                i11 = this.f65358h;
            } else {
                f10 = i10;
                i11 = this.f65355e;
            }
            i13 = (int) (f10 + f11 + i11);
        }
        setHeight((this.f65357g + this.f65356f) * i12);
    }

    public void c() {
        Paint paint = new Paint();
        this.f65354d = paint;
        paint.setColor(Color.parseColor("#787878"));
        this.f65354d.setTypeface(Typeface.DEFAULT);
        this.f65354d.setTextSize(a(getContext(), 14.0f));
        Paint.FontMetrics fontMetrics = this.f65354d.getFontMetrics();
        this.f65357g = (int) (Math.ceil(fontMetrics.descent - fontMetrics.top) + 2.0d);
        this.f65355e = a(getContext(), 4.0f);
        this.f65356f = a(getContext(), 10.0f);
        this.f65358h = a(getContext(), 2.0f);
    }

    public boolean d(String str) {
        return Pattern.compile("^[A-Za-z0-9_]+$").matcher(str).matches();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (TextUtils.isEmpty(this.f65352b)) {
            return;
        }
        for (int i10 = 0; i10 < this.f65359i; i10++) {
            String strValueOf = String.valueOf(this.f65352b.charAt(i10));
            int[] iArr = this.f65360j[i10];
            canvas.drawText(strValueOf, iArr[0], iArr[1], this.f65354d);
        }
    }

    public void setText(String str) {
        this.f65353c = getWidth();
        b(str);
        invalidate();
    }

    public MyTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        c();
    }

    public MyTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        c();
    }
}
