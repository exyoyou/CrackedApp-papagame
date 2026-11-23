package kotlinx.coroutines;

import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nJobSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n+ 2 LockFreeLinkedList.kt\nkotlinx/coroutines/internal/LockFreeLinkedListHead\n*L\n1#1,1461:1\n336#2,6:1462\n*S KotlinDebug\n*F\n+ 1 JobSupport.kt\nkotlinx/coroutines/NodeList\n*L\n1371#1:1462,6\n*E\n"})
public final class f2 extends kotlinx.coroutines.internal.w implements q1 {
    @NotNull
    public final String K(@NotNull String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("List{");
        sb2.append(str);
        sb2.append("}[");
        Object objM = m();
        Intrinsics.checkNotNull(objM, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }");
        boolean z10 = true;
        for (LockFreeLinkedListNode lockFreeLinkedListNodeN = (LockFreeLinkedListNode) objM; !Intrinsics.areEqual(lockFreeLinkedListNodeN, this); lockFreeLinkedListNodeN = lockFreeLinkedListNodeN.n()) {
            if (lockFreeLinkedListNodeN instanceof a2) {
                a2 a2Var = (a2) lockFreeLinkedListNodeN;
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append(", ");
                }
                sb2.append(a2Var);
            }
        }
        sb2.append("]");
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    @Override // kotlinx.coroutines.q1
    @NotNull
    public f2 b() {
        return this;
    }

    @Override // kotlinx.coroutines.q1
    public boolean isActive() {
        return true;
    }

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    @NotNull
    public String toString() {
        return super.toString();
    }
}
