package com.join.kotlin.base.view;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.join.kotlin.base.view.ViewExtKt;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0012\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u001a\n\u0010\b\u001a\u00020\u0001*\u00020\u0002\u001a\"\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007\u001a(\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0011\u001a7\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u001b\u001a\u00020\u00152!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00010\u001d\u001a=\u0010!\u001a\u00020\u0001*\u0004\u0018\u00010\"2!\u0010#\u001a\u001d\u0012\u0013\u0012\u00110\"¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010\u001d2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00010&\"\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006'"}, d2 = {"visible", "", "Landroid/view/View;", "invisible", "visibleOrGone", "flag", "", "visibleOrInvisible", "gone", "toBitmap", "Landroid/graphics/Bitmap;", "scale", "", "config", "Landroid/graphics/Bitmap$Config;", "createBitmapSafely", "width", "", "height", "retryCount", "lastClickTime", "", "getLastClickTime", "()J", "setLastClickTime", "(J)V", "clickNoRepeat", "interval", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "view", "notNull", "", "notNullAction", HmInputMappingContent.FIELD_VALUE, "nullAction1", "Lkotlin/Function0;", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ViewExtKt {
    private static long lastClickTime;

    public static final void clickNoRepeat(@NotNull View view, final long j10, @NotNull final Function1<? super View, Unit> action) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        view.setOnClickListener(new View.OnClickListener() { // from class: x5.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ViewExtKt.clickNoRepeat$lambda$1(j10, action, view2);
            }
        });
    }

    public static /* synthetic */ void clickNoRepeat$default(View view, long j10, Function1 function1, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = 500;
        }
        clickNoRepeat(view, j10, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void clickNoRepeat$lambda$1(long j10, Function1 function1, View view) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j11 = lastClickTime;
        if (j11 == 0 || jCurrentTimeMillis - j11 >= j10) {
            lastClickTime = jCurrentTimeMillis;
            Intrinsics.checkNotNull(view);
            function1.invoke(view);
        }
    }

    @Nullable
    public static final Bitmap createBitmapSafely(int i10, int i11, @NotNull Bitmap.Config config, int i12) {
        Intrinsics.checkNotNullParameter(config, "config");
        try {
            return Bitmap.createBitmap(i10, i11, config);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            if (i12 <= 0) {
                return null;
            }
            System.gc();
            return createBitmapSafely(i10, i11, config, i12 - 1);
        }
    }

    public static final long getLastClickTime() {
        return lastClickTime;
    }

    public static final void gone(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(8);
    }

    public static final void invisible(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(4);
    }

    public static final void notNull(@Nullable Object obj, @NotNull Function1<Object, Unit> notNullAction, @NotNull Function0<Unit> nullAction1) {
        Intrinsics.checkNotNullParameter(notNullAction, "notNullAction");
        Intrinsics.checkNotNullParameter(nullAction1, "nullAction1");
        if (obj != null) {
            notNullAction.invoke(obj);
        } else {
            nullAction1.invoke();
        }
    }

    public static final void setLastClickTime(long j10) {
        lastClickTime = j10;
    }

    @Deprecated(message = "use View.drawToBitmap()")
    @Nullable
    public static final Bitmap toBitmap(@NotNull View view, float f10, @NotNull Bitmap.Config config) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(config, "config");
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() instanceof BitmapDrawable) {
                Drawable drawable = imageView.getDrawable();
                Intrinsics.checkNotNull(drawable, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable");
                return ((BitmapDrawable) drawable).getBitmap();
            }
        }
        view.clearFocus();
        Bitmap bitmapCreateBitmapSafely = createBitmapSafely((int) (view.getWidth() * f10), (int) (view.getHeight() * f10), config, 1);
        if (bitmapCreateBitmapSafely != null) {
            Canvas canvas = new Canvas();
            canvas.setBitmap(bitmapCreateBitmapSafely);
            canvas.save();
            canvas.drawColor(-1);
            canvas.scale(f10, f10);
            view.draw(canvas);
            canvas.restore();
            canvas.setBitmap(null);
        }
        return bitmapCreateBitmapSafely;
    }

    public static /* synthetic */ Bitmap toBitmap$default(View view, float f10, Bitmap.Config config, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f10 = 1.0f;
        }
        if ((i10 & 2) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return toBitmap(view, f10, config);
    }

    public static final void visible(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(0);
    }

    public static final void visibleOrGone(@NotNull View view, boolean z10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(z10 ? 0 : 8);
    }

    public static final void visibleOrInvisible(@NotNull View view, boolean z10) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setVisibility(z10 ? 0 : 4);
    }
}
