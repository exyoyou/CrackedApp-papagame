package kotlinx.coroutines;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public abstract class a2 extends LockFreeLinkedListNode implements s1, c1, q1 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public JobSupport f92325e;

    @NotNull
    public final JobSupport H() {
        JobSupport jobSupport = this.f92325e;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.throwUninitializedPropertyAccessException("job");
        return null;
    }

    public final void I(@NotNull JobSupport jobSupport) {
        this.f92325e = jobSupport;
    }

    @Override // kotlinx.coroutines.q1
    @Nullable
    public f2 b() {
        return null;
    }

    @Override // kotlinx.coroutines.c1
    public void dispose() {
        H().r1(this);
    }

    @Override // kotlinx.coroutines.q1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return o0.a(this) + '@' + o0.b(this) + "[job@" + o0.b(H()) + ']';
    }
}
