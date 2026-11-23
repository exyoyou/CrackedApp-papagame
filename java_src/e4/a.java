package e4;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f90864a = 11;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f90865b = 100;

    public static boolean f(int startFrame, int endFrame, int frameNumber) {
        if (startFrame == -1 || endFrame == -1) {
            return true;
        }
        if (startFrame <= endFrame) {
            if (frameNumber < startFrame || frameNumber > endFrame) {
                return true;
            }
        } else if (frameNumber < startFrame && frameNumber > endFrame) {
            return true;
        }
        return false;
    }

    public void a(int[] frameDurationMs) {
        for (int i10 = 0; i10 < frameDurationMs.length; i10++) {
            if (frameDurationMs[i10] < 11) {
                frameDurationMs[i10] = 100;
            }
        }
    }

    public int b(int[] frameTimestampsMs, int timestampMs) {
        int iBinarySearch = Arrays.binarySearch(frameTimestampsMs, timestampMs);
        return iBinarySearch < 0 ? ((-iBinarySearch) - 1) - 1 : iBinarySearch;
    }

    public int[] c(int[] frameDurationsMs) {
        int[] iArr = new int[frameDurationsMs.length];
        int i10 = 0;
        for (int i11 = 0; i11 < frameDurationsMs.length; i11++) {
            iArr[i11] = i10;
            i10 += frameDurationsMs[i11];
        }
        return iArr;
    }

    @SuppressLint({"NewApi"})
    public int d(Bitmap bitmap) {
        return bitmap.getAllocationByteCount();
    }

    public int e(int[] frameDurationMs) {
        int i10 = 0;
        for (int i11 : frameDurationMs) {
            i10 += i11;
        }
        return i10;
    }
}
