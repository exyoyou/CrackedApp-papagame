package s3;

import android.graphics.drawable.Drawable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public interface c extends b {
    void a(Throwable throwable);

    void c(Drawable drawable);

    void d(float progress, boolean immediate);

    void e(Drawable drawable, float progress, boolean immediate);

    void reset();

    void setFailure(Throwable throwable);
}
