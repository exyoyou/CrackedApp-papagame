package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class CoroutineContextKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final String f92271a = " @";

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final CoroutineContext a(CoroutineContext coroutineContext, CoroutineContext coroutineContext2, final boolean z10) {
        boolean zC = c(coroutineContext);
        boolean zC2 = c(coroutineContext2);
        if (!zC && !zC2) {
            return coroutineContext.plus(coroutineContext2);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = coroutineContext2;
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.INSTANCE;
        CoroutineContext coroutineContext3 = (CoroutineContext) coroutineContext.fold(emptyCoroutineContext, new Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext>() { // from class: kotlinx.coroutines.CoroutineContextKt$foldCopies$folded$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            /* JADX WARN: Type inference failed for: r2v2, types: [T, kotlin.coroutines.CoroutineContext] */
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final CoroutineContext invoke(@NotNull CoroutineContext coroutineContext4, @NotNull CoroutineContext.Element element) {
                if (!(element instanceof f0)) {
                    return coroutineContext4.plus(element);
                }
                CoroutineContext.Element element2 = objectRef.element.get(element.getKey());
                if (element2 != null) {
                    Ref.ObjectRef<CoroutineContext> objectRef2 = objectRef;
                    objectRef2.element = objectRef2.element.minusKey(element.getKey());
                    return coroutineContext4.plus(((f0) element).e(element2));
                }
                f0 f0VarO = (f0) element;
                if (z10) {
                    f0VarO = f0VarO.o();
                }
                return coroutineContext4.plus(f0VarO);
            }
        });
        if (zC2) {
            objectRef.element = ((CoroutineContext) objectRef.element).fold(emptyCoroutineContext, new Function2<CoroutineContext, CoroutineContext.Element, CoroutineContext>() { // from class: kotlinx.coroutines.CoroutineContextKt$foldCopies$1
                @Override // kotlin.jvm.functions.Function2
                @NotNull
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public final CoroutineContext invoke(@NotNull CoroutineContext coroutineContext4, @NotNull CoroutineContext.Element element) {
                    return element instanceof f0 ? coroutineContext4.plus(((f0) element).o()) : coroutineContext4.plus(element);
                }
            });
        }
        return coroutineContext3.plus((CoroutineContext) objectRef.element);
    }

    @Nullable
    public static final String b(@NotNull CoroutineContext coroutineContext) {
        return null;
    }

    private static final boolean c(CoroutineContext coroutineContext) {
        return ((Boolean) coroutineContext.fold(Boolean.FALSE, new Function2<Boolean, CoroutineContext.Element, Boolean>() { // from class: kotlinx.coroutines.CoroutineContextKt$hasCopyableElements$1
            @NotNull
            public final Boolean a(boolean z10, @NotNull CoroutineContext.Element element) {
                return Boolean.valueOf(z10 || (element instanceof f0));
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, CoroutineContext.Element element) {
                return a(bool.booleanValue(), element);
            }
        })).booleanValue();
    }

    @InternalCoroutinesApi
    @NotNull
    public static final CoroutineContext d(@NotNull CoroutineContext coroutineContext, @NotNull CoroutineContext coroutineContext2) {
        return !c(coroutineContext2) ? coroutineContext.plus(coroutineContext2) : a(coroutineContext, coroutineContext2, false);
    }

    @ExperimentalCoroutinesApi
    @NotNull
    public static final CoroutineContext e(@NotNull l0 l0Var, @NotNull CoroutineContext coroutineContext) {
        CoroutineContext coroutineContextA = a(l0Var.getCoroutineContext(), coroutineContext, true);
        return (coroutineContextA == z0.a() || coroutineContextA.get(ContinuationInterceptor.INSTANCE) != null) ? coroutineContextA : coroutineContextA.plus(z0.a());
    }

    @Nullable
    public static final d3<?> f(@NotNull CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof v0) && (coroutineStackFrame = coroutineStackFrame.getCallerFrame()) != null) {
            if (coroutineStackFrame instanceof d3) {
                return (d3) coroutineStackFrame;
            }
        }
        return null;
    }

    @Nullable
    public static final d3<?> g(@NotNull Continuation<?> continuation, @NotNull CoroutineContext coroutineContext, @Nullable Object obj) {
        if (!(continuation instanceof CoroutineStackFrame)) {
            return null;
        }
        if (!(coroutineContext.get(e3.f92803b) != null)) {
            return null;
        }
        d3<?> d3VarF = f((CoroutineStackFrame) continuation);
        if (d3VarF != null) {
            d3VarF.L1(coroutineContext, obj);
        }
        return d3VarF;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0022 A[DONT_GENERATE] */
    public static final <T> T h(@NotNull Continuation<?> continuation, @Nullable Object obj, @NotNull Function0<? extends T> function0) {
        CoroutineContext context = continuation.get$context();
        Object objC = ThreadContextKt.c(context, obj);
        d3<?> d3VarG = objC != ThreadContextKt.f93468a ? g(continuation, context, objC) : null;
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            if (d3VarG == null || d3VarG.K1()) {
                ThreadContextKt.a(context, objC);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    public static final <T> T i(@NotNull CoroutineContext coroutineContext, @Nullable Object obj, @NotNull Function0<? extends T> function0) {
        Object objC = ThreadContextKt.c(coroutineContext, obj);
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            ThreadContextKt.a(coroutineContext, objC);
            InlineMarker.finallyEnd(1);
        }
    }
}
