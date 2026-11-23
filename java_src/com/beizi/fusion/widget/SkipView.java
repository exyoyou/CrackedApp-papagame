package com.beizi.fusion.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Color;
import android.graphics.RectF;
import android.graphics.drawable.GradientDrawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.beizi.fusion.tool.au;

/* JADX INFO: loaded from: classes6.dex */
public class SkipView extends TextView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f10865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextPaint f10866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f10867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f10868d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f10869e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private RectF f10870f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RectF f10871g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f10872h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f10873i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private SparseIntArray f10874j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final a f10875k;

    private interface a {
        int a(int i10, RectF rectF);
    }

    public SkipView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10868d = 20.0f;
        this.f10870f = new RectF();
        this.f10873i = true;
        this.f10875k = new a() { // from class: com.beizi.fusion.widget.SkipView.1
            @Override // com.beizi.fusion.widget.SkipView.a
            @TargetApi(16)
            public int a(int i11, RectF rectF) {
                SkipView.this.f10866b.setTextSize(i11);
                String string = SkipView.this.getText().toString();
                SkipView.this.f10870f.bottom = SkipView.this.f10866b.getFontSpacing();
                SkipView.this.f10870f.right = SkipView.this.f10866b.measureText(string);
                SkipView.this.f10870f.offsetTo(0.0f, 0.0f);
                return rectF.contains(SkipView.this.f10870f) ? -1 : 1;
            }
        };
        init(context);
    }

    public void init(Context context) {
        setGravity(17);
        setLines(1);
        setMaxLines(1);
        setTextColor(-1);
        a(context, 0);
        TextPaint textPaint = new TextPaint();
        this.f10866b = textPaint;
        textPaint.set(getPaint());
        this.f10867c = getTextSize();
        this.f10871g = new RectF();
        this.f10874j = new SparseIntArray();
        this.f10869e = true;
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 53));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        SparseIntArray sparseIntArray = this.f10874j;
        if (sparseIntArray != null) {
            sparseIntArray.clear();
        }
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        a();
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        super.onTextChanged(charSequence, i10, i11, i12);
        a();
    }

    public void setData(int i10, int i11) {
        a(getContext(), i10);
        this.f10865a = i11;
    }

    private void a(Context context, int i10) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#80000000"));
        if (i10 == 1) {
            gradientDrawable.setStroke(1, Color.parseColor("#C0C0C0"));
        }
        gradientDrawable.setCornerRadius(au.a(context, 45.0f));
        setBackgroundDrawable(gradientDrawable);
    }

    private static int b(int i10, int i11, a aVar, RectF rectF) {
        int i12 = i11 - 1;
        int i13 = i10;
        while (i10 <= i12) {
            i13 = (i10 + i12) >>> 1;
            int iA = aVar.a(i13, rectF);
            if (iA >= 0) {
                if (iA <= 0) {
                    break;
                }
                i13--;
                i12 = i13;
            } else {
                int i14 = i13 + 1;
                i13 = i10;
                i10 = i14;
            }
        }
        return i13;
    }

    public SkipView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10868d = 20.0f;
        this.f10870f = new RectF();
        this.f10873i = true;
        this.f10875k = new a() { // from class: com.beizi.fusion.widget.SkipView.1
            @Override // com.beizi.fusion.widget.SkipView.a
            @TargetApi(16)
            public int a(int i11, RectF rectF) {
                SkipView.this.f10866b.setTextSize(i11);
                String string = SkipView.this.getText().toString();
                SkipView.this.f10870f.bottom = SkipView.this.f10866b.getFontSpacing();
                SkipView.this.f10870f.right = SkipView.this.f10866b.measureText(string);
                SkipView.this.f10870f.offsetTo(0.0f, 0.0f);
                return rectF.contains(SkipView.this.f10870f) ? -1 : 1;
            }
        };
        init(context);
    }

    private void a() {
        a(getText().toString());
    }

    private void a(String str) {
        if (this.f10869e) {
            int i10 = (int) this.f10868d;
            int measuredHeight = ((getMeasuredHeight() - getCompoundPaddingBottom()) - getCompoundPaddingTop()) - this.f10865a;
            int measuredWidth = ((getMeasuredWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight()) - au.a(getContext(), 8.0f);
            this.f10872h = measuredWidth;
            RectF rectF = this.f10871g;
            rectF.right = measuredWidth;
            rectF.bottom = measuredHeight;
            super.setTextSize(0, a(i10, (int) this.f10867c, this.f10875k, rectF));
        }
    }

    public SkipView(Context context) {
        super(context);
        this.f10868d = 20.0f;
        this.f10870f = new RectF();
        this.f10873i = true;
        this.f10875k = new a() { // from class: com.beizi.fusion.widget.SkipView.1
            @Override // com.beizi.fusion.widget.SkipView.a
            @TargetApi(16)
            public int a(int i11, RectF rectF) {
                SkipView.this.f10866b.setTextSize(i11);
                String string = SkipView.this.getText().toString();
                SkipView.this.f10870f.bottom = SkipView.this.f10866b.getFontSpacing();
                SkipView.this.f10870f.right = SkipView.this.f10866b.measureText(string);
                SkipView.this.f10870f.offsetTo(0.0f, 0.0f);
                return rectF.contains(SkipView.this.f10870f) ? -1 : 1;
            }
        };
        init(context);
    }

    private int a(int i10, int i11, a aVar, RectF rectF) {
        if (!this.f10873i) {
            return b(i10, i11, aVar, rectF);
        }
        String string = getText().toString();
        int length = string == null ? 0 : string.length();
        int i12 = this.f10874j.get(length);
        if (i12 != 0) {
            return i12;
        }
        int iB = b(i10, i11, aVar, rectF);
        this.f10874j.put(length, iB);
        return iB;
    }
}
