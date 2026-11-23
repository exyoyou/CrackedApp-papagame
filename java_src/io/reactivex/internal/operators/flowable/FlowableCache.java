package io.reactivex.internal.operators.flowable;

import androidx.lifecycle.i;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.LinkedArrayList;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes.dex */
public final class FlowableCache<T> extends AbstractFlowableWithUpstream<T, T> {
    final AtomicBoolean once;
    final CacheState<T> state;

    static final class CacheState<T> extends LinkedArrayList implements FlowableSubscriber<T> {
        static final ReplaySubscription[] EMPTY = new ReplaySubscription[0];
        static final ReplaySubscription[] TERMINATED = new ReplaySubscription[0];
        final AtomicReference<Subscription> connection;
        volatile boolean isConnected;
        final Flowable<T> source;
        boolean sourceDone;
        final AtomicReference<ReplaySubscription<T>[]> subscribers;

        CacheState(Flowable<T> flowable, int i10) {
            super(i10);
            this.connection = new AtomicReference<>();
            this.source = flowable;
            this.subscribers = new AtomicReference<>(EMPTY);
        }

        public boolean addChild(ReplaySubscription<T> replaySubscription) {
            ReplaySubscription<T>[] replaySubscriptionArr;
            ReplaySubscription[] replaySubscriptionArr2;
            do {
                replaySubscriptionArr = this.subscribers.get();
                if (replaySubscriptionArr == TERMINATED) {
                    return false;
                }
                int length = replaySubscriptionArr.length;
                replaySubscriptionArr2 = new ReplaySubscription[length + 1];
                System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr2, 0, length);
                replaySubscriptionArr2[length] = replaySubscription;
            } while (!i.a(this.subscribers, replaySubscriptionArr, replaySubscriptionArr2));
            return true;
        }

        public void connect() {
            this.source.subscribe((FlowableSubscriber) this);
            this.isConnected = true;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.sourceDone) {
                return;
            }
            this.sourceDone = true;
            add(NotificationLite.complete());
            SubscriptionHelper.cancel(this.connection);
            for (ReplaySubscription<T> replaySubscription : this.subscribers.getAndSet(TERMINATED)) {
                replaySubscription.replay();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.sourceDone) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.sourceDone = true;
            add(NotificationLite.error(th));
            SubscriptionHelper.cancel(this.connection);
            for (ReplaySubscription<T> replaySubscription : this.subscribers.getAndSet(TERMINATED)) {
                replaySubscription.replay();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t10) {
            if (this.sourceDone) {
                return;
            }
            add(NotificationLite.next(t10));
            for (ReplaySubscription<T> replaySubscription : this.subscribers.get()) {
                replaySubscription.replay();
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this.connection, subscription, Long.MAX_VALUE);
        }

        public void removeChild(ReplaySubscription<T> replaySubscription) {
            ReplaySubscription<T>[] replaySubscriptionArr;
            ReplaySubscription[] replaySubscriptionArr2;
            do {
                replaySubscriptionArr = this.subscribers.get();
                int length = replaySubscriptionArr.length;
                if (length == 0) {
                    return;
                }
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        i10 = -1;
                        break;
                    } else if (replaySubscriptionArr[i10].equals(replaySubscription)) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 < 0) {
                    return;
                }
                if (length == 1) {
                    replaySubscriptionArr2 = EMPTY;
                } else {
                    ReplaySubscription[] replaySubscriptionArr3 = new ReplaySubscription[length - 1];
                    System.arraycopy(replaySubscriptionArr, 0, replaySubscriptionArr3, 0, i10);
                    System.arraycopy(replaySubscriptionArr, i10 + 1, replaySubscriptionArr3, i10, (length - i10) - 1);
                    replaySubscriptionArr2 = replaySubscriptionArr3;
                }
            } while (!i.a(this.subscribers, replaySubscriptionArr, replaySubscriptionArr2));
        }
    }

    static final class ReplaySubscription<T> extends AtomicInteger implements Subscription {
        private static final long CANCELLED = Long.MIN_VALUE;
        private static final long serialVersionUID = -2557562030197141021L;
        final Subscriber<? super T> child;
        Object[] currentBuffer;
        int currentIndexInBuffer;
        long emitted;
        int index;
        final AtomicLong requested = new AtomicLong();
        final CacheState<T> state;

        ReplaySubscription(Subscriber<? super T> subscriber, CacheState<T> cacheState) {
            this.child = subscriber;
            this.state = cacheState;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.requested.getAndSet(Long.MIN_VALUE) != Long.MIN_VALUE) {
                this.state.removeChild(this);
            }
        }

        public void replay() {
            if (getAndIncrement() != 0) {
                return;
            }
            Subscriber<? super T> subscriber = this.child;
            AtomicLong atomicLong = this.requested;
            long j10 = this.emitted;
            int i10 = 1;
            int iAddAndGet = 1;
            while (true) {
                long j11 = atomicLong.get();
                if (j11 == Long.MIN_VALUE) {
                    return;
                }
                int size = this.state.size();
                if (size != 0) {
                    Object[] objArrHead = this.currentBuffer;
                    if (objArrHead == null) {
                        objArrHead = this.state.head();
                        this.currentBuffer = objArrHead;
                    }
                    int length = objArrHead.length - i10;
                    int i11 = this.index;
                    int i12 = this.currentIndexInBuffer;
                    while (i11 < size && j10 != j11) {
                        if (atomicLong.get() == Long.MIN_VALUE) {
                            return;
                        }
                        if (i12 == length) {
                            objArrHead = (Object[]) objArrHead[length];
                            i12 = 0;
                        }
                        if (NotificationLite.accept(objArrHead[i12], subscriber)) {
                            return;
                        }
                        i12++;
                        i11++;
                        j10++;
                    }
                    if (atomicLong.get() == Long.MIN_VALUE) {
                        return;
                    }
                    if (j11 == j10) {
                        Object obj = objArrHead[i12];
                        if (NotificationLite.isComplete(obj)) {
                            subscriber.onComplete();
                            return;
                        } else if (NotificationLite.isError(obj)) {
                            subscriber.onError(NotificationLite.getError(obj));
                            return;
                        }
                    }
                    this.index = i11;
                    this.currentIndexInBuffer = i12;
                    this.currentBuffer = objArrHead;
                }
                this.emitted = j10;
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                } else {
                    i10 = 1;
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j10) {
            if (SubscriptionHelper.validate(j10)) {
                BackpressureHelper.addCancel(this.requested, j10);
                replay();
            }
        }
    }

    public FlowableCache(Flowable<T> flowable, int i10) {
        super(flowable);
        this.state = new CacheState<>(flowable, i10);
        this.once = new AtomicBoolean();
    }

    int cachedEventCount() {
        return this.state.size();
    }

    boolean hasSubscribers() {
        return this.state.subscribers.get().length != 0;
    }

    boolean isConnected() {
        return this.state.isConnected;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        boolean z10;
        ReplaySubscription<T> replaySubscription = new ReplaySubscription<>(subscriber, this.state);
        subscriber.onSubscribe(replaySubscription);
        if (this.state.addChild(replaySubscription) && replaySubscription.requested.get() == Long.MIN_VALUE) {
            this.state.removeChild(replaySubscription);
            z10 = false;
        } else {
            z10 = true;
        }
        if (!this.once.get() && this.once.compareAndSet(false, true)) {
            this.state.connect();
        }
        if (z10) {
            replaySubscription.replay();
        }
    }
}
