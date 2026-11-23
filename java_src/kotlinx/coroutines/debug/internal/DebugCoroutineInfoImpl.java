package kotlinx.coroutines.debug.internal;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt__SequenceBuilderKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nDebugCoroutineInfoImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugCoroutineInfoImpl.kt\nkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,176:1\n1#2:177\n*E\n"})
public final class DebugCoroutineInfoImpl {

    @JvmField
    @Nullable
    public volatile WeakReference<CoroutineStackFrame> _lastObservedFrame;

    @JvmField
    @NotNull
    public volatile String _state = d.f92787a;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final i f92741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public final long f92742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private final WeakReference<CoroutineContext> f92743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f92744d;

    @JvmField
    @Nullable
    public volatile Thread lastObservedThread;

    public DebugCoroutineInfoImpl(@Nullable CoroutineContext coroutineContext, @Nullable i iVar, long j10) {
        this.f92741a = iVar;
        this.f92742b = j10;
        this.f92743c = new WeakReference<>(coroutineContext);
    }

    private final List<StackTraceElement> b() {
        i iVar = this.f92741a;
        return iVar == null ? CollectionsKt__CollectionsKt.emptyList() : SequencesKt___SequencesKt.toList(SequencesKt__SequenceBuilderKt.sequence(new DebugCoroutineInfoImpl$creationStackTrace$1(this, iVar, null)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x0046  */
    /* JADX WARN: Code duplicated, block: B:20:0x004c  */
    /* JADX WARN: Code duplicated, block: B:22:0x005a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x005b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0068  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x004a -> B:25:0x0061). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x005b -> B:24:0x005e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:20:0x004c
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object j(kotlin.sequences.SequenceScope<? super java.lang.StackTraceElement> r6, kotlin.coroutines.jvm.internal.CoroutineStackFrame r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1
            if (r0 == 0) goto L13
            r0 = r8
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1 r0 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1) r0
            int r1 = r0.f92754g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f92754g = r1
            goto L18
        L13:
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1 r0 = new kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl$yieldFrames$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f92752e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.f92754g
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r6 = r0.f92751d
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r6 = (kotlin.coroutines.jvm.internal.CoroutineStackFrame) r6
            java.lang.Object r7 = r0.f92750c
            kotlin.sequences.SequenceScope r7 = (kotlin.sequences.SequenceScope) r7
            java.lang.Object r2 = r0.f92749b
            kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl r2 = (kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5e
        L35:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L3d:
            kotlin.ResultKt.throwOnFailure(r8)
            r2 = r5
        L41:
            if (r7 != 0) goto L46
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L46:
            java.lang.StackTraceElement r8 = r7.getStackTraceElement()
            if (r8 == 0) goto L61
            r0.f92749b = r2
            r0.f92750c = r6
            r0.f92751d = r7
            r0.f92754g = r3
            java.lang.Object r8 = r6.yield(r8, r0)
            if (r8 != r1) goto L5b
            return r1
        L5b:
            r4 = r7
            r7 = r6
            r6 = r4
        L5e:
            r4 = r7
            r7 = r6
            r6 = r4
        L61:
            kotlin.coroutines.jvm.internal.CoroutineStackFrame r7 = r7.getCallerFrame()
            if (r7 == 0) goto L68
            goto L41
        L68:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl.j(kotlin.sequences.SequenceScope, kotlin.coroutines.jvm.internal.CoroutineStackFrame, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Nullable
    public final i c() {
        return this.f92741a;
    }

    @NotNull
    public final List<StackTraceElement> d() {
        return b();
    }

    @Nullable
    public final CoroutineStackFrame e() {
        WeakReference<CoroutineStackFrame> weakReference = this._lastObservedFrame;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @NotNull
    public final String f() {
        return this._state;
    }

    @NotNull
    public final List<StackTraceElement> g() {
        CoroutineStackFrame coroutineStackFrameE = e();
        if (coroutineStackFrameE == null) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        while (coroutineStackFrameE != null) {
            StackTraceElement stackTraceElement = coroutineStackFrameE.getStackTraceElement();
            if (stackTraceElement != null) {
                arrayList.add(stackTraceElement);
            }
            coroutineStackFrameE = coroutineStackFrameE.getCallerFrame();
        }
        return arrayList;
    }

    @Nullable
    public final CoroutineContext getContext() {
        return this.f92743c.get();
    }

    public final void h(@Nullable CoroutineStackFrame coroutineStackFrame) {
        this._lastObservedFrame = coroutineStackFrame != null ? new WeakReference<>(coroutineStackFrame) : null;
    }

    public final synchronized void i(@NotNull String str, @NotNull Continuation<?> continuation, boolean z10) {
        if (Intrinsics.areEqual(this._state, d.f92788b) && Intrinsics.areEqual(str, d.f92788b) && z10) {
            this.f92744d++;
        } else if (this.f92744d > 0 && Intrinsics.areEqual(str, d.f92789c)) {
            this.f92744d--;
            return;
        }
        if (Intrinsics.areEqual(this._state, str) && Intrinsics.areEqual(str, d.f92789c) && e() != null) {
            return;
        }
        this._state = str;
        h(continuation instanceof CoroutineStackFrame ? (CoroutineStackFrame) continuation : null);
        this.lastObservedThread = Intrinsics.areEqual(str, d.f92788b) ? Thread.currentThread() : null;
    }

    @NotNull
    public String toString() {
        return "DebugCoroutineInfo(state=" + f() + ",context=" + getContext() + ')';
    }
}
