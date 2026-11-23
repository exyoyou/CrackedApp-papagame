package io.reactivex.internal.operators.parallel;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.parallel.ParallelFlowable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLongArray;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* JADX INFO: loaded from: classes.dex */
public final class ParallelFromPublisher<T> extends ParallelFlowable<T> {
    final int parallelism;
    final int prefetch;
    final Publisher<? extends T> source;

    static final class ParallelDispatcher<T> extends AtomicInteger implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -4470634016609963609L;
        volatile boolean cancelled;
        volatile boolean done;
        final long[] emissions;
        Throwable error;
        int index;
        final int limit;
        final int prefetch;
        int produced;
        SimpleQueue<T> queue;
        final AtomicLongArray requests;
        int sourceMode;
        final AtomicInteger subscriberCount = new AtomicInteger();
        final Subscriber<? super T>[] subscribers;
        Subscription upstream;

        final class RailSubscription implements Subscription {

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            final int f91781j;

            /* JADX INFO: renamed from: m, reason: collision with root package name */
            final int f91782m;

            RailSubscription(int i10, int i11) {
                this.f91781j = i10;
                this.f91782m = i11;
            }

            @Override // org.reactivestreams.Subscription
            public void cancel() {
                if (ParallelDispatcher.this.requests.compareAndSet(this.f91781j + this.f91782m, 0L, 1L)) {
                    ParallelDispatcher parallelDispatcher = ParallelDispatcher.this;
                    int i10 = this.f91782m;
                    parallelDispatcher.cancel(i10 + i10);
                }
            }

            @Override // org.reactivestreams.Subscription
            public void request(long j10) {
                long j11;
                if (SubscriptionHelper.validate(j10)) {
                    AtomicLongArray atomicLongArray = ParallelDispatcher.this.requests;
                    do {
                        j11 = atomicLongArray.get(this.f91781j);
                        if (j11 == Long.MAX_VALUE) {
                            return;
                        }
                    } while (!atomicLongArray.compareAndSet(this.f91781j, j11, BackpressureHelper.addCap(j11, j10)));
                    if (ParallelDispatcher.this.subscriberCount.get() == this.f91782m) {
                        ParallelDispatcher.this.drain();
                    }
                }
            }
        }

        ParallelDispatcher(Subscriber<? super T>[] subscriberArr, int i10) {
            this.subscribers = subscriberArr;
            this.prefetch = i10;
            this.limit = i10 - (i10 >> 2);
            int length = subscriberArr.length;
            int i11 = length + length;
            AtomicLongArray atomicLongArray = new AtomicLongArray(i11 + 1);
            this.requests = atomicLongArray;
            atomicLongArray.lazySet(i11, length);
            this.emissions = new long[length];
        }

        void cancel(int i10) {
            if (this.requests.decrementAndGet(i10) == 0) {
                this.cancelled = true;
                this.upstream.cancel();
                if (getAndIncrement() == 0) {
                    this.queue.clear();
                }
            }
        }

