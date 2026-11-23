package kotlinx.coroutines.debug.internal;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class g<T> extends WeakReference<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    public final int f92790a;

    public g(T t10, @Nullable ReferenceQueue<T> referenceQueue) {
        super(t10, referenceQueue);
        this.f92790a = t10 != null ? t10.hashCode() : 0;
    }
}
