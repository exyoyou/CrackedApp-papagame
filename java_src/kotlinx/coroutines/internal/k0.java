package kotlinx.coroutines.internal;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final LockFreeLinkedListNode f93506a;

    public k0(@NotNull LockFreeLinkedListNode lockFreeLinkedListNode) {
        this.f93506a = lockFreeLinkedListNode;
    }

    @NotNull
    public String toString() {
        return "Removed[" + this.f93506a + ']';
    }
}
