package kotlinx.coroutines.internal;

import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nStackTraceRecovery.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,212:1\n1735#2,6:213\n12474#2,2:221\n1627#2,6:225\n12474#2,2:231\n1627#2,6:234\n37#3,2:219\n26#4:223\n26#4:224\n1#5:233\n*S KotlinDebug\n*F\n+ 1 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n39#1:213,6\n127#1:221,2\n137#1:225,6\n169#1:231,2\n190#1:234,6\n102#1:219,2\n129#1:223\n131#1:224\n*E\n"})
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final String f93521a = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final String f93522b = "kotlinx.coroutines.internal.StackTraceRecoveryKt";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final StackTraceElement f93523c = new _COROUTINE.a().a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f93524d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f93525e;

    static {
        Object objM50constructorimpl;
        Object objM50constructorimpl2;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(BaseContinuationImpl.class.getCanonicalName());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m53exceptionOrNullimpl(objM50constructorimpl) != null) {
            objM50constructorimpl = f93521a;
        }
        f93524d = (String) objM50constructorimpl;
        try {
            Result.Companion companion3 = Result.INSTANCE;
            objM50constructorimpl2 = Result.m50constructorimpl(p0.class.getCanonicalName());
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            objM50constructorimpl2 = Result.m50constructorimpl(ResultKt.createFailure(th2));
        }
        if (Result.m53exceptionOrNullimpl(objM50constructorimpl2) != null) {
            objM50constructorimpl2 = f93522b;
        }
        f93525e = (String) objM50constructorimpl2;
    }

    public static /* synthetic */ void a() {
    }

    public static /* synthetic */ void b() {
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002d  */
    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    private static final <E extends Throwable> Pair<E, StackTraceElement[]> d(E e10) {
        boolean z10;
        Throwable cause = e10.getCause();
        if (cause == null || !Intrinsics.areEqual(cause.getClass(), e10.getClass())) {
            return TuplesKt.to(e10, new StackTraceElement[0]);
        }
        StackTraceElement[] stackTrace = e10.getStackTrace();
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (j(stackTraceElement)) {
                z10 = true;
                return z10 ? TuplesKt.to(cause, stackTrace) : TuplesKt.to(e10, new StackTraceElement[0]);
            }
        }
        z10 = false;
        if (z10) {
        }
    }

    private static final <E extends Throwable> E e(E e10, E e11, ArrayDeque<StackTraceElement> arrayDeque) {
        arrayDeque.addFirst(f93523c);
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int iH = h(stackTrace, f93524d);
        int i10 = 0;
        if (iH == -1) {
            e11.setStackTrace((StackTraceElement[]) arrayDeque.toArray(new StackTraceElement[0]));
            return e11;
        }
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[arrayDeque.size() + iH];
        for (int i11 = 0; i11 < iH; i11++) {
            stackTraceElementArr[i11] = stackTrace[i11];
        }
        Iterator<StackTraceElement> it2 = arrayDeque.iterator();
        while (it2.hasNext()) {
            int i12 = i10 + 1;
            stackTraceElementArr[i10 + iH] = it2.next();
            i10 = i12;
        }
        e11.setStackTrace(stackTraceElementArr);
        return e11;
    }

    private static final ArrayDeque<StackTraceElement> f(CoroutineStackFrame coroutineStackFrame) {
        ArrayDeque<StackTraceElement> arrayDeque = new ArrayDeque<>();
        StackTraceElement stackTraceElement = coroutineStackFrame.getStackTraceElement();
        if (stackTraceElement != null) {
            arrayDeque.add(stackTraceElement);
        }
        while (true) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return arrayDeque;
            }
            StackTraceElement stackTraceElement2 = coroutineStackFrame.getStackTraceElement();
            if (stackTraceElement2 != null) {
                arrayDeque.add(stackTraceElement2);
            }
        }
    }

    private static final boolean g(StackTraceElement stackTraceElement, StackTraceElement stackTraceElement2) {
        return stackTraceElement.getLineNumber() == stackTraceElement2.getLineNumber() && Intrinsics.areEqual(stackTraceElement.getMethodName(), stackTraceElement2.getMethodName()) && Intrinsics.areEqual(stackTraceElement.getFileName(), stackTraceElement2.getFileName()) && Intrinsics.areEqual(stackTraceElement.getClassName(), stackTraceElement2.getClassName());
    }

    private static final int h(StackTraceElement[] stackTraceElementArr, String str) {
        int length = stackTraceElementArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (Intrinsics.areEqual(str, stackTraceElementArr[i10].getClassName())) {
                return i10;
            }
        }
        return -1;
    }

    public static final void i(@NotNull Throwable th, @NotNull Throwable th2) {
        th.initCause(th2);
    }

    public static final boolean j(@NotNull StackTraceElement stackTraceElement) {
        return StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), _COROUTINE.b.c(), false, 2, null);
    }

    private static final void k(StackTraceElement[] stackTraceElementArr, ArrayDeque<StackTraceElement> arrayDeque) {
        int length = stackTraceElementArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            } else if (j(stackTraceElementArr[i10])) {
                break;
            } else {
                i10++;
            }
        }
        int i11 = i10 + 1;
        int length2 = stackTraceElementArr.length - 1;
        if (i11 > length2) {
            return;
        }
        while (true) {
            if (g(stackTraceElementArr[length2], arrayDeque.getLast())) {
                arrayDeque.removeLast();
            }
            arrayDeque.addFirst(stackTraceElementArr[length2]);
            if (length2 == i11) {
                return;
            } else {
                length2--;
            }
        }
    }

    @Nullable
    public static final Object l(@NotNull Throwable th, @NotNull Continuation<?> continuation) throws Throwable {
        throw th;
    }

    private static final Object m(Throwable th, Continuation<?> continuation) throws Throwable {
        throw th;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E extends Throwable> E n(E e10, CoroutineStackFrame coroutineStackFrame) {
        Pair pairD = d(e10);
        Throwable th = (Throwable) pairD.component1();
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) pairD.component2();
        Throwable thG = ExceptionsConstructorKt.g(th);
        if (thG == null) {
            return e10;
        }
        ArrayDeque<StackTraceElement> arrayDequeF = f(coroutineStackFrame);
        if (arrayDequeF.isEmpty()) {
            return e10;
        }
        if (th != e10) {
            k(stackTraceElementArr, arrayDequeF);
        }
        return (E) e(th, thG, arrayDequeF);
    }

    @NotNull
    public static final <E extends Throwable> E o(@NotNull E e10) {
        return e10;
    }

    @NotNull
    public static final <E extends Throwable> E p(@NotNull E e10, @NotNull Continuation<?> continuation) {
        return e10;
    }

    private static final <E extends Throwable> E q(E e10) {
        StackTraceElement[] stackTrace = e10.getStackTrace();
        int length = stackTrace.length;
        int length2 = stackTrace.length - 1;
        if (length2 < 0) {
            length2 = -1;
            break;
        }
        while (true) {
            int i10 = length2 - 1;
            if (Intrinsics.areEqual(f93525e, stackTrace[length2].getClassName())) {
                break;
            }
            if (i10 < 0) {
                length2 = -1;
                break;
            }
            length2 = i10;
        }
        int i11 = length2 + 1;
        int iH = h(stackTrace, f93524d);
        int i12 = 0;
        int i13 = (length - length2) - (iH == -1 ? 0 : length - iH);
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[i13];
        while (i12 < i13) {
            stackTraceElementArr[i12] = i12 == 0 ? f93523c : stackTrace[(i11 + i12) - 1];
            i12++;
        }
        e10.setStackTrace(stackTraceElementArr);
        return e10;
    }

    @PublishedApi
    @NotNull
    public static final <E extends Throwable> E r(@NotNull E e10) {
        return e10;
    }

    @PublishedApi
    @NotNull
    public static final <E extends Throwable> E s(@NotNull E e10) {
        E e11 = (E) e10.getCause();
        if (e11 != null && Intrinsics.areEqual(e11.getClass(), e10.getClass())) {
            boolean z10 = false;
            for (StackTraceElement stackTraceElement : e10.getStackTrace()) {
                if (j(stackTraceElement)) {
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                return e11;
            }
        }
        return e10;
    }
}
