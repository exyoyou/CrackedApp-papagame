package kotlinx.coroutines.stream;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.stream.Stream;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlinx.coroutines.flow.e;
import kotlinx.coroutines.flow.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class StreamFlow<T> implements e<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93775c = AtomicIntegerFieldUpdater.newUpdater(StreamFlow.class, "consumed$volatile");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Stream<T> f93776b;
    private volatile /* synthetic */ int consumed$volatile = 0;

    public StreamFlow(@NotNull Stream<T> stream) {
        this.f93776b = stream;
    }

    private final /* synthetic */ int g() {
        return this.consumed$volatile;
    }

    private final /* synthetic */ void i(int i10) {
        this.consumed$volatile = i10;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) throws Throwable {
        StreamFlow$collect$1 streamFlow$collect$1;
        StreamFlow<T> streamFlow;
        f fVar2;
        Iterator it2;
        if (continuation instanceof StreamFlow$collect$1) {
            streamFlow$collect$1 = (StreamFlow$collect$1) continuation;
            int i10 = streamFlow$collect$1.f93782g;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                streamFlow$collect$1.f93782g = i10 - Integer.MIN_VALUE;
            } else {
                streamFlow$collect$1 = new StreamFlow$collect$1(this, continuation);
            }
        } else {
            streamFlow$collect$1 = new StreamFlow$collect$1(this, continuation);
        }
        Object obj = streamFlow$collect$1.f93780e;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = streamFlow$collect$1.f93782g;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj);
            if (!f93775c.compareAndSet(this, 0, 1)) {
                throw new IllegalStateException("Stream.consumeAsFlow can be collected only once".toString());
            }
            try {
                streamFlow = this;
                fVar2 = fVar;
                it2 = this.f93776b.iterator();
            } catch (Throwable th) {
                th = th;
                streamFlow = this;
                streamFlow.f93776b.close();
                throw th;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it2 = (Iterator) streamFlow$collect$1.f93779d;
            f fVar3 = (f) streamFlow$collect$1.f93778c;
            streamFlow = (StreamFlow) streamFlow$collect$1.f93777b;
            try {
                ResultKt.throwOnFailure(obj);
                fVar2 = fVar3;
            } catch (Throwable th2) {
                th = th2;
                streamFlow.f93776b.close();
                throw th;
            }
        }
        while (it2.hasNext()) {
            Object next = it2.next();
            streamFlow$collect$1.f93777b = streamFlow;
            streamFlow$collect$1.f93778c = fVar2;
            streamFlow$collect$1.f93779d = it2;
            streamFlow$collect$1.f93782g = 1;
            if (fVar2.emit(next, streamFlow$collect$1) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        streamFlow.f93776b.close();
        return Unit.INSTANCE;
    }
}
