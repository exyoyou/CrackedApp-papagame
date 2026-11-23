package tv.haima.ijk.media.player.egl;

import androidx.annotation.Nullable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes10.dex */
class RefCountDelegate implements RefCounted {
    private final AtomicInteger refCount = new AtomicInteger(1);

    @Nullable
    private final Runnable releaseCallback;

    public RefCountDelegate(@Nullable Runnable runnable) {
        this.releaseCallback = runnable;
    }

    @Override // tv.haima.ijk.media.player.egl.RefCounted
    public void release() {
        Runnable runnable;
        int iDecrementAndGet = this.refCount.decrementAndGet();
        if (iDecrementAndGet < 0) {
            throw new IllegalStateException("release() called on an object with refcount < 1");
        }
        if (iDecrementAndGet != 0 || (runnable = this.releaseCallback) == null) {
            return;
        }
        runnable.run();
    }

    @Override // tv.haima.ijk.media.player.egl.RefCounted
    public void retain() {
        if (this.refCount.incrementAndGet() < 2) {
            throw new IllegalStateException("retain() called on an object with refcount < 1");
        }
    }

    boolean safeRetain() {
        int i10 = this.refCount.get();
        while (i10 != 0) {
            if (this.refCount.weakCompareAndSet(i10, i10 + 1)) {
                return true;
            }
            i10 = this.refCount.get();
        }
        return false;
    }
}
