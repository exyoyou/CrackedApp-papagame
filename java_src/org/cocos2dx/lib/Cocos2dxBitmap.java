package org.cocos2dx.lib;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxBitmap {
    private static final int HORIZONTALALIGN_CENTER = 3;
    private static final int HORIZONTALALIGN_LEFT = 1;
    private static final int HORIZONTALALIGN_RIGHT = 2;
    private static final int VERTICALALIGN_BOTTOM = 2;
    private static final int VERTICALALIGN_CENTER = 3;
    private static final int VERTICALALIGN_TOP = 1;
    private static Context sContext;

    private static class TextProperty {
        private final int mHeightPerLine;
        private final String[] mLines;
        private final int mMaxWidth;
        private final int mTotalHeight;

        TextProperty(int i10, int i11, String[] strArr) {
            this.mMaxWidth = i10;
            this.mHeightPerLine = i11;
            this.mTotalHeight = i11 * strArr.length;
            this.mLines = strArr;
        }
    }

    private static TextProperty computeTextProperty(String str, int i10, int i11, Paint paint) {
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int iCeil = (int) Math.ceil(fontMetricsInt.bottom - fontMetricsInt.top);
        String[] strArrSplitString = splitString(str, i10, i11, paint);
        if (i10 == 0) {
            int i12 = 0;
            for (String str2 : strArrSplitString) {
                int iCeil2 = (int) Math.ceil(paint.measureText(str2, 0, str2.length()));
                if (iCeil2 > i12) {
                    i12 = iCeil2;
                }
            }
            i10 = i12;
        }
        return new TextProperty(i10, iCeil, strArrSplitString);
    }

    private static int computeX(String str, int i10, int i11) {
        if (i11 == 2) {
            return i10;
        }
        if (i11 != 3) {
            return 0;
        }
        return i10 / 2;
    }

    private static int computeY(Paint.FontMetricsInt fontMetricsInt, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15 = fontMetricsInt.top;
        int i16 = -i15;
        if (i10 <= i11) {
            return i16;
        }
        if (i12 == 1) {
            return -i15;
        }
        if (i12 == 2) {
            i13 = -i15;
            i14 = i10 - i11;
        } else {
            if (i12 != 3) {
                return i16;
            }
            i13 = -i15;
            i14 = (i10 - i11) / 2;
        }
        return i13 + i14;
    }

    public static void createTextBitmap(String str, String str2, int i10, int i11, int i12, int i13) {
        createTextBitmapShadowStroke(str.getBytes(), str2, i10, 255, 255, 255, 255, i11, i12, i13, false, 0.0f, 0.0f, 0.0f, 0.0f, false, 255, 255, 255, 255, 0.0f);
    }

    public static boolean createTextBitmapShadowStroke(byte[] bArr, String str, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z10, float f10, float f11, float f12, float f13, boolean z11, int i18, int i19, int i20, int i21, float f14) {
        int i22 = i15 & 15;
        int i23 = (i15 >> 4) & 15;
        String strRefactorString = refactorString((bArr == null || bArr.length == 0) ? "" : new String(bArr));
        Paint paintNewPaint = newPaint(str, i10, i22);
        int i24 = 0;
        if (i16 != 0 && ((int) Math.ceil(paintNewPaint.measureText(strRefactorString, 0, 1))) > i16) {
            return false;
        }
        paintNewPaint.setARGB(i14, i11, i12, i13);
        TextProperty textPropertyComputeTextProperty = computeTextProperty(strRefactorString, i16, i17, paintNewPaint);
        int i25 = i17 == 0 ? textPropertyComputeTextProperty.mTotalHeight : i17;
        if (textPropertyComputeTextProperty.mMaxWidth == 0 || i25 == 0) {
            return false;
        }
        int i26 = (int) 0.0f;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(textPropertyComputeTextProperty.mMaxWidth + i26, i25 + i26, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint.FontMetricsInt fontMetricsInt = paintNewPaint.getFontMetricsInt();
        if (z11) {
            Paint paintNewPaint2 = newPaint(str, i10, i22);
            paintNewPaint2.setStyle(Paint.Style.STROKE);
            paintNewPaint2.setStrokeWidth(f14);
            paintNewPaint2.setARGB(i21, i18, i19, i20);
            int iComputeY = computeY(fontMetricsInt, i17, textPropertyComputeTextProperty.mTotalHeight, i23);
            String[] strArr = textPropertyComputeTextProperty.mLines;
            int length = strArr.length;
            while (i24 < length) {
                String str2 = strArr[i24];
                float fComputeX = computeX(str2, textPropertyComputeTextProperty.mMaxWidth, i22) + 0.0f;
                float f15 = iComputeY + 0.0f;
                canvas.drawText(str2, fComputeX, f15, paintNewPaint2);
                canvas.drawText(str2, fComputeX, f15, paintNewPaint);
                iComputeY += textPropertyComputeTextProperty.mHeightPerLine;
                i24++;
            }
        } else {
            int iComputeY2 = computeY(fontMetricsInt, i17, textPropertyComputeTextProperty.mTotalHeight, i23);
            String[] strArr2 = textPropertyComputeTextProperty.mLines;
            int length2 = strArr2.length;
            while (i24 < length2) {
                String str3 = strArr2[i24];
                canvas.drawText(str3, computeX(str3, textPropertyComputeTextProperty.mMaxWidth, i22) + 0.0f, iComputeY2 + 0.0f, paintNewPaint);
                iComputeY2 += textPropertyComputeTextProperty.mHeightPerLine;
                i24++;
            }
        }
        initNativeObject(bitmapCreateBitmap);
        return true;
    }

    private static LinkedList<String> divideStringWithMaxWidth(String str, int i10, Paint paint) {
        int length = str.length();
        LinkedList<String> linkedList = new LinkedList<>();
        int i11 = 1;
        int i12 = 0;
        while (i11 <= length) {
            int iCeil = (int) Math.ceil(paint.measureText(str, i12, i11));
            if (iCeil >= i10) {
                int iLastIndexOf = str.substring(0, i11).lastIndexOf(" ");
                if (iLastIndexOf != -1 && iLastIndexOf > i12) {
                    linkedList.add(str.substring(i12, iLastIndexOf));
                    i11 = iLastIndexOf + 1;
                } else if (iCeil <= i10 || i11 == i12 + 1) {
                    linkedList.add(str.substring(i12, i11));
                } else {
                    linkedList.add(str.substring(i12, i11 - 1));
                    i11--;
                }
                while (i11 < length && str.charAt(i11) == ' ') {
                    i11++;
                }
                i12 = i11;
            }
            i11++;
        }
        if (i12 < length) {
            linkedList.add(str.substring(i12));
        }
        return linkedList;
    }

    private static int getFontSizeAccordingHeight(int i10) {
        Paint paint = new Paint();
        Rect rect = new Rect();
        paint.setTypeface(Typeface.DEFAULT);
        boolean z10 = false;
        int i11 = 1;
        while (!z10) {
            paint.setTextSize(i11);
            paint.getTextBounds("SghMNy", 0, 6, rect);
            i11++;
            if (i10 - rect.height() <= 2) {
                z10 = true;
            }
        }
        return i11;
    }

    private static byte[] getPixels(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        byte[] bArr = new byte[bitmap.getWidth() * bitmap.getHeight() * 4];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.nativeOrder());
        bitmap.copyPixelsToBuffer(byteBufferWrap);
        return bArr;
    }

    private static String getStringWithEllipsis(String str, float f10, float f11) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTypeface(Typeface.DEFAULT);
        textPaint.setTextSize(f11);
        return TextUtils.ellipsize(str, textPaint, f10, TextUtils.TruncateAt.END).toString();
    }

    private static void initNativeObject(Bitmap bitmap) {
        byte[] pixels = getPixels(bitmap);
        if (pixels == null) {
            return;
        }
        nativeInitBitmapDC(bitmap.getWidth(), bitmap.getHeight(), pixels);
    }

    private static native void nativeInitBitmapDC(int i10, int i11, byte[] bArr);

    private static Paint newPaint(String str, int i10, int i11) {
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setTextSize(i10);
        paint.setAntiAlias(true);
        if (str.endsWith(".ttf")) {
            try {
                paint.setTypeface(Cocos2dxTypefaces.get(sContext, str));
            } catch (Exception unused) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("error to create ttf type face: ");
                sb2.append(str);
                paint.setTypeface(Typeface.create(str, 0));
            }
        } else {
            paint.setTypeface(Typeface.create(str, 0));
        }
        if (i11 == 2) {
            paint.setTextAlign(Paint.Align.RIGHT);
        } else if (i11 != 3) {
            paint.setTextAlign(Paint.Align.LEFT);
        } else {
            paint.setTextAlign(Paint.Align.CENTER);
        }
        return paint;
    }

    private static String refactorString(String str) {
        if (str.compareTo("") == 0) {
            return " ";
        }
        StringBuilder sb2 = new StringBuilder(str);
        int i10 = 0;
        for (int iIndexOf = sb2.indexOf("\n"); iIndexOf != -1; iIndexOf = sb2.indexOf("\n", i10)) {
            if (iIndexOf == 0 || sb2.charAt(iIndexOf - 1) == '\n') {
                sb2.insert(i10, " ");
                i10 = iIndexOf + 2;
            } else {
                i10 = iIndexOf + 1;
            }
            if (i10 > sb2.length() || iIndexOf == sb2.length()) {
                break;
            }
        }
        return sb2.toString();
    }

    public static void setContext(Context context) {
        sContext = context;
    }

    private static String[] splitString(String str, int i10, int i11, Paint paint) {
        String[] strArrSplit = str.split("\\n");
        Paint.FontMetricsInt fontMetricsInt = paint.getFontMetricsInt();
        int iCeil = i11 / ((int) Math.ceil(fontMetricsInt.bottom - fontMetricsInt.top));
        int i12 = 0;
        if (i10 == 0) {
            if (i11 == 0 || strArrSplit.length <= iCeil) {
                return strArrSplit;
            }
            LinkedList linkedList = new LinkedList();
            while (i12 < iCeil) {
                linkedList.add(strArrSplit[i12]);
                i12++;
            }
            String[] strArr = new String[linkedList.size()];
            linkedList.toArray(strArr);
            return strArr;
        }
        LinkedList linkedList2 = new LinkedList();
        int length = strArrSplit.length;
        while (i12 < length) {
            String str2 = strArrSplit[i12];
            if (((int) Math.ceil(paint.measureText(str2))) > i10) {
                linkedList2.addAll(divideStringWithMaxWidth(str2, i10, paint));
            } else {
                linkedList2.add(str2);
            }
            if (iCeil > 0 && linkedList2.size() >= iCeil) {
                break;
            }
            i12++;
        }
        if (iCeil > 0 && linkedList2.size() > iCeil) {
            while (linkedList2.size() > iCeil) {
                linkedList2.removeLast();
            }
        }
        String[] strArr2 = new String[linkedList2.size()];
        linkedList2.toArray(strArr2);
        return strArr2;
    }
}
