package com.haima.hmcp.virtual.views;

import android.graphics.Bitmap;
import com.haima.hmcp.utils.LogUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ScanlineHitTest {
    private static final String TAG = "ScanlineHitTest";
    private int imageHeight;
    private int imageWidth;
    private boolean isCalculated = false;
    private List<float[]> scanlines;

    private boolean isPixelNonTransparent(Bitmap bitmap, int i10, int i11) {
        if (i10 >= 0 && i10 < this.imageWidth && i11 >= 0 && i11 < this.imageHeight) {
            try {
                return ((bitmap.getPixel(i10, i11) >> 24) & 255) > 0;
            } catch (Exception e10) {
                LogUtils.e(TAG, "isPixelNonTransparent error: " + e10.getMessage());
            }
        }
        return false;
    }

    private float[] scanLine(Bitmap bitmap, int i10, int i11) {
        int i12;
        int i13 = 0;
        while (true) {
            i12 = -1;
            if (i13 >= this.imageWidth) {
                i13 = -1;
                break;
            }
            if (isPixelNonTransparent(bitmap, i13, i10)) {
                break;
            }
            i13 += i11;
        }
        if (i13 >= 0) {
            int i14 = this.imageWidth - 1;
            while (i14 >= i13) {
                if (isPixelNonTransparent(bitmap, i14, i10)) {
                    i12 = i14;
                    break;
                }
                i14 -= i11;
            }
        }
        if (i13 < 0 || i12 < 0) {
            return new float[]{-1.0f, -1.0f};
        }
        int i15 = this.imageWidth;
        return new float[]{i13 / i15, i12 / i15};
    }

    public void calculateScanlines(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            LogUtils.w(TAG, "calculateScanlines: bitmap is null or recycled");
            this.scanlines = new ArrayList();
            this.isCalculated = true;
            return;
        }
        this.imageWidth = bitmap.getWidth();
        int height = bitmap.getHeight();
        this.imageHeight = height;
        if (this.imageWidth <= 0 || height <= 0) {
            LogUtils.w(TAG, "calculateScanlines: invalid bitmap size");
            this.scanlines = new ArrayList();
            this.isCalculated = true;
            return;
        }
        this.scanlines = new ArrayList(this.imageHeight);
        int i10 = (this.imageWidth > 200 || this.imageHeight > 200) ? 2 : 1;
        for (int i11 = 0; i11 < this.imageHeight; i11 += i10) {
            float[] fArrScanLine = scanLine(bitmap, i11, i10);
            this.scanlines.add(fArrScanLine);
            if (i10 > 1 && i11 + i10 < this.imageHeight) {
                for (int i12 = 1; i12 < i10; i12++) {
                    this.scanlines.add(fArrScanLine);
                }
            }
        }
        this.isCalculated = true;
        LogUtils.d(TAG, "calculateScanlines: completed, width=" + this.imageWidth + ", height=" + this.imageHeight + ", step=" + i10);
    }

    public void clear() {
        this.scanlines = null;
        this.isCalculated = false;
        this.imageWidth = 0;
        this.imageHeight = 0;
    }

    public boolean hitTest(float f10, float f11) {
        List<float[]> list;
        int i10;
        if (!this.isCalculated || (list = this.scanlines) == null || list.isEmpty() || f10 < 0.0f || f10 > 1.0f || f11 < 0.0f || f11 > 1.0f || (i10 = (int) (f11 * this.imageHeight)) < 0 || i10 >= this.scanlines.size()) {
            return false;
        }
        float[] fArr = this.scanlines.get(i10);
        float f12 = fArr[0];
        float f13 = fArr[1];
        if (f12 < 0.0f || f13 < 0.0f) {
            return false;
        }
        LogUtils.w(TAG, "hitTest: normalizedX:" + f10 + " -> firstX,lastX" + f12 + ", " + f13);
        return f10 >= f12 && f10 <= f13;
    }

    public boolean isCalculated() {
        return this.isCalculated;
    }
}
