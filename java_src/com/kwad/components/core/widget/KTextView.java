package com.kwad.components.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.SpannableStringBuilder;
import android.text.style.LineHeightSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.kwad.sdk.R;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class KTextView extends AppCompatTextView {

    public enum Font {
        HYQiHei75S("HYQiHei_75S"),
        HYQiHei80S("HYQiHei_80S"),
        HYQiHei90S("HYQiHei_90S"),
        SIYuan("SIYuan"),
        AvenirNextBold("AvenirNext-Bold"),
        AvenirNextBoldItalic("AvenirNext-Boldltalic"),
        DIN("din");

        public final String name;

        Font(String str) {
            this.name = str;
        }
    }

    public KTextView(Context context) {
        super(context);
        a(null);
    }

    private void a(AttributeSet attributeSet) {
        boolean z10;
        int i10;
        int i11 = R.attr.ksad_use_fake_bold;
        int i12 = R.attr.ksad_font_weight;
        int i13 = R.attr.ksad_font_name;
        int[] iArr = {i11, i12, i13};
        Arrays.sort(iArr);
        int i14 = 400;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, iArr);
            z10 = typedArrayObtainStyledAttributes.getBoolean(Arrays.binarySearch(iArr, i11), false);
            i14 = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, i12), 400);
            i10 = typedArrayObtainStyledAttributes.getInt(Arrays.binarySearch(iArr, i13), 0);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            z10 = false;
            i10 = 0;
        }
        if (i10 > 0) {
            if (i10 == 1) {
                setFontName(Font.HYQiHei75S);
            } else if (i10 == 2) {
                setFontName(Font.HYQiHei80S);
            } else if (i10 == 3) {
                setFontName(Font.HYQiHei90S);
            } else if (i10 == 4) {
                setFontName(Font.SIYuan);
            } else if (i10 == 5) {
                setFontName(Font.AvenirNextBold);
            } else if (i10 == 6) {
                setFontName(Font.AvenirNextBoldItalic);
            } else if (i10 == 7) {
                setFontName(Font.DIN);
            }
        } else if (z10 || i14 >= 500) {
            getPaint().setFakeBoldText(true);
        }
        setIncludeFontPadding(false);
    }

    private SpannableStringBuilder c(CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.setSpan(new LineHeightSpan() { // from class: com.kwad.components.core.widget.KTextView.1
            @Override // android.text.style.LineHeightSpan
            public final void chooseHeight(CharSequence charSequence2, int i10, int i11, int i12, int i13, Paint.FontMetricsInt fontMetricsInt) {
                Rect rect = new Rect();
                KTextView.this.getPaint().getTextBounds(charSequence2.toString(), 0, charSequence2.length(), rect);
                int i14 = fontMetricsInt.descent - fontMetricsInt.ascent;
                int iMax = Math.max((int) KTextView.this.getTextSize(), rect.bottom - rect.top);
                int iAbs = Math.abs(fontMetricsInt.ascent - rect.top);
                int i15 = fontMetricsInt.descent - rect.bottom;
                int i16 = (i14 - iMax) / 2;
                if (i16 < Math.min(iAbs, i15)) {
                    fontMetricsInt.ascent += i16;
                    fontMetricsInt.descent -= i16;
                } else if (iAbs < i15) {
                    int i17 = rect.top;
                    fontMetricsInt.ascent = i17;
                    fontMetricsInt.descent = iMax + i17;
                } else {
                    int i18 = rect.bottom;
                    fontMetricsInt.descent = i18;
                    fontMetricsInt.ascent = i18 - iMax;
                }
            }
        }, 0, charSequence.length(), 33);
        return spannableStringBuilder;
    }

    public void setFontName(Font font) {
        try {
            setTypeface(Typeface.createFromAsset(getContext().getAssets(), "fonts/" + font.name + ".ttf"));
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTraceOnly(th);
        }
    }

    public void setFontWeight(int i10) {
        getPaint().setFakeBoldText(i10 >= 500);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(c(charSequence), bufferType);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public void setTextSize(int i10, float f10) {
        super.setTextSize(i10, f10);
    }

    public void setUseFakeBold(boolean z10) {
        getPaint().setFakeBoldText(z10);
    }

    public KTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public KTextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a(attributeSet);
    }
}
