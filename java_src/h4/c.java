package h4;

import android.content.Context;
import android.graphics.Bitmap;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import androidx.annotation.RequiresApi;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f91387a = 25;

    @RequiresApi(17)
    public static void a(final Bitmap dest, final Bitmap src, final Context context, final int radius) throws Throwable {
        i.i(dest);
        i.i(src);
        i.i(context);
        i.d(Boolean.valueOf(radius > 0 && radius <= 25));
        RenderScript renderScript = null;
        try {
            RenderScript renderScript2 = (RenderScript) i.i(RenderScript.create(context));
            try {
                ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScript2, Element.U8_4(renderScript2));
                Allocation allocation = (Allocation) i.i(Allocation.createFromBitmap(renderScript2, src));
                Allocation allocation2 = (Allocation) i.i(Allocation.createFromBitmap(renderScript2, dest));
                scriptIntrinsicBlurCreate.setRadius(radius);
                scriptIntrinsicBlurCreate.setInput(allocation);
                scriptIntrinsicBlurCreate.forEach(allocation2);
                allocation2.copyTo(dest);
                scriptIntrinsicBlurCreate.destroy();
                allocation.destroy();
                allocation2.destroy();
                if (renderScript2 != null) {
                    renderScript2.destroy();
                }
            } catch (Throwable th) {
                th = th;
                renderScript = renderScript2;
                if (renderScript != null) {
                    renderScript.destroy();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static boolean b() {
        return true;
    }
}
