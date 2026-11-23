package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlinx.coroutines.channels.BufferOverflow;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class q<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final e<T> f93410a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public final int f93411b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @NotNull
    public final BufferOverflow f93412c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    @NotNull
    public final CoroutineContext f93413d;

    /* JADX WARN: Multi-variable type inference failed */
    public q(@NotNull e<? extends T> eVar, int i10, @NotNull BufferOverflow bufferOverflow, @NotNull CoroutineContext coroutineContext) {
        this.f93410a = eVar;
        this.f93411b = i10;
        this.f93412c = bufferOverflow;
        this.f93413d = coroutineContext;
    }
}
