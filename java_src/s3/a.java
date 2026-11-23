package s3;

import android.graphics.drawable.Animatable;
import android.view.MotionEvent;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
public interface a {
    boolean a(a other);

    void b();

    void c(String contentDescription);

    void d(@Nullable b hierarchy);

    @Nullable
    b e();

    Animatable f();

    void g(boolean isVisibleInViewportHint);

    String getContentDescription();

    void onDetach();

    boolean onTouchEvent(MotionEvent event);
}
