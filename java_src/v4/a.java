package v4;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a {

    /* JADX INFO: renamed from: v4.a$a, reason: collision with other inner class name */
    public interface InterfaceC1251a {
        void a(@NonNull Canvas canvas);
    }

    private a() {
    }

    public static int a(@NonNull Canvas canvas, float f10, float f11, float f12, float f13, int i10) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f10, f11, f12, f13, i10) : canvas.saveLayerAlpha(f10, f11, f12, f13, i10, 31);
    }

    public static int b(@NonNull Canvas canvas, @Nullable RectF rectF, int i10) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(rectF, i10) : canvas.saveLayerAlpha(rectF, i10, 31);
    }
}
