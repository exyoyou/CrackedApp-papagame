package h4;

import android.graphics.Bitmap;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public final class a {
    private a() {
    }

    public static void a(Bitmap bitmap) {
        i.i(bitmap);
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int iMin = Math.min(width, height) / 2;
        int i10 = width / 2;
        int i11 = height / 2;
        if (iMin == 0) {
            return;
        }
        i.d(Boolean.valueOf(iMin >= 1));
        i.d(Boolean.valueOf(width > 0 && ((float) width) <= 2048.0f));
        i.d(Boolean.valueOf(height > 0 && ((float) height) <= 2048.0f));
        i.d(Boolean.valueOf(i10 > 0 && i10 < width));
        i.d(Boolean.valueOf(i11 > 0 && i11 < height));
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i12 = iMin - 1;
        i.d(Boolean.valueOf(i10 - i12 >= 0 && i11 - i12 >= 0 && i10 + i12 < width && i11 + i12 < height));
        int i13 = (-iMin) * 2;
        int[] iArr2 = new int[width];
        int i14 = i13 + 1;
        int i15 = 0;
        int i16 = 1;
        int i17 = 1;
        while (i12 >= i15) {
            int i18 = i10 + i12;
            int i19 = i10 - i12;
            int i20 = i10 + i15;
            iMin = iMin;
            int i21 = i10 - i15;
            int i22 = i11 + i12;
            int i23 = i11 - i12;
            int i24 = i10;
            int i25 = i11 + i15;
            int i26 = i11 - i15;
            i.d(Boolean.valueOf(i12 >= 0 && i20 < width && i21 >= 0 && i25 < height && i26 >= 0));
            int i27 = i25 * width;
            int i28 = height;
            int i29 = width * i26;
            int i30 = i11;
            int i31 = width * i22;
            i13 = i13;
            int i32 = width * i23;
            int i33 = i16;
            System.arraycopy(iArr2, 0, iArr, i27, i19);
            System.arraycopy(iArr2, 0, iArr, i29, i19);
            System.arraycopy(iArr2, 0, iArr, i31, i21);
            System.arraycopy(iArr2, 0, iArr, i32, i21);
            int i34 = width - i18;
            System.arraycopy(iArr2, 0, iArr, i27 + i18, i34);
            System.arraycopy(iArr2, 0, iArr, i29 + i18, i34);
            int i35 = width - i20;
            System.arraycopy(iArr2, 0, iArr, i31 + i20, i35);
            System.arraycopy(iArr2, 0, iArr, i32 + i20, i35);
            if (i14 <= 0) {
                i15++;
                i17 += 2;
                i14 += i17;
            }
            if (i14 > 0) {
                i12--;
                i16 = i33 + 2;
                i14 += i16 + i13;
            } else {
                i16 = i33;
            }
            i10 = i24;
            i11 = i30;
            height = i28;
        }
        int i36 = height;
        int i37 = iMin;
        int i38 = i11;
        for (int i39 = i38 - i37; i39 >= 0; i39--) {
            System.arraycopy(iArr2, 0, iArr, i39 * width, width);
        }
        for (int i40 = i38 + i37; i40 < i36; i40++) {
            System.arraycopy(iArr2, 0, iArr, i40 * width, width);
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, i36);
    }
}
