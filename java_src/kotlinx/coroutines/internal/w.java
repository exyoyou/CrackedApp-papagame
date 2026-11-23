package kotlinx.coroutines.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class w extends LockFreeLinkedListNode {
    public final /* synthetic */ <T extends LockFreeLinkedListNode> void H(Function1<? super T, Unit> function1) {
        Object objM = m();
        Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        for (LockFreeLinkedListNode lockFreeLinkedListNodeN = (LockFreeLinkedListNode) objM; !Intrinsics.areEqual(lockFreeLinkedListNodeN, this); lockFreeLinkedListNodeN = lockFreeLinkedListNodeN.n()) {
            Intrinsics.reifiedOperationMarker(3, "T");
            if (lockFreeLinkedListNodeN instanceof LockFreeLinkedListNode) {
                function1.invoke(lockFreeLinkedListNodeN);
            }
        }
    }

    public final boolean I() {
        return m() == this;
    }

    @NotNull
    public final Void J() {
        throw new IllegalStateException("head cannot be removed".toString());
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public boolean v() {
        return false;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @Nullable
    protected LockFreeLinkedListNode y() {
        return null;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public /* bridge */ /* synthetic */ boolean z() {
        return ((Boolean) J()).booleanValue();
    }
}
