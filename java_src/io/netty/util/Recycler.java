package io.netty.util;

import io.netty.util.concurrent.FastThreadLocal;
import io.netty.util.internal.MathUtil;
import io.netty.util.internal.ObjectPool;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class Recycler<T> {
    private static final int DEFAULT_INITIAL_MAX_CAPACITY_PER_THREAD = 4096;
    private static final int DEFAULT_MAX_CAPACITY_PER_THREAD;
    private static final FastThreadLocal<Map<Stack<?>, WeakOrderQueue>> DELAYED_RECYCLED;
    private static final AtomicInteger ID_GENERATOR;
    private static final int INITIAL_CAPACITY;
    private static final int LINK_CAPACITY;
    private static final int MAX_DELAYED_QUEUES_PER_THREAD;
    private static final int MAX_SHARED_CAPACITY_FACTOR;
    private static final Handle NOOP_HANDLE;
    private static final int OWN_THREAD_ID;
    private static final int RATIO;
    private static final InternalLogger logger;
    private final int interval;
    private final int maxCapacityPerThread;
    private final int maxDelayedQueuesPerThread;
    private final int maxSharedCapacityFactor;
    private final FastThreadLocal<Stack<T>> threadLocal;

    private static final class DefaultHandle<T> implements Handle<T> {
        boolean hasBeenRecycled;
        int lastRecycledId;
        int recycleId;
        Stack<?> stack;
        Object value;

        DefaultHandle(Stack<?> stack) {
            this.stack = stack;
        }

        @Override // io.netty.util.internal.ObjectPool.Handle
        public void recycle(Object obj) {
            if (obj != this.value) {
                throw new IllegalArgumentException("object does not belong to handle");
            }
            Stack<?> stack = this.stack;
            if (this.lastRecycledId != this.recycleId || stack == null) {
                throw new IllegalStateException("recycled already");
            }
            stack.push(this);
        }
    }

    public interface Handle<T> extends ObjectPool.Handle<T> {
    }

    private static final class Stack<T> {
        final AtomicInteger availableSharedCapacity;
        private WeakOrderQueue cursor;
        DefaultHandle<?>[] elements;
        private int handleRecycleCount;
        private volatile WeakOrderQueue head;
        private final int interval;
        private final int maxCapacity;
        private final int maxDelayedQueues;
        final Recycler<T> parent;
        private WeakOrderQueue prev;
        int size;
        final WeakReference<Thread> threadRef;

        Stack(Recycler<T> recycler, Thread thread, int i10, int i11, int i12, int i13) {
            this.parent = recycler;
            this.threadRef = new WeakReference<>(thread);
            this.maxCapacity = i10;
            this.availableSharedCapacity = new AtomicInteger(Math.max(i10 / i11, Recycler.LINK_CAPACITY));
            this.elements = new DefaultHandle[Math.min(Recycler.INITIAL_CAPACITY, i10)];
            this.interval = i12;
            this.handleRecycleCount = i12;
            this.maxDelayedQueues = i13;
        }

        private WeakOrderQueue newWeakOrderQueue(Thread thread) {
            return WeakOrderQueue.newQueue(this, thread);
        }

        private void pushLater(DefaultHandle<?> defaultHandle, Thread thread) {
            if (this.maxDelayedQueues == 0) {
                return;
            }
            Map map = (Map) Recycler.DELAYED_RECYCLED.get();
            WeakOrderQueue weakOrderQueueNewWeakOrderQueue = (WeakOrderQueue) map.get(this);
            if (weakOrderQueueNewWeakOrderQueue == null) {
                if (map.size() >= this.maxDelayedQueues) {
                    map.put(this, WeakOrderQueue.DUMMY);
                    return;
                }
                weakOrderQueueNewWeakOrderQueue = newWeakOrderQueue(thread);
                if (weakOrderQueueNewWeakOrderQueue == null) {
                    return;
                } else {
                    map.put(this, weakOrderQueueNewWeakOrderQueue);
                }
            } else if (weakOrderQueueNewWeakOrderQueue == WeakOrderQueue.DUMMY) {
                return;
            }
            weakOrderQueueNewWeakOrderQueue.add(defaultHandle);
        }

        private void pushNow(DefaultHandle<?> defaultHandle) {
            if ((defaultHandle.recycleId | defaultHandle.lastRecycledId) != 0) {
                throw new IllegalStateException("recycled already");
            }
            int i10 = Recycler.OWN_THREAD_ID;
            defaultHandle.lastRecycledId = i10;
            defaultHandle.recycleId = i10;
            int i11 = this.size;
            if (i11 >= this.maxCapacity || dropHandle(defaultHandle)) {
                return;
            }
            DefaultHandle<?>[] defaultHandleArr = this.elements;
            if (i11 == defaultHandleArr.length) {
                this.elements = (DefaultHandle[]) Arrays.copyOf(defaultHandleArr, Math.min(i11 << 1, this.maxCapacity));
            }
            this.elements[i11] = defaultHandle;
            this.size = i11 + 1;
        }

        private boolean scavenge() {
            if (scavengeSome()) {
                return true;
            }
            this.prev = null;
            this.cursor = this.head;
            return false;
        }

        private boolean scavengeSome() {
            WeakOrderQueue weakOrderQueue;
            boolean z10;
            WeakOrderQueue weakOrderQueue2 = this.cursor;
            boolean z11 = false;
            if (weakOrderQueue2 == null) {
                weakOrderQueue2 = this.head;
                if (weakOrderQueue2 == null) {
                    return false;
                }
                weakOrderQueue = null;
            } else {
                weakOrderQueue = this.prev;
            }
            while (true) {
                z10 = true;
                if (weakOrderQueue2.transfer(this)) {
                    break;
                }
                WeakOrderQueue next = weakOrderQueue2.getNext();
                if (weakOrderQueue2.get() == null) {
                    if (weakOrderQueue2.hasFinalData()) {
                        while (weakOrderQueue2.transfer(this)) {
                            z11 = true;
                        }
                    }
                    if (weakOrderQueue != null) {
                        weakOrderQueue2.reclaimAllSpaceAndUnlink();
                        weakOrderQueue.setNext(next);
                    }
                } else {
                    weakOrderQueue = weakOrderQueue2;
                }
                if (next == null || z11) {
                    z10 = z11;
                    weakOrderQueue2 = next;
                    break;
                }
                weakOrderQueue2 = next;
            }
            this.prev = weakOrderQueue;
            this.cursor = weakOrderQueue2;
            return z10;
        }

        boolean dropHandle(DefaultHandle<?> defaultHandle) {
            if (!defaultHandle.hasBeenRecycled) {
                int i10 = this.handleRecycleCount;
                if (i10 < this.interval) {
                    this.handleRecycleCount = i10 + 1;
                    return true;
                }
                this.handleRecycleCount = 0;
                defaultHandle.hasBeenRecycled = true;
            }
            return false;
        }

        int increaseCapacity(int i10) {
            int length = this.elements.length;
            int i11 = this.maxCapacity;
            do {
                length <<= 1;
                if (length >= i10) {
                    break;
                }
            } while (length < i11);
            int iMin = Math.min(length, i11);
            DefaultHandle<?>[] defaultHandleArr = this.elements;
            if (iMin != defaultHandleArr.length) {
                this.elements = (DefaultHandle[]) Arrays.copyOf(defaultHandleArr, iMin);
            }
            return iMin;
        }

        DefaultHandle<T> newHandle() {
            return new DefaultHandle<>(this);
        }

        DefaultHandle<T> pop() {
            int i10 = this.size;
            if (i10 == 0 && (!scavenge() || (i10 = this.size) <= 0)) {
                return null;
            }
            int i11 = i10 - 1;
            Object[] objArr = this.elements;
            DefaultHandle<T> defaultHandle = (DefaultHandle<T>) objArr[i11];
            objArr[i11] = null;
            this.size = i11;
            if (defaultHandle.lastRecycledId != defaultHandle.recycleId) {
                throw new IllegalStateException("recycled multiple times");
            }
            defaultHandle.recycleId = 0;
            defaultHandle.lastRecycledId = 0;
            return defaultHandle;
        }

        void push(DefaultHandle<?> defaultHandle) {
            Thread threadCurrentThread = Thread.currentThread();
            if (this.threadRef.get() == threadCurrentThread) {
                pushNow(defaultHandle);
            } else {
                pushLater(defaultHandle, threadCurrentThread);
            }
        }

        synchronized void setHead(WeakOrderQueue weakOrderQueue) {
            weakOrderQueue.setNext(this.head);
            this.head = weakOrderQueue;
        }
    }

    static {
        InternalLogger internalLoggerFactory = InternalLoggerFactory.getInstance((Class<?>) Recycler.class);
        logger = internalLoggerFactory;
        NOOP_HANDLE = new Handle() { // from class: io.netty.util.Recycler.1
            @Override // io.netty.util.internal.ObjectPool.Handle
            public void recycle(Object obj) {
            }
        };
        AtomicInteger atomicInteger = new AtomicInteger(Integer.MIN_VALUE);
        ID_GENERATOR = atomicInteger;
        OWN_THREAD_ID = atomicInteger.getAndIncrement();
        int i10 = SystemPropertyUtil.getInt("io.netty.recycler.maxCapacityPerThread", SystemPropertyUtil.getInt("io.netty.recycler.maxCapacity", 4096));
        int i11 = i10 >= 0 ? i10 : 4096;
        DEFAULT_MAX_CAPACITY_PER_THREAD = i11;
        int iMax = Math.max(2, SystemPropertyUtil.getInt("io.netty.recycler.maxSharedCapacityFactor", 2));
        MAX_SHARED_CAPACITY_FACTOR = iMax;
        MAX_DELAYED_QUEUES_PER_THREAD = Math.max(0, SystemPropertyUtil.getInt("io.netty.recycler.maxDelayedQueuesPerThread", NettyRuntime.availableProcessors() * 2));
        int iSafeFindNextPositivePowerOfTwo = MathUtil.safeFindNextPositivePowerOfTwo(Math.max(SystemPropertyUtil.getInt("io.netty.recycler.linkCapacity", 16), 16));
        LINK_CAPACITY = iSafeFindNextPositivePowerOfTwo;
        int iSafeFindNextPositivePowerOfTwo2 = MathUtil.safeFindNextPositivePowerOfTwo(SystemPropertyUtil.getInt("io.netty.recycler.ratio", 8));
        RATIO = iSafeFindNextPositivePowerOfTwo2;
        if (internalLoggerFactory.isDebugEnabled()) {
            if (i11 == 0) {
                internalLoggerFactory.debug("-Dio.netty.recycler.maxCapacityPerThread: disabled");
                internalLoggerFactory.debug("-Dio.netty.recycler.maxSharedCapacityFactor: disabled");
                internalLoggerFactory.debug("-Dio.netty.recycler.linkCapacity: disabled");
                internalLoggerFactory.debug("-Dio.netty.recycler.ratio: disabled");
            } else {
                internalLoggerFactory.debug("-Dio.netty.recycler.maxCapacityPerThread: {}", Integer.valueOf(i11));
                internalLoggerFactory.debug("-Dio.netty.recycler.maxSharedCapacityFactor: {}", Integer.valueOf(iMax));
                internalLoggerFactory.debug("-Dio.netty.recycler.linkCapacity: {}", Integer.valueOf(iSafeFindNextPositivePowerOfTwo));
                internalLoggerFactory.debug("-Dio.netty.recycler.ratio: {}", Integer.valueOf(iSafeFindNextPositivePowerOfTwo2));
            }
        }
        INITIAL_CAPACITY = Math.min(i11, 256);
        DELAYED_RECYCLED = new FastThreadLocal<Map<Stack<?>, WeakOrderQueue>>() { // from class: io.netty.util.Recycler.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public Map<Stack<?>, WeakOrderQueue> initialValue() {
                return new WeakHashMap();
            }
        };
    }

    protected Recycler() {
        this(DEFAULT_MAX_CAPACITY_PER_THREAD);
    }

    public final T get() {
        if (this.maxCapacityPerThread == 0) {
            return newObject(NOOP_HANDLE);
        }
        Stack<T> stack = this.threadLocal.get();
        DefaultHandle<T> defaultHandlePop = stack.pop();
        if (defaultHandlePop == null) {
            defaultHandlePop = stack.newHandle();
            defaultHandlePop.value = newObject(defaultHandlePop);
        }
        return (T) defaultHandlePop.value;
    }

    protected abstract T newObject(Handle<T> handle);

    @Deprecated
    public final boolean recycle(T t10, Handle<T> handle) {
        if (handle == NOOP_HANDLE) {
            return false;
        }
        DefaultHandle defaultHandle = (DefaultHandle) handle;
        if (defaultHandle.stack.parent != this) {
            return false;
        }
        defaultHandle.recycle(t10);
        return true;
    }

    final int threadLocalCapacity() {
        return this.threadLocal.get().elements.length;
    }

    final int threadLocalSize() {
        return this.threadLocal.get().size;
    }

    protected Recycler(int i10) {
        this(i10, MAX_SHARED_CAPACITY_FACTOR);
    }

    protected Recycler(int i10, int i11) {
        this(i10, i11, RATIO, MAX_DELAYED_QUEUES_PER_THREAD);
    }

    private static final class WeakOrderQueue extends WeakReference<Thread> {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final WeakOrderQueue DUMMY = new WeakOrderQueue();
        private int handleRecycleCount;
        private final Head head;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private final int f91665id;
        private final int interval;
        private WeakOrderQueue next;
        private Link tail;

        private static final class Head {
            private final AtomicInteger availableSharedCapacity;
            Link link;

            Head(AtomicInteger atomicInteger) {
                this.availableSharedCapacity = atomicInteger;
            }

            private void reclaimSpace(int i10) {
                this.availableSharedCapacity.addAndGet(i10);
            }

            static boolean reserveSpaceForLink(AtomicInteger atomicInteger) {
                int i10;
                do {
                    i10 = atomicInteger.get();
                    if (i10 < Recycler.LINK_CAPACITY) {
                        return false;
                    }
                } while (!atomicInteger.compareAndSet(i10, i10 - Recycler.LINK_CAPACITY));
                return true;
            }

            Link newLink() {
                if (reserveSpaceForLink(this.availableSharedCapacity)) {
                    return new Link();
                }
                return null;
            }

            void reclaimAllSpaceAndUnlink() {
                Link link = this.link;
                this.link = null;
                int i10 = 0;
                while (link != null) {
                    i10 += Recycler.LINK_CAPACITY;
                    Link link2 = link.next;
                    link.next = null;
                    link = link2;
                }
                if (i10 > 0) {
                    reclaimSpace(i10);
                }
            }

            void relink(Link link) {
                reclaimSpace(Recycler.LINK_CAPACITY);
                this.link = link;
            }
        }

        static final class Link extends AtomicInteger {
            final DefaultHandle<?>[] elements = new DefaultHandle[Recycler.LINK_CAPACITY];
            Link next;
            int readIndex;

            Link() {
            }
        }

        private WeakOrderQueue() {
            super(null);
            this.f91665id = Recycler.ID_GENERATOR.getAndIncrement();
            this.head = new Head(null);
            this.interval = 0;
        }

        static WeakOrderQueue newQueue(Stack<?> stack, Thread thread) {
            if (!Head.reserveSpaceForLink(stack.availableSharedCapacity)) {
                return null;
            }
            WeakOrderQueue weakOrderQueue = new WeakOrderQueue(stack, thread);
            stack.setHead(weakOrderQueue);
            return weakOrderQueue;
        }

        void add(DefaultHandle<?> defaultHandle) {
            defaultHandle.lastRecycledId = this.f91665id;
            int i10 = this.handleRecycleCount;
            if (i10 < this.interval) {
                this.handleRecycleCount = i10 + 1;
                return;
            }
            this.handleRecycleCount = 0;
            Link link = this.tail;
            int i11 = link.get();
            if (i11 == Recycler.LINK_CAPACITY) {
                Link linkNewLink = this.head.newLink();
                if (linkNewLink == null) {
                    return;
                }
                link.next = linkNewLink;
                this.tail = linkNewLink;
                i11 = linkNewLink.get();
                link = linkNewLink;
            }
            link.elements[i11] = defaultHandle;
            defaultHandle.stack = null;
            link.lazySet(i11 + 1);
        }

        WeakOrderQueue getNext() {
            return this.next;
        }

        boolean hasFinalData() {
            Link link = this.tail;
            return link.readIndex != link.get();
        }

        void reclaimAllSpaceAndUnlink() {
            this.head.reclaimAllSpaceAndUnlink();
            this.next = null;
        }

        void setNext(WeakOrderQueue weakOrderQueue) {
            this.next = weakOrderQueue;
        }

        boolean transfer(Stack<?> stack) {
            Link link;
            Link link2 = this.head.link;
            if (link2 == null) {
                return false;
            }
            if (link2.readIndex == Recycler.LINK_CAPACITY) {
                link2 = link2.next;
                if (link2 == null) {
                    return false;
                }
                this.head.relink(link2);
            }
            int i10 = link2.readIndex;
            int iMin = link2.get();
            int i11 = iMin - i10;
            if (i11 == 0) {
                return false;
            }
            int i12 = stack.size;
            int i13 = i11 + i12;
            if (i13 > stack.elements.length) {
                iMin = Math.min((stack.increaseCapacity(i13) + i10) - i12, iMin);
            }
            if (i10 == iMin) {
                return false;
            }
            DefaultHandle<?>[] defaultHandleArr = link2.elements;
            DefaultHandle<?>[] defaultHandleArr2 = stack.elements;
            while (i10 < iMin) {
                DefaultHandle<?> defaultHandle = defaultHandleArr[i10];
                int i14 = defaultHandle.recycleId;
                if (i14 == 0) {
                    defaultHandle.recycleId = defaultHandle.lastRecycledId;
                } else if (i14 != defaultHandle.lastRecycledId) {
                    throw new IllegalStateException("recycled already");
                }
                defaultHandleArr[i10] = null;
                if (!stack.dropHandle(defaultHandle)) {
                    defaultHandle.stack = stack;
                    defaultHandleArr2[i12] = defaultHandle;
                    i12++;
                }
                i10++;
            }
            if (iMin == Recycler.LINK_CAPACITY && (link = link2.next) != null) {
                this.head.relink(link);
            }
            link2.readIndex = iMin;
            if (stack.size == i12) {
                return false;
            }
            stack.size = i12;
            return true;
        }

        private WeakOrderQueue(Stack<?> stack, Thread thread) {
            super(thread);
            this.f91665id = Recycler.ID_GENERATOR.getAndIncrement();
            this.tail = new Link();
            Head head = new Head(stack.availableSharedCapacity);
            this.head = head;
            head.link = this.tail;
            int i10 = ((Stack) stack).interval;
            this.interval = i10;
            this.handleRecycleCount = i10;
        }
    }

    protected Recycler(int i10, int i11, int i12, int i13) {
        this.threadLocal = new FastThreadLocal<Stack<T>>() { // from class: io.netty.util.Recycler.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public Stack<T> initialValue() {
                return new Stack<>(Recycler.this, Thread.currentThread(), Recycler.this.maxCapacityPerThread, Recycler.this.maxSharedCapacityFactor, Recycler.this.interval, Recycler.this.maxDelayedQueuesPerThread);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // io.netty.util.concurrent.FastThreadLocal
            public void onRemoval(Stack<T> stack) {
                if (stack.threadRef.get() == Thread.currentThread() && Recycler.DELAYED_RECYCLED.isSet()) {
                    ((Map) Recycler.DELAYED_RECYCLED.get()).remove(stack);
                }
            }
        };
        this.interval = MathUtil.safeFindNextPositivePowerOfTwo(i12);
        if (i10 <= 0) {
            this.maxCapacityPerThread = 0;
            this.maxSharedCapacityFactor = 1;
            this.maxDelayedQueuesPerThread = 0;
        } else {
            this.maxCapacityPerThread = i10;
            this.maxSharedCapacityFactor = Math.max(1, i11);
            this.maxDelayedQueuesPerThread = Math.max(0, i13);
        }
    }
}
