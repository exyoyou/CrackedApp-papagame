package kotlinx.coroutines.debug.internal;

import kotlin.PublishedApi;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class i implements CoroutineStackFrame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final CoroutineStackFrame f92792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    @NotNull
    public final StackTraceElement f92793c;

    public i(@Nullable CoroutineStackFrame coroutineStackFrame, @NotNull StackTraceElement stackTraceElement) {
        this.f92792b = coroutineStackFrame;
        this.f92793c = stackTraceElement;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        return this.f92792b;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @NotNull
    public StackTraceElement getStackTraceElement() {
        return this.f92793c;
    }
}
