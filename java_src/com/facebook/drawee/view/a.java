package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a {

    /* JADX INFO: renamed from: com.facebook.drawee.view.a$a, reason: collision with other inner class name */
    public static class C0567a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f27361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f27362b;
    }

    private static boolean a(int layoutDimension) {
        return layoutDimension == 0 || layoutDimension == -2;
    }

    public static void b(C0567a spec, float aspectRatio, @Nullable ViewGroup.LayoutParams layoutParams, int widthPadding, int heightPadding) {
        if (aspectRatio <= 0.0f || layoutParams == null) {
            return;
        }
        if (a(layoutParams.height)) {
            spec.f27362b = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(spec.f27361a) - widthPadding) / aspectRatio) + heightPadding), spec.f27362b), 1073741824);
        } else if (a(layoutParams.width)) {
            spec.f27361a = View.MeasureSpec.makeMeasureSpec(View.resolveSize((int) (((View.MeasureSpec.getSize(spec.f27362b) - heightPadding) * aspectRatio) + widthPadding), spec.f27361a), 1073741824);
        }
    }
}