        void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            if (this.sourceMode == 1) {
                drainSync();
            } else {
                drainAsync();
            }
        }

        void drainAsync() {
            Throwable th;
            SimpleQueue<T> simpleQueue = this.queue;
            Subscriber<? super T>[] subscriberArr = this.subscribers;
            AtomicLongArray atomicLongArray = this.requests;
            long[] jArr = this.emissions;
            int length = jArr.length;
            int i10 = this.index;
            int i11 = this.produced;
            int iAddAndGet = 1;
            while (true) {
                int i12 = 0;
                int i13 = 0;
                do {
                    if (this.cancelled) {
                        simpleQueue.clear();
                        return;
                    }
                    boolean z10 = this.done;
                    if (z10 && (th = this.error) != null) {
                        simpleQueue.clear();
                        int length2 = subscriberArr.length;
                        while (i12 < length2) {
                            subscriberArr[i12].onError(th);
                            i12++;
                        }
                        return;
                    }
                    boolean zIsEmpty = simpleQueue.isEmpty();
                    if (z10 && zIsEmpty) {
                        int length3 = subscriberArr.length;
                        while (i12 < length3) {
                            subscriberArr[i12].onComplete();
                            i12++;
                        }
                        return;
                    }
                    if (zIsEmpty) {
                        break;
                    }
                    long j10 = atomicLongArray.get(i10);
                    long j11 = jArr[i10];
                    if (j10 == j11 || atomicLongArray.get(length + i10) != 0) {
                        i13++;
                    } else {
                        try {
                            T tPoll = simpleQueue.poll();
                            if (tPoll == null) {
                                break;
                            }
                            subscriberArr[i10].onNext(tPoll);
                            jArr[i10] = j11 + 1;
                            i11++;
                            if (i11 == this.limit) {
                                this.upstream.request(i11);
                                i11 = 0;
                            }
                            i13 = 0;
                        } catch (Throwable th2) {
                            Exceptions.throwIfFatal(th2);
                            this.upstream.cancel();
                            int length4 = subscriberArr.length;
                            while (i12 < length4) {
                                subscriberArr[i12].onError(th2);
                                i12++;
                            }
                            return;
                        }
                    }
                    i10++;
                    if (i10 == length) {
                        i10 = 0;
                    }
                } while (i13 != length);
                int i14 = get();
                if (i14 == iAddAndGet) {
                    this.index = i10;
                    this.produced = i11;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i14;
                }
            }
        }

        void drainSync() {
            SimpleQueue<T> simpleQueue = this.queue;
            Subscriber<? super T>[] subscriberArr = this.subscribers;
            AtomicLongArray atomicLongArray = this.requests;
            long[] jArr = this.emissions;
            int length = jArr.length;
            int i10 = this.index;
            int iAddAndGet = 1;
            while (true) {
                int i11 = 0;
                int i12 = 0;
                do {
                    if (this.cancelled) {
                        simpleQueue.clear();
                        return;
                    }
                    if (simpleQueue.isEmpty()) {
                        int length2 = subscriberArr.length;
                        while (i11 < length2) {
                            subscriberArr[i11].onComplete();
                            i11++;
                        }
                        return;
                    }
                    long j10 = atomicLongArray.get(i10);
                    long j11 = jArr[i10];
                    if (j10 == j11 || atomicLongArray.get(length + i10) != 0) {
                        i12++;
                    } else {
                        try {
                            T tPoll = simpleQueue.poll();
                            if (tPoll == null) {
                                int length3 = subscriberArr.length;
                                while (i11 < length3) {
                                    subscriberArr[i11].onComplete();
                                    i11++;
                                }
                                return;
                            }
                            subscriberArr[i10].onNext(tPoll);
                            jArr[i10] = j11 + 1;
                            i12 = 0;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.upstream.cancel();
                            int length4 = subscriberArr.length;
                            while (i11 < length4) {
                                subscriberArr[i11].onError(th);
                                i11++;
                            }
                            return;
                        }
                    }
                    i10++;
                    if (i10 == length) {
                        i10 = 0;
                    }
                } while (i12 != length);
                int i13 = get();
                if (i13 == iAddAndGet) {
                    this.index = i10;
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    iAddAndGet = i13;
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t10) {
            if (this.sourceMode != 0 || this.queue.offer(t10)) {
                drain();
            } else {
                this.upstream.cancel();
                onError(new MissingBackpressureException("Queue is full?"));
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int iRequestFusion = queueSubscription.requestFusion(7);
                    if (iRequestFusion == 1) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        this.done = true;
                        setupSubscribers();
                        drain();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.sourceMode = iRequestFusion;
                        this.queue = queueSubscription;
                        setupSubscribers();
                        subscription.request(this.prefetch);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.prefetch);
                setupSubscribers();
                subscription.request(this.prefetch);
            }
        }

        void setupSubscribers() {
            Subscriber<? super T>[] subscriberArr = this.subscribers;
            int length = subscriberArr.length;
            int i10 = 0;
            while (i10 < length && !this.cancelled) {
                int i11 = i10 + 1;
                this.subscriberCount.lazySet(i11);
                subscriberArr[i10].onSubscribe(new RailSubscription(i10, length));
                i10 = i11;
            }
        }
    }

    public ParallelFromPublisher(Publisher<? extends T> publisher, int i10, int i11) {
        this.source = publisher;
        this.parallelism = i10;
        this.prefetch = i11;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public int parallelism() {
        return this.parallelism;
    }

    @Override // io.reactivex.parallel.ParallelFlowable
    public void subscribe(Subscriber<? super T>[] subscriberArr) {
        if (validate(subscriberArr)) {
            this.source.subscribe(new ParallelDispatcher(subscriberArr, this.prefetch));
        }
    }
}
