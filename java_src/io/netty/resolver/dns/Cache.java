package io.netty.resolver.dns;

import androidx.concurrent.futures.a;
import io.netty.channel.EventLoop;
import io.netty.util.internal.PlatformDependent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: loaded from: classes.dex */
abstract class Cache<E> {
    private final ConcurrentMap<String, Cache<E>.Entries> resolveCache = PlatformDependent.newConcurrentHashMap();
    private static final AtomicReferenceFieldUpdater<Entries, ScheduledFuture> FUTURE_UPDATER = AtomicReferenceFieldUpdater.newUpdater(Entries.class, ScheduledFuture.class, "expirationFuture");
    private static final ScheduledFuture<?> CANCELLED = new ScheduledFuture<Object>() { // from class: io.netty.resolver.dns.Cache.1
        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z10) {
            return false;
        }

        @Override // java.util.concurrent.Future
        public Object get() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.Delayed
        public long getDelay(TimeUnit timeUnit) {
            return Long.MIN_VALUE;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return true;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return true;
        }

        @Override // java.lang.Comparable
        public int compareTo(Delayed delayed) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.concurrent.Future
        public Object get(long j10, TimeUnit timeUnit) {
            throw new UnsupportedOperationException();
        }
    };
    static final int MAX_SUPPORTED_TTL_SECS = (int) TimeUnit.DAYS.toSeconds(730);

    private final class Entries extends AtomicReference<List<E>> implements Runnable {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        volatile ScheduledFuture<?> expirationFuture;
        private final String hostname;

        Entries(String str) {
            super(Collections.emptyList());
            this.hostname = str;
        }

        private void scheduleCacheExpirationIfNeeded(int i10, EventLoop eventLoop) {
            while (true) {
                ScheduledFuture scheduledFuture = (ScheduledFuture) Cache.FUTURE_UPDATER.get(this);
                if (scheduledFuture != null && scheduledFuture.getDelay(TimeUnit.SECONDS) <= i10) {
                    return;
                }
                io.netty.util.concurrent.ScheduledFuture<?> scheduledFutureSchedule = eventLoop.schedule((Runnable) this, i10, TimeUnit.SECONDS);
                if (a.a(Cache.FUTURE_UPDATER, this, scheduledFuture, scheduledFutureSchedule)) {
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(true);
                        return;
                    }
                    return;
                }
                scheduledFutureSchedule.cancel(true);
            }
        }

        void add(E e10, int i10, EventLoop eventLoop) {
            E e11;
            if (Cache.this.shouldReplaceAll(e10)) {
                set(Collections.singletonList(e10));
                scheduleCacheExpirationIfNeeded(i10, eventLoop);
                return;
            }
            while (true) {
                List<E> list = get();
                if (!list.isEmpty()) {
                    int i11 = 0;
                    if (!Cache.this.shouldReplaceAll(list.get(0))) {
                        ArrayList arrayList = new ArrayList(list.size() + 1);
                        while (true) {
                            e11 = list.get(i11);
                            if (Cache.this.equals(e10, e11)) {
                                arrayList.add(e10);
                                while (true) {
                                    i11++;
                                    if (i11 >= list.size()) {
                                        break;
                                    } else {
                                        arrayList.add(list.get(i11));
                                    }
                                }
                            } else {
                                arrayList.add(e11);
                                i11++;
                                if (i11 >= list.size()) {
                                    e11 = null;
                                    break;
                                }
                            }
                        }
                        if (e11 == null) {
                            arrayList.add(e10);
                        }
                        Cache.this.sortEntries(this.hostname, arrayList);
                        if (compareAndSet(list, Collections.unmodifiableList(arrayList))) {
                            scheduleCacheExpirationIfNeeded(i10, eventLoop);
                            return;
                        }
                    } else if (compareAndSet(list, Collections.singletonList(e10))) {
                        scheduleCacheExpirationIfNeeded(i10, eventLoop);
                        return;
                    }
                } else if (compareAndSet(list, Collections.singletonList(e10))) {
                    scheduleCacheExpirationIfNeeded(i10, eventLoop);
                    return;
                }
            }
        }

        boolean clearAndCancel() {
            if (getAndSet(Collections.emptyList()).isEmpty()) {
                return false;
            }
            ScheduledFuture scheduledFuture = (ScheduledFuture) Cache.FUTURE_UPDATER.getAndSet(this, Cache.CANCELLED);
            if (scheduledFuture == null) {
                return true;
            }
            scheduledFuture.cancel(false);
            return true;
        }

        @Override // java.lang.Runnable
        public void run() {
            Cache.this.resolveCache.remove(this.hostname, this);
            clearAndCancel();
        }
    }

    Cache() {
    }

    final void cache(String str, E e10, int i10, EventLoop eventLoop) {
        Cache<E>.Entries entriesPutIfAbsent;
        Cache<E>.Entries entries = this.resolveCache.get(str);
        if (entries == null && (entriesPutIfAbsent = this.resolveCache.putIfAbsent(str, (entries = new Entries(str)))) != null) {
            entries = entriesPutIfAbsent;
        }
        entries.add(e10, i10, eventLoop);
    }

    final void clear() {
        while (!this.resolveCache.isEmpty()) {
            Iterator<Map.Entry<String, Cache<E>.Entries>> it2 = this.resolveCache.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, Cache<E>.Entries> next = it2.next();
                it2.remove();
                next.getValue().clearAndCancel();
            }
        }
    }

    protected abstract boolean equals(E e10, E e11);

    final List<? extends E> get(String str) {
        Cache<E>.Entries entries = this.resolveCache.get(str);
        if (entries == null) {
            return null;
        }
        return entries.get();
    }

    protected abstract boolean shouldReplaceAll(E e10);

    final int size() {
        return this.resolveCache.size();
    }

    protected void sortEntries(String str, List<E> list) {
    }

    final boolean clear(String str) {
        Cache<E>.Entries entriesRemove = this.resolveCache.remove(str);
        return entriesRemove != null && entriesRemove.clearAndCancel();
    }
}
