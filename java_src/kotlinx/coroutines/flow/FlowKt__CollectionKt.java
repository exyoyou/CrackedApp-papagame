package kotlinx.coroutines.flow;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class FlowKt__CollectionKt {

    static final class a<T> implements f {

        /* JADX INFO: Incorrect field signature: TC; */
        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Collection f92854b;

        /* JADX WARN: Incorrect types in method signature: (TC;)V */
        a(Collection collection) {
            this.f92854b = collection;
        }

        @Override // kotlinx.coroutines.flow.f
        @Nullable
        public final Object emit(T t10, @NotNull Continuation<? super Unit> continuation) {
            this.f92854b.add(t10);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final <T, C extends Collection<? super T>> Object a(@NotNull e<? extends T> eVar, @NotNull C c10, @NotNull Continuation<? super C> continuation) {
        FlowKt__CollectionKt$toCollection$1 flowKt__CollectionKt$toCollection$1;
        if (continuation instanceof FlowKt__CollectionKt$toCollection$1) {
            flowKt__CollectionKt$toCollection$1 = (FlowKt__CollectionKt$toCollection$1) continuation;
            int i10 = flowKt__CollectionKt$toCollection$1.f92857d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                flowKt__CollectionKt$toCollection$1.f92857d = i10 - Integer.MIN_VALUE;
            } else {
                flowKt__CollectionKt$toCollection$1 = new FlowKt__CollectionKt$toCollection$1(continuation);
            }
        } else {
            flowKt__CollectionKt$toCollection$1 = new FlowKt__CollectionKt$toCollection$1(continuation);
        }
        Object obj = flowKt__CollectionKt$toCollection$1.f92856c;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = flowKt__CollectionKt$toCollection$1.f92857d;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Collection collection = (Collection) flowKt__CollectionKt$toCollection$1.f92855b;
            ResultKt.throwOnFailure(obj);
            return collection;
        }
        ResultKt.throwOnFailure(obj);
        f<? super Object> aVar = new a<>(c10);
        flowKt__CollectionKt$toCollection$1.f92855b = c10;
        flowKt__CollectionKt$toCollection$1.f92857d = 1;
        return eVar.a(aVar, flowKt__CollectionKt$toCollection$1) == coroutine_suspended ? coroutine_suspended : c10;
    }

    @Nullable
    public static final <T> Object b(@NotNull e<? extends T> eVar, @NotNull List<T> list, @NotNull Continuation<? super List<? extends T>> continuation) {
        return g.W1(eVar, list, continuation);
    }

    public static /* synthetic */ Object c(e eVar, List list, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            list = new ArrayList();
        }
        return g.X1(eVar, list, continuation);
    }

    @Nullable
    public static final <T> Object d(@NotNull e<? extends T> eVar, @NotNull Set<T> set, @NotNull Continuation<? super Set<? extends T>> continuation) {
        return g.W1(eVar, set, continuation);
    }

    public static /* synthetic */ Object e(e eVar, Set set, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            set = new LinkedHashSet();
        }
        return g.Z1(eVar, set, continuation);
    }
}
