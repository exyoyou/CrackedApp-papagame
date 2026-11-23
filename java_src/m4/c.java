package m4;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public final class c {
    public static boolean a(@Nullable a transformation, @Nullable CloseableReference<Bitmap> bitmapReference) {
        if (transformation == null || bitmapReference == null) {
            return false;
        }
        Bitmap bitmapJ = bitmapReference.j();
        if (transformation.a()) {
            bitmapJ.setHasAlpha(true);
        }
        transformation.b(bitmapJ);
        return true;
    }
}
