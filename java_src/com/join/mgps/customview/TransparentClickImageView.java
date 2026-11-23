package com.join.mgps.customview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.facebook.drawee.view.SimpleDraweeView;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\fH\u0002J\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002¨\u0006\u0013"}, d2 = {"Lcom/join/mgps/customview/TransparentClickImageView;", "Lcom/facebook/drawee/view/SimpleDraweeView;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "onTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "isPixelTransparent", "x", "", "y", "getBitmapFromDrawable", "Landroid/graphics/Bitmap;", "drawable", "Landroid/graphics/drawable/Drawable;", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TransparentClickImageView extends SimpleDraweeView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final a f65965b = new a(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f65966c = 10;

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransparentClickImageView(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final Bitmap d(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getBounds().width(), drawable.getBounds().height(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    private final boolean e(int i10, int i11) {
        if (getDrawable() == null) {
            return true;
        }
        Drawable drawable = getDrawable();
        Intrinsics.checkNotNullExpressionValue(drawable, "getDrawable(...)");
        Bitmap bitmapD = d(drawable);
        if (bitmapD == null || i10 < 0 || i11 < 0 || i10 >= getWidth() || i11 >= getHeight()) {
            return true;
        }
        int width = (int) (i10 * (bitmapD.getWidth() / getWidth()));
        int height = (int) (i11 * (bitmapD.getHeight() / getHeight()));
        return width >= bitmapD.getWidth() || height >= bitmapD.getHeight() || Color.alpha(bitmapD.getPixel(width, height)) < 10;
    }

    @Override // com.facebook.drawee.view.DraweeView, android.view.View
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() == 0 && e((int) event.getX(), (int) event.getY())) {
            return false;
        }
        return super.onTouchEvent(event);
    }
}
