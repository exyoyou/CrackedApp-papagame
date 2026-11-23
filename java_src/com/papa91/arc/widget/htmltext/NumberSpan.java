package com.papa91.arc.widget.htmltext;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.BulletSpan;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes2.dex */
public class NumberSpan extends BulletSpan {
    public static final int STANDARD_GAP_WIDTH = 10;
    private final String mNumber;
    private final int mNumberGapWidth;

    public NumberSpan(int i10, int i11) {
        this.mNumberGapWidth = i10;
        this.mNumber = Integer.toString(i11).concat(o0.f49827a);
    }

    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public void drawLeadingMargin(@NonNull Canvas canvas, @NonNull Paint paint, int i10, int i11, int i12, int i13, int i14, @NonNull CharSequence charSequence, int i15, int i16, boolean z10, @Nullable Layout layout) {
        if (((Spanned) charSequence).getSpanStart(this) == i15) {
            Paint.Style style = paint.getStyle();
            paint.setStyle(Paint.Style.FILL);
            if (canvas.isHardwareAccelerated()) {
                canvas.save();
                canvas.drawText(this.mNumber, i10 + i11, i13, paint);
                canvas.restore();
            } else {
                canvas.drawText(this.mNumber, i10 + i11, (i12 + i14) / 2.0f, paint);
            }
            paint.setStyle(style);
        }
    }

    @Override // android.text.style.BulletSpan, android.text.style.LeadingMarginSpan
    public int getLeadingMargin(boolean z10) {
        return this.mNumberGapWidth + 20;
    }

    @Override // android.text.style.BulletSpan, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        super.writeToParcel(parcel, i10);
        parcel.writeInt(this.mNumberGapWidth);
        parcel.writeString(this.mNumber);
    }

    public NumberSpan(int i10) {
        this(10, i10);
    }

    public NumberSpan(Parcel parcel) {
        super(parcel);
        this.mNumberGapWidth = parcel.readInt();
        this.mNumber = parcel.readString();
    }
}
