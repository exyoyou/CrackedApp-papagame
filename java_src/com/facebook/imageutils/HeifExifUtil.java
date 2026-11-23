package com.facebook.imageutils;

import android.os.Build;
import androidx.annotation.RequiresApi;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.soloader.DoNotOptimize;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class HeifExifUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f28757a = "HeifExifUtil";

    @DoNotOptimize
    private static class HeifExifUtilAndroidN {
        private HeifExifUtilAndroidN() {
        }

        @RequiresApi(api = 24)
        static int a(final InputStream inputStream) {
            try {
                c.a();
                return b.a(inputStream).getAttributeInt("Orientation", 1);
            } catch (IOException e10) {
                i3.a.n(HeifExifUtil.f28757a, "Failed reading Heif Exif orientation -> ignoring", e10);
                return 0;
            }
        }
    }

    public static int a(final InputStream inputStream) {
        if (Build.VERSION.SDK_INT >= 24) {
            return HeifExifUtilAndroidN.a(inputStream);
        }
        i3.a.i(f28757a, "Trying to read Heif Exif information before Android N -> ignoring");
        return 0;
    }
}
