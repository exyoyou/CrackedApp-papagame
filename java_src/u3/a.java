package u3;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface a {

    /* JADX INFO: renamed from: u3.a$a, reason: collision with other inner class name */
    public interface InterfaceC1250a {
        void a(a bitmapFrameCache, int frameNumber);

        void b(a bitmapFrameCache, int frameNumber);
    }

    int a();

    void b(int frameNumber, CloseableReference<Bitmap> bitmapReference, int frameType);

    @Nullable
    CloseableReference<Bitmap> c(int frameNumber);

    void clear();

    void d(InterfaceC1250a frameCacheListener);

    boolean e(int frameNumber);

    @Nullable
    CloseableReference<Bitmap> f(int frameNumber);

    void g(int frameNumber, CloseableReference<Bitmap> bitmapReference, int frameType);

    @Nullable
    CloseableReference<Bitmap> h(int frameNumber, int width, int height);
}
