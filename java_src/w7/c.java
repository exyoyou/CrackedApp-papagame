package w7;

import android.view.Surface;

/* JADX INFO: loaded from: classes2.dex */
public interface c {
    void onSurfaceAvailable(Surface surface);

    boolean onSurfaceDestroyed(Surface surface);

    void onSurfaceSizeChanged(Surface surface, int i10, int i11);

    void onSurfaceUpdated(Surface surface);
}
