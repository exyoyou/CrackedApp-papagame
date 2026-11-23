package kotlinx.coroutines.debug.internal;

import java.io.PrintStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.concurrent.ThreadsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.internal.m0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.y1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nDebugProbesImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,616:1\n146#1:634\n147#1,4:636\n152#1,5:641\n146#1:646\n147#1,4:648\n152#1,5:653\n1#2:617\n1#2:635\n1#2:647\n766#3:618\n857#3,2:619\n1208#3,2:621\n1238#3,4:623\n1855#3,2:661\n350#3,7:669\n1819#3,8:676\n603#4:627\n603#4:640\n603#4:652\n603#4:658\n1313#4,2:659\n37#5,2:628\n37#5,2:630\n37#5,2:632\n1627#6,6:663\n1735#6,6:684\n*S KotlinDebug\n*F\n+ 1 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n241#1:634\n241#1:636,4\n241#1:641,5\n248#1:646\n248#1:648,4\n248#1:653,5\n241#1:635\n248#1:647\n106#1:618\n106#1:619,2\n107#1:621,2\n107#1:623,4\n303#1:661,2\n412#1:669,7\n502#1:676,8\n150#1:627\n241#1:640\n248#1:652\n283#1:658\n284#1:659,2\n207#1:628,2\n208#1:630,2\n209#1:632,2\n351#1:663,6\n554#1:684,6\n*E\n"})
public final class DebugProbesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final DebugProbesImpl f92755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static final StackTraceElement f92756b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final SimpleDateFormat f92757c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private static Thread f92758d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private static final ConcurrentWeakMap<a<?>, Boolean> f92759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f92760f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f92761g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f92762h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    private static final Function1<Boolean, Unit> f92763i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private static final ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> f92764j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ b f92765k;

    public static final class a<T> implements Continuation<T>, CoroutineStackFrame {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        @NotNull
        public final Continuation<T> f92766b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @JvmField
        @NotNull
        public final DebugCoroutineInfoImpl f92767c;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull Continuation<? super T> continuation, @NotNull DebugCoroutineInfoImpl debugCoroutineInfoImpl) {
            this.f92766b = continuation;
            this.f92767c = debugCoroutineInfoImpl;
        }

        private final i b() {
            return this.f92767c.c();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public CoroutineStackFrame getCallerFrame() {
            i iVarB = b();
            if (iVarB != null) {
                return iVarB.getCallerFrame();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        @NotNull
        /* JADX INFO: renamed from: getContext */
        public CoroutineContext get$context() {
            return this.f92766b.get$context();
        }

        @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
        @Nullable
        public StackTraceElement getStackTraceElement() {
            i iVarB = b();
            if (iVarB != null) {
                return iVarB.getStackTraceElement();
            }
            return null;
        }

        @Override // kotlin.coroutines.Continuation
        public void resumeWith(@NotNull Object obj) {
            DebugProbesImpl.f92755a.G(this);
            this.f92766b.resumeWith(obj);
        }

        @NotNull
        public String toString() {
            return this.f92766b.toString();
        }
    }

    private /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f92768a = AtomicIntegerFieldUpdater.newUpdater(b.class, "installations$volatile");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final /* synthetic */ AtomicLongFieldUpdater f92769b = AtomicLongFieldUpdater.newUpdater(b.class, "sequenceNumber$volatile");
        private volatile /* synthetic */ int installations$volatile;
        private volatile /* synthetic */ long sequenceNumber$volatile;

        private b() {
        }

        private final /* synthetic */ int c() {
            return this.installations$volatile;
        }

        private final /* synthetic */ long e() {
            return this.sequenceNumber$volatile;
        }

        private final /* synthetic */ void g(int i10) {
            this.installations$volatile = i10;
        }

        private final /* synthetic */ void h(long j10) {
            this.sequenceNumber$volatile = j10;
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n1#1,328:1\n150#2:329\n*E\n"})
    public static final class c<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((a) t10).f92767c.f92742b), Long.valueOf(((a) t11).f92767c.f92742b));
        }
    }

    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 DebugProbesImpl.kt\nkotlinx/coroutines/debug/internal/DebugProbesImpl\n*L\n1#1,328:1\n283#2:329\n*E\n"})
    public static final class d<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((a) t10).f92767c.f92742b), Long.valueOf(((a) t11).f92767c.f92742b));
        }
    }

    static {
        DebugProbesImpl debugProbesImpl = new DebugProbesImpl();
        f92755a = debugProbesImpl;
        f92756b = new _COROUTINE.a().b();
        f92757c = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        f92759e = new ConcurrentWeakMap<>(false, 1, null);
        f92760f = true;
        f92762h = true;
        f92763i = debugProbesImpl.u();
        f92764j = new ConcurrentWeakMap<>(true);
        f92765k = new b(null);
    }

    private DebugProbesImpl() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean A(a<?> aVar) {
        v1 v1Var;
        CoroutineContext context = aVar.f92767c.getContext();
        if (context == null || (v1Var = (v1) context.get(v1.F1)) == null || !v1Var.isCompleted()) {
            return false;
        }
        f92759e.remove(aVar);
        return true;
    }

    private final boolean C(StackTraceElement stackTraceElement) {
        return StringsKt__StringsJVMKt.startsWith$default(stackTraceElement.getClassName(), "kotlinx.coroutines", false, 2, null);
    }

    private final a<?> D(Continuation<?> continuation) {
        CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
        if (coroutineStackFrame != null) {
            return E(coroutineStackFrame);
        }
        return null;
    }

    private final a<?> E(CoroutineStackFrame coroutineStackFrame) {
        while (!(coroutineStackFrame instanceof a)) {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        }
        return (a) coroutineStackFrame;
    }

    private final void F(PrintStream printStream, List<StackTraceElement> list) {
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            printStream.print("\n\tat " + ((StackTraceElement) it2.next()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(a<?> aVar) {
        CoroutineStackFrame coroutineStackFrameK;
        f92759e.remove(aVar);
        CoroutineStackFrame coroutineStackFrameE = aVar.f92767c.e();
        if (coroutineStackFrameE == null || (coroutineStackFrameK = K(coroutineStackFrameE)) == null) {
            return;
        }
        f92764j.remove(coroutineStackFrameK);
    }

    private final CoroutineStackFrame K(CoroutineStackFrame coroutineStackFrame) {
        do {
            coroutineStackFrame = coroutineStackFrame.getCallerFrame();
            if (coroutineStackFrame == null) {
                return null;
            }
        } while (coroutineStackFrame.getStackTraceElement() == null);
        return coroutineStackFrame;
    }

    private final <T extends Throwable> List<StackTraceElement> L(T t10) {
        StackTraceElement[] stackTrace = t10.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        int length2 = stackTrace.length - 1;
        if (length2 >= 0) {
            while (true) {
                int i11 = length2 - 1;
                if (Intrinsics.areEqual(stackTrace[length2].getClassName(), "kotlin.coroutines.jvm.internal.DebugProbesKt")) {
                    i10 = length2;
                    break;
                }
                if (i11 < 0) {
                    break;
                }
                length2 = i11;
            }
        }
        int i12 = i10 + 1;
        if (!f92760f) {
            int i13 = length - i12;
            ArrayList arrayList = new ArrayList(i13);
            for (int i14 = 0; i14 < i13; i14++) {
                arrayList.add(stackTrace[i14 + i12]);
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList((length - i12) + 1);
        while (i12 < length) {
            if (C(stackTrace[i12])) {
                arrayList2.add(stackTrace[i12]);
                int i15 = i12 + 1;
                while (i15 < length && C(stackTrace[i15])) {
                    i15++;
                }
                int i16 = i15 - 1;
                int i17 = i16;
                while (i17 > i12 && stackTrace[i17].getFileName() == null) {
                    i17--;
                }
                if (i17 > i12 && i17 < i16) {
                    arrayList2.add(stackTrace[i17]);
                }
                arrayList2.add(stackTrace[i16]);
                i12 = i15;
            } else {
                arrayList2.add(stackTrace[i12]);
                i12++;
            }
        }
        return arrayList2;
    }

    private final void P() {
        f92758d = ThreadsKt.thread((21 & 1) != 0, (21 & 2) != 0 ? false : true, (21 & 4) != 0 ? null : null, (21 & 8) != 0 ? null : "Coroutines Debugger Cleaner", (21 & 16) != 0 ? -1 : 0, new Function0<Unit>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$startWeakRefCleanerThread$1
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                DebugProbesImpl.f92764j.k();
            }
        });
    }

    private final void Q() throws InterruptedException {
        Thread thread = f92758d;
        if (thread == null) {
            return;
        }
        f92758d = null;
        thread.interrupt();
        thread.join();
    }

    private final i R(List<StackTraceElement> list) {
        i iVar = null;
        if (!list.isEmpty()) {
            ListIterator<StackTraceElement> listIterator = list.listIterator(list.size());
            while (listIterator.hasPrevious()) {
                iVar = new i(iVar, listIterator.previous());
            }
        }
        return new i(iVar, f92756b);
    }

    private final String S(Object obj) {
        return e.b(obj.toString());
    }

    private final void U(CoroutineStackFrame coroutineStackFrame, String str) {
        boolean z10;
        if (B()) {
            ConcurrentWeakMap<CoroutineStackFrame, DebugCoroutineInfoImpl> concurrentWeakMap = f92764j;
            DebugCoroutineInfoImpl debugCoroutineInfoImplRemove = concurrentWeakMap.remove(coroutineStackFrame);
            if (debugCoroutineInfoImplRemove != null) {
                z10 = false;
            } else {
                a<?> aVarE = E(coroutineStackFrame);
                if (aVarE == null || (debugCoroutineInfoImplRemove = aVarE.f92767c) == null) {
                    return;
                }
                CoroutineStackFrame coroutineStackFrameE = debugCoroutineInfoImplRemove.e();
                CoroutineStackFrame coroutineStackFrameK = coroutineStackFrameE != null ? K(coroutineStackFrameE) : null;
                if (coroutineStackFrameK != null) {
                    concurrentWeakMap.remove(coroutineStackFrameK);
                }
                z10 = true;
            }
            Intrinsics.checkNotNull(coroutineStackFrame, "null cannot be cast to non-null type kotlin.coroutines.Continuation<*>");
            debugCoroutineInfoImplRemove.i(str, (Continuation) coroutineStackFrame, z10);
            CoroutineStackFrame coroutineStackFrameK2 = K(coroutineStackFrame);
            if (coroutineStackFrameK2 == null) {
                return;
            }
            concurrentWeakMap.put(coroutineStackFrameK2, debugCoroutineInfoImplRemove);
        }
    }

    private final void V(Continuation<?> continuation, String str) {
        if (B()) {
            if (f92762h && continuation.get$context() == EmptyCoroutineContext.INSTANCE) {
                return;
            }
            if (Intrinsics.areEqual(str, kotlinx.coroutines.debug.internal.d.f92788b)) {
                CoroutineStackFrame coroutineStackFrame = continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null;
                if (coroutineStackFrame == null) {
                    return;
                }
                U(coroutineStackFrame, str);
                return;
            }
            a<?> aVarD = D(continuation);
            if (aVarD == null) {
                return;
            }
            W(aVarD, continuation, str);
        }
    }

    private final void W(a<?> aVar, Continuation<?> continuation, String str) {
        if (B()) {
            aVar.f92767c.i(str, continuation, true);
        }
    }

    private final void d(v1 v1Var, Map<v1, DebugCoroutineInfoImpl> map, StringBuilder sb2, String str) {
        DebugCoroutineInfoImpl debugCoroutineInfoImpl = map.get(v1Var);
        if (debugCoroutineInfoImpl != null) {
            StackTraceElement stackTraceElement = (StackTraceElement) CollectionsKt___CollectionsKt.firstOrNull((List) debugCoroutineInfoImpl.g());
            sb2.append(str + s(v1Var) + ", continuation is " + debugCoroutineInfoImpl.f() + " at line " + stackTraceElement + '\n');
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str);
            sb3.append('\t');
            str = sb3.toString();
        } else if (!(v1Var instanceof m0)) {
            sb2.append(str + s(v1Var) + '\n');
            StringBuilder sb4 = new StringBuilder();
            sb4.append(str);
            sb4.append('\t');
            str = sb4.toString();
        }
        Iterator<v1> it2 = v1Var.K().iterator();
        while (it2.hasNext()) {
            d(it2.next(), map, sb2, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final <T> Continuation<T> e(Continuation<? super T> continuation, i iVar) {
        if (!B()) {
            return continuation;
        }
        a<?> aVar = new a<>(continuation, new DebugCoroutineInfoImpl(continuation.get$context(), iVar, b.f92769b.incrementAndGet(f92765k)));
        ConcurrentWeakMap<a<?>, Boolean> concurrentWeakMap = f92759e;
        concurrentWeakMap.put(aVar, Boolean.TRUE);
        if (!B()) {
            concurrentWeakMap.clear();
        }
        return aVar;
    }

    private final <R> List<R> i(final Function2<? super a<?>, ? super CoroutineContext, ? extends R> function2) {
        if (B()) {
            return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.sortedWith(CollectionsKt___CollectionsKt.asSequence(q()), new c()), new Function1<a<?>, R>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfoImpl$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final R invoke(@NotNull DebugProbesImpl.a<?> aVar) {
                    CoroutineContext context;
                    if (DebugProbesImpl.f92755a.A(aVar) || (context = aVar.f92767c.getContext()) == null) {
                        return null;
                    }
                    return function2.invoke(aVar, context);
                }
            }));
        }
        throw new IllegalStateException("Debug probes are not installed".toString());
    }

    private final void j(PrintStream printStream) {
        if (!B()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        printStream.print("Coroutines dump " + f92757c.format(Long.valueOf(System.currentTimeMillis())));
        for (a aVar : SequencesKt___SequencesKt.sortedWith(SequencesKt___SequencesKt.filter(CollectionsKt___CollectionsKt.asSequence(q()), new Function1<a<?>, Boolean>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesSynchronized$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Boolean invoke(@NotNull DebugProbesImpl.a<?> aVar2) {
                return Boolean.valueOf(!DebugProbesImpl.f92755a.A(aVar2));
            }
        }), new d())) {
            DebugCoroutineInfoImpl debugCoroutineInfoImpl = aVar.f92767c;
            List<StackTraceElement> listG = debugCoroutineInfoImpl.g();
            DebugProbesImpl debugProbesImpl = f92755a;
            List<StackTraceElement> listN = debugProbesImpl.n(debugCoroutineInfoImpl.f(), debugCoroutineInfoImpl.lastObservedThread, listG);
            printStream.print("\n\nCoroutine " + aVar.f92766b + ", state: " + ((Intrinsics.areEqual(debugCoroutineInfoImpl.f(), kotlinx.coroutines.debug.internal.d.f92788b) && listN == listG) ? debugCoroutineInfoImpl.f() + " (Last suspension stacktrace, not an actual stacktrace)" : debugCoroutineInfoImpl.f()));
            if (listG.isEmpty()) {
                printStream.print("\n\tat " + f92756b);
                debugProbesImpl.F(printStream, debugCoroutineInfoImpl.d());
            } else {
                debugProbesImpl.F(printStream, listN);
            }
        }
    }

    private final List<StackTraceElement> n(String str, Thread thread, List<StackTraceElement> list) {
        Object objM50constructorimpl;
        if (!Intrinsics.areEqual(str, kotlinx.coroutines.debug.internal.d.f92788b) || thread == null) {
            return list;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(thread.getStackTrace());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m56isFailureimpl(objM50constructorimpl)) {
            objM50constructorimpl = null;
        }
        StackTraceElement[] stackTraceElementArr = (StackTraceElement[]) objM50constructorimpl;
        if (stackTraceElementArr == null) {
            return list;
        }
        int length = stackTraceElementArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i10];
            if (Intrinsics.areEqual(stackTraceElement.getClassName(), "kotlin.coroutines.jvm.internal.BaseContinuationImpl") && Intrinsics.areEqual(stackTraceElement.getMethodName(), "resumeWith") && Intrinsics.areEqual(stackTraceElement.getFileName(), "ContinuationImpl.kt")) {
                break;
            }
            i10++;
        }
        Pair<Integer, Integer> pairO = o(i10, stackTraceElementArr, list);
        int iIntValue = pairO.component1().intValue();
        int iIntValue2 = pairO.component2().intValue();
        if (iIntValue == -1) {
            return list;
        }
        ArrayList arrayList = new ArrayList((((list.size() + i10) - iIntValue) - 1) - iIntValue2);
        int i11 = i10 - iIntValue2;
        for (int i12 = 0; i12 < i11; i12++) {
            arrayList.add(stackTraceElementArr[i12]);
        }
        int size = list.size();
        for (int i13 = iIntValue + 1; i13 < size; i13++) {
            arrayList.add(list.get(i13));
        }
        return arrayList;
    }

    private final Pair<Integer, Integer> o(int i10, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        for (int i11 = 0; i11 < 3; i11++) {
            int iP = f92755a.p((i10 - 1) - i11, stackTraceElementArr, list);
            if (iP != -1) {
                return TuplesKt.to(Integer.valueOf(iP), Integer.valueOf(i11));
            }
        }
        return TuplesKt.to(-1, 0);
    }

    private final int p(int i10, StackTraceElement[] stackTraceElementArr, List<StackTraceElement> list) {
        StackTraceElement stackTraceElement = (StackTraceElement) ArraysKt___ArraysKt.getOrNull(stackTraceElementArr, i10);
        if (stackTraceElement == null) {
            return -1;
        }
        int i11 = 0;
        for (StackTraceElement stackTraceElement2 : list) {
            if (Intrinsics.areEqual(stackTraceElement2.getFileName(), stackTraceElement.getFileName()) && Intrinsics.areEqual(stackTraceElement2.getClassName(), stackTraceElement.getClassName()) && Intrinsics.areEqual(stackTraceElement2.getMethodName(), stackTraceElement.getMethodName())) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    private final Set<a<?>> q() {
        return f92759e.keySet();
    }

    private final String s(v1 v1Var) {
        return v1Var instanceof JobSupport ? ((JobSupport) v1Var).z1() : v1Var.toString();
    }

    private static /* synthetic */ void t(v1 v1Var) {
    }

    private final Function1<Boolean, Unit> u() {
        Object objM50constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objNewInstance = Class.forName("kotlinx.coroutines.debug.internal.ByteBuddyDynamicAttach").getConstructors()[0].newInstance(new Object[0]);
            Intrinsics.checkNotNull(objNewInstance, "null cannot be cast to non-null type kotlin.Function1<kotlin.Boolean, kotlin.Unit>");
            objM50constructorimpl = Result.m50constructorimpl((Function1) TypeIntrinsics.beforeCheckcastToFunctionOfArity(objNewInstance, 1));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m56isFailureimpl(objM50constructorimpl)) {
            objM50constructorimpl = null;
        }
        return (Function1) objM50constructorimpl;
    }

    @JvmName(name = "isInstalled$kotlinx_coroutines_debug")
    public final boolean B() {
        return b.f92768a.get(f92765k) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final <T> Continuation<T> H(@NotNull Continuation<? super T> continuation) {
        if (!B()) {
            return continuation;
        }
        if (!(f92762h && continuation.get$context() == EmptyCoroutineContext.INSTANCE) && D(continuation) == null) {
            return e(continuation, f92761g ? R(L(new Exception())) : null);
        }
        return continuation;
    }

    public final void I(@NotNull Continuation<?> continuation) {
        V(continuation, kotlinx.coroutines.debug.internal.d.f92788b);
    }

    public final void J(@NotNull Continuation<?> continuation) {
        V(continuation, kotlinx.coroutines.debug.internal.d.f92789c);
    }

    public final void M(boolean z10) {
        f92761g = z10;
    }

    public final void N(boolean z10) {
        f92762h = z10;
    }

    public final void O(boolean z10) {
        f92760f = z10;
    }

    public final void T() throws InterruptedException {
        Function1<Boolean, Unit> function1;
        if (!B()) {
            throw new IllegalStateException("Agent was not installed".toString());
        }
        if (b.f92768a.decrementAndGet(f92765k) != 0) {
            return;
        }
        Q();
        f92759e.clear();
        f92764j.clear();
        if (kotlinx.coroutines.debug.internal.a.f92772a.a() || (function1 = f92763i) == null) {
            return;
        }
        function1.invoke(Boolean.FALSE);
    }

    @JvmName(name = "dumpCoroutines")
    public final void f(@NotNull PrintStream printStream) {
        synchronized (printStream) {
            f92755a.j(printStream);
            Unit unit = Unit.INSTANCE;
        }
    }

    @NotNull
    public final List<kotlinx.coroutines.debug.internal.c> g() {
        if (B()) {
            return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.sortedWith(CollectionsKt___CollectionsKt.asSequence(q()), new c()), new Function1<a<?>, kotlinx.coroutines.debug.internal.c>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpCoroutinesInfo$$inlined$dumpCoroutinesInfoImpl$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final c invoke(@NotNull DebugProbesImpl.a<?> aVar) {
                    CoroutineContext context;
                    if (DebugProbesImpl.f92755a.A(aVar) || (context = aVar.f92767c.getContext()) == null) {
                        return null;
                    }
                    return new c(aVar.f92767c, context);
                }
            }));
        }
        throw new IllegalStateException("Debug probes are not installed".toString());
    }

    @NotNull
    public final Object[] h() {
        String name;
        List<kotlinx.coroutines.debug.internal.c> listG = g();
        int size = listG.size();
        ArrayList arrayList = new ArrayList(size);
        ArrayList arrayList2 = new ArrayList(size);
        ArrayList arrayList3 = new ArrayList(size);
        for (kotlinx.coroutines.debug.internal.c cVar : listG) {
            CoroutineContext context = cVar.getContext();
            k0 k0Var = (k0) context.get(k0.f93578c);
            Long lValueOf = null;
            String strS = (k0Var == null || (name = k0Var.getName()) == null) ? null : S(name);
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) context.get(CoroutineDispatcher.Key);
            String strS2 = coroutineDispatcher != null ? S(coroutineDispatcher) : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n                {\n                    \"name\": ");
            sb2.append(strS);
            sb2.append(",\n                    \"id\": ");
            j0 j0Var = (j0) context.get(j0.f93575c);
            if (j0Var != null) {
                lValueOf = Long.valueOf(j0Var.e0());
            }
            sb2.append(lValueOf);
            sb2.append(",\n                    \"dispatcher\": ");
            sb2.append(strS2);
            sb2.append(",\n                    \"sequenceNumber\": ");
            sb2.append(cVar.e());
            sb2.append(",\n                    \"state\": \"");
            sb2.append(cVar.f());
            sb2.append("\"\n                } \n                ");
            arrayList3.add(StringsKt__IndentKt.trimIndent(sb2.toString()));
            arrayList2.add(cVar.c());
            arrayList.add(cVar.d());
        }
        return new Object[]{'[' + CollectionsKt___CollectionsKt.joinToString$default(arrayList3, null, null, null, 0, null, null, 63, null) + ']', arrayList.toArray(new Thread[0]), arrayList2.toArray(new CoroutineStackFrame[0]), listG.toArray(new kotlinx.coroutines.debug.internal.c[0])};
    }

    @NotNull
    public final List<DebuggerInfo> k() {
        if (B()) {
            return SequencesKt___SequencesKt.toList(SequencesKt___SequencesKt.mapNotNull(SequencesKt___SequencesKt.sortedWith(CollectionsKt___CollectionsKt.asSequence(q()), new c()), new Function1<a<?>, DebuggerInfo>() { // from class: kotlinx.coroutines.debug.internal.DebugProbesImpl$dumpDebuggerInfo$$inlined$dumpCoroutinesInfoImpl$1
                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final DebuggerInfo invoke(@NotNull DebugProbesImpl.a<?> aVar) {
                    CoroutineContext context;
                    if (DebugProbesImpl.f92755a.A(aVar) || (context = aVar.f92767c.getContext()) == null) {
                        return null;
                    }
                    return new DebuggerInfo(aVar.f92767c, context);
                }
            }));
        }
        throw new IllegalStateException("Debug probes are not installed".toString());
    }

    @NotNull
    public final List<StackTraceElement> l(@NotNull kotlinx.coroutines.debug.internal.c cVar, @NotNull List<StackTraceElement> list) {
        return n(cVar.f(), cVar.d(), list);
    }

    @NotNull
    public final String m(@NotNull kotlinx.coroutines.debug.internal.c cVar) {
        List<StackTraceElement> listL = l(cVar, cVar.g());
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : listL) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("\n                {\n                    \"declaringClass\": \"");
            sb2.append(stackTraceElement.getClassName());
            sb2.append("\",\n                    \"methodName\": \"");
            sb2.append(stackTraceElement.getMethodName());
            sb2.append("\",\n                    \"fileName\": ");
            String fileName = stackTraceElement.getFileName();
            sb2.append(fileName != null ? S(fileName) : null);
            sb2.append(",\n                    \"lineNumber\": ");
            sb2.append(stackTraceElement.getLineNumber());
            sb2.append("\n                }\n                ");
            arrayList.add(StringsKt__IndentKt.trimIndent(sb2.toString()));
        }
        return '[' + CollectionsKt___CollectionsKt.joinToString$default(arrayList, null, null, null, 0, null, null, 63, null) + ']';
    }

    public final boolean v() {
        return f92761g;
    }

    public final boolean w() {
        return f92762h;
    }

    public final boolean x() {
        return f92760f;
    }

    @NotNull
    public final String y(@NotNull v1 v1Var) {
        if (!B()) {
            throw new IllegalStateException("Debug probes are not installed".toString());
        }
        Set<a<?>> setQ = q();
        ArrayList<a> arrayList = new ArrayList();
        for (Object obj : setQ) {
            if (((a) obj).f92766b.get$context().get(v1.F1) != null) {
                arrayList.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10)), 16));
        for (a aVar : arrayList) {
            linkedHashMap.put(y1.B(aVar.f92766b.get$context()), aVar.f92767c);
        }
        StringBuilder sb2 = new StringBuilder();
        f92755a.d(v1Var, linkedHashMap, sb2, "");
        String string = sb2.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    public final void z() {
        Function1<Boolean, Unit> function1;
        if (b.f92768a.incrementAndGet(f92765k) > 1) {
            return;
        }
        P();
        if (kotlinx.coroutines.debug.internal.a.f92772a.a() || (function1 = f92763i) == null) {
            return;
        }
        function1.invoke(Boolean.TRUE);
    }
}
