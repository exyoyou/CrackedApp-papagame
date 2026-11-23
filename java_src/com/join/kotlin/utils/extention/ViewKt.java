package com.join.kotlin.utils.extention;

import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001a\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u0012\u0010\b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004¨\u0006\t"}, d2 = {"isTouchInView", "", "Landroid/view/View;", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "x", "", "y", "isPointerInView", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewKt {
    public static final boolean isPointerInView(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getActionMasked() == 2) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int actionIndex = event.getActionIndex();
        float x10 = event.getX(actionIndex);
        float y10 = event.getY(actionIndex);
        int i10 = iArr[0];
        if (x10 < i10 || x10 > i10 + view.getWidth()) {
            return false;
        }
        int i11 = iArr[1];
        return y10 >= ((float) i11) && y10 <= ((float) (i11 + view.getHeight()));
    }

    public static final boolean isTouchInView(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(event, "event");
        return isTouchInView(view, event.getRawX(), event.getRawY());
    }

    public static final boolean isTouchInView(@NotNull View view, float f10, float f11) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        if (f10 < i10 || f10 > i10 + view.getWidth()) {
            return false;
        }
        int i11 = iArr[1];
        return f11 >= ((float) i11) && f11 <= ((float) (i11 + view.getHeight()));
    }
}
