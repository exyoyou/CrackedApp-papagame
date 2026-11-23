package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class SelectKt {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f93746b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f93747c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f93748d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f93749e = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final Function3<Object, Object, Object, Object> f93745a = new Function3() { // from class: kotlinx.coroutines.selects.SelectKt$DUMMY_PROCESS_RESULT_FUNCTION$1
        @Override // kotlin.jvm.functions.Function3
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(@NotNull Object obj, @Nullable Object obj2, @Nullable Object obj3) {
            return null;
        }
    };

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private static final q0 f93750f = new q0("STATE_REG");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private static final q0 f93751g = new q0("STATE_COMPLETED");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private static final q0 f93752h = new q0("STATE_CANCELLED");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private static final q0 f93753i = new q0("NO_RESULT");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private static final q0 f93754j = new q0("PARAM_CLAUSE_0");

    @InternalCoroutinesApi
    public static /* synthetic */ void a() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void b() {
    }

    @InternalCoroutinesApi
    public static /* synthetic */ void c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TrySelectDetailedResult d(int i10) {
        if (i10 == 0) {
            return TrySelectDetailedResult.SUCCESSFUL;
        }
        if (i10 == 1) {
            return TrySelectDetailedResult.REREGISTER;
        }
        if (i10 == 2) {
            return TrySelectDetailedResult.CANCELLED;
        }
        if (i10 == 3) {
            return TrySelectDetailedResult.ALREADY_SELECTED;
        }
        throw new IllegalStateException(("Unexpected internal result: " + i10).toString());
    }

    @NotNull
    public static final q0 l() {
        return f93754j;
    }

    @Nullable
    public static final <R> Object m(@NotNull Function1<? super b<? super R>, Unit> function1, @NotNull Continuation<? super R> continuation) {
        SelectImplementation selectImplementation = new SelectImplementation(continuation.getContext());
        function1.invoke(selectImplementation);
        return selectImplementation.w(continuation);
    }

    private static final <R> Object n(Function1<? super b<? super R>, Unit> function1, Continuation<? super R> continuation) {
        InlineMarker.mark(3);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean o(kotlinx.coroutines.n<? super Unit> nVar, Function1<? super Throwable, Unit> function1) {
        Object objH = nVar.H(Unit.INSTANCE, null, function1);
        if (objH == null) {
            return false;
        }
        nVar.B(objH);
        return true;
    }
}
