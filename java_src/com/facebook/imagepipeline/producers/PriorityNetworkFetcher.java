package com.facebook.imagepipeline.producers;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.producers.v;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class PriorityNetworkFetcher<FETCH_STATE extends v> implements l0<c<FETCH_STATE>> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f28270s = "PriorityNetworkFetcher";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @VisibleForTesting
    static final int f28271t = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @VisibleForTesting
    static final int f28272u = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l0<FETCH_STATE> f28273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f28274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f28275c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f28276d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l3.c f28277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object f28278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final LinkedList<c<FETCH_STATE>> f28279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final LinkedList<c<FETCH_STATE>> f28280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final HashSet<c<FETCH_STATE>> f28281i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final LinkedList<c<FETCH_STATE>> f28282j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile boolean f28283k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final boolean f28284l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f28285m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f28286n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private long f28287o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f28288p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f28289q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f28290r;

    public static class NonrecoverableException extends Throwable {
        public NonrecoverableException(@Nullable String message) {
            super(message);
        }
    }

    class a extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f28291a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l0.a f28292b;

        a(final c val$callback, final l0.a val$fetchState) {
            this.f28291a = val$callback;
            this.f28292b = val$fetchState;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            if (PriorityNetworkFetcher.this.f28286n) {
                return;
            }
            if (PriorityNetworkFetcher.this.f28284l || !PriorityNetworkFetcher.this.f28281i.contains(this.f28291a)) {
                PriorityNetworkFetcher.this.C(this.f28291a, "CANCEL");
                this.f28292b.a();
            }
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void d() {
            PriorityNetworkFetcher priorityNetworkFetcher = PriorityNetworkFetcher.this;
            c cVar = this.f28291a;
            priorityNetworkFetcher.m(cVar, cVar.getContext().getPriority() == Priority.HIGH);
        }
    }

    class b implements l0.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f28294a;

        b(final c val$fetchState) {
            this.f28294a = val$fetchState;
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void a() {
            PriorityNetworkFetcher.this.C(this.f28294a, "CANCEL");
            l0.a aVar = this.f28294a.f28301k;
            if (aVar != null) {
                aVar.a();
            }
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void b(InputStream response, int responseLength) throws IOException {
            l0.a aVar = this.f28294a.f28301k;
            if (aVar != null) {
                aVar.b(response, responseLength);
            }
        }

        @Override // com.facebook.imagepipeline.producers.l0.a
        public void onFailure(Throwable throwable) {
            if ((PriorityNetworkFetcher.this.f28285m == -1 || this.f28294a.f28303m < PriorityNetworkFetcher.this.f28285m) && !(throwable instanceof NonrecoverableException)) {
                PriorityNetworkFetcher.this.D(this.f28294a);
                return;
            }
            PriorityNetworkFetcher.this.C(this.f28294a, "FAIL");
            l0.a aVar = this.f28294a.f28301k;
            if (aVar != null) {
                aVar.onFailure(throwable);
            }
        }
    }

    public static class c<FETCH_STATE extends v> extends v {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public FETCH_STATE f28296f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final long f28297g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final int f28298h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final int f28299i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        final int f28300j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @javax.annotation.Nullable
        l0.a f28301k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        long f28302l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f28303m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f28304n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f28305o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final boolean f28306p;

        /* synthetic */ c(Consumer consumer, ProducerContext producerContext, v vVar, long j10, int i10, int i11, int i12, a aVar) {
            this(consumer, producerContext, vVar, j10, i10, i11, i12);
        }

        private c(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext, FETCH_STATE delegatedState, long enqueuedTimestamp, int hiPriCountWhenCreated, int lowPriCountWhenCreated, int currentlyFetchingCountWhenCreated) {
            super(consumer, producerContext);
            this.f28303m = 0;
            this.f28304n = 0;
            this.f28305o = 0;
            this.f28296f = delegatedState;
            this.f28297g = enqueuedTimestamp;
            this.f28298h = hiPriCountWhenCreated;
            this.f28299i = lowPriCountWhenCreated;
            this.f28306p = producerContext.getPriority() == Priority.HIGH;
            this.f28300j = currentlyFetchingCountWhenCreated;
        }
    }

    public PriorityNetworkFetcher(l0<FETCH_STATE> delegate, boolean isHiPriFifo, int maxOutstandingHiPri, int maxOutstandingLowPri, boolean inflightFetchesCanBeCancelled, int maxNumberOfRequeue, boolean doNotCancelRequests, int immediateRequeueCount, int requeueDelayTimeInMillis, boolean multipleDequeue) {
        this(delegate, isHiPriFifo, maxOutstandingHiPri, maxOutstandingLowPri, inflightFetchesCanBeCancelled, maxNumberOfRequeue, doNotCancelRequests, immediateRequeueCount, requeueDelayTimeInMillis, multipleDequeue, RealtimeSinceBootClock.get());
    }

    private void A(c<FETCH_STATE> fetchState) {
        if (this.f28282j.isEmpty()) {
            this.f28287o = this.f28277e.now();
        }
        fetchState.f28304n++;
        this.f28282j.addLast(fetchState);
    }

    private void B(c<FETCH_STATE> entry, boolean isHiPri) {
        if (!isHiPri) {
            this.f28280h.addLast(entry);
        } else if (this.f28274b) {
            this.f28279g.addLast(entry);
        } else {
            this.f28279g.addFirst(entry);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(c<FETCH_STATE> fetchState, String reasonForLogging) {
        synchronized (this.f28278f) {
            i3.a.e0(f28270s, "remove: %s %s", reasonForLogging, fetchState.g());
            this.f28281i.remove(fetchState);
            if (!this.f28279g.remove(fetchState)) {
                this.f28280h.remove(fetchState);
            }
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D(c<FETCH_STATE> cVar) {
        synchronized (this.f28278f) {
            i3.a.d0(f28270s, "requeue: %s", cVar.g());
            boolean z10 = true;
            cVar.f28303m++;
            cVar.f28296f = (FETCH_STATE) this.f28273a.b(cVar.a(), cVar.getContext());
            this.f28281i.remove(cVar);
            if (!this.f28279g.remove(cVar)) {
                this.f28280h.remove(cVar);
            }
            int i10 = this.f28289q;
            if (i10 == -1 || cVar.f28303m <= i10) {
                if (cVar.getContext().getPriority() != Priority.HIGH) {
                    z10 = false;
                }
                B(cVar, z10);
            } else {
                A(cVar);
            }
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(c<FETCH_STATE> fetchState, boolean isNewHiPri) {
        synchronized (this.f28278f) {
            try {
                if (!(isNewHiPri ? this.f28280h : this.f28279g).remove(fetchState)) {
                    n(fetchState);
                    return;
                }
                i3.a.e0(f28270s, "change-pri: %s %s", isNewHiPri ? "HIPRI" : "LOWPRI", fetchState.g());
                fetchState.f28305o++;
                B(fetchState, isNewHiPri);
                q();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void n(c<FETCH_STATE> fetchState) {
        if (this.f28282j.remove(fetchState)) {
            fetchState.f28305o++;
            this.f28282j.addLast(fetchState);
        }
    }

    private void p(final c<FETCH_STATE> fetchState) {
        try {
            this.f28273a.c(fetchState.f28296f, new b(fetchState));
        } catch (Exception unused) {
            C(fetchState, "FAIL");
        }
    }

    private void q() {
        if (this.f28283k) {
            synchronized (this.f28278f) {
                x();
                int size = this.f28281i.size();
                c<FETCH_STATE> cVarPollFirst = size < this.f28275c ? this.f28279g.pollFirst() : null;
                if (cVarPollFirst == null && size < this.f28276d) {
                    cVarPollFirst = this.f28280h.pollFirst();
                }
                if (cVarPollFirst == null) {
                    return;
                }
                cVarPollFirst.f28302l = this.f28277e.now();
                this.f28281i.add(cVarPollFirst);
                i3.a.g0(f28270s, "fetching: %s (concurrent: %s hi-pri queue: %s low-pri queue: %s)", cVarPollFirst.g(), Integer.valueOf(size), Integer.valueOf(this.f28279g.size()), Integer.valueOf(this.f28280h.size()));
                p(cVarPollFirst);
                if (this.f28290r) {
                    q();
                }
            }
        }
    }

    private void x() {
        if (this.f28282j.isEmpty() || this.f28277e.now() - this.f28287o <= this.f28288p) {
            return;
        }
        for (c<FETCH_STATE> cVar : this.f28282j) {
            B(cVar, cVar.getContext().getPriority() == Priority.HIGH);
        }
        this.f28282j.clear();
    }

    public void E() {
        this.f28283k = true;
        q();
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public boolean d(c<FETCH_STATE> fetchState) {
        return this.f28273a.d(fetchState.f28296f);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public c<FETCH_STATE> b(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext) {
        return new c<>(consumer, producerContext, this.f28273a.b(consumer, producerContext), this.f28277e.now(), this.f28279g.size(), this.f28280h.size(), this.f28281i.size(), null);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public void c(final c<FETCH_STATE> fetchState, final l0.a callback) {
        fetchState.getContext().i(new a(fetchState, callback));
        synchronized (this.f28278f) {
            if (this.f28281i.contains(fetchState)) {
                i3.a.u(f28270s, "fetch state was enqueued twice: " + fetchState);
                return;
            }
            boolean z10 = fetchState.getContext().getPriority() == Priority.HIGH;
            i3.a.e0(f28270s, "enqueue: %s %s", z10 ? "HI-PRI" : "LOW-PRI", fetchState.g());
            fetchState.f28301k = callback;
            B(fetchState, z10);
            q();
        }
    }

    @VisibleForTesting
    HashSet<c<FETCH_STATE>> s() {
        return this.f28281i;
    }

    @VisibleForTesting
    List<c<FETCH_STATE>> t() {
        return this.f28282j;
    }

    @Override // com.facebook.imagepipeline.producers.l0
    @javax.annotation.Nullable
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public Map<String, String> e(c<FETCH_STATE> fetchState, int byteSize) {
        Map<String, String> mapE = this.f28273a.e(fetchState.f28296f, byteSize);
        HashMap map = mapE != null ? new HashMap(mapE) : new HashMap();
        map.put("pri_queue_time", "" + (fetchState.f28302l - fetchState.f28297g));
        map.put("hipri_queue_size", "" + fetchState.f28298h);
        map.put("lowpri_queue_size", "" + fetchState.f28299i);
        map.put("requeueCount", "" + fetchState.f28303m);
        map.put("priority_changed_count", "" + fetchState.f28305o);
        map.put("request_initial_priority_is_high", "" + fetchState.f28306p);
        map.put("currently_fetching_size", "" + fetchState.f28300j);
        map.put("delay_count", "" + fetchState.f28304n);
        return map;
    }

    @VisibleForTesting
    List<c<FETCH_STATE>> v() {
        return this.f28279g;
    }

    @VisibleForTesting
    List<c<FETCH_STATE>> w() {
        return this.f28280h;
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public void a(c<FETCH_STATE> fetchState, int byteSize) {
        C(fetchState, "SUCCESS");
        this.f28273a.a(fetchState.f28296f, byteSize);
    }

    public void z() {
        this.f28283k = false;
    }

    public PriorityNetworkFetcher(l0<FETCH_STATE> delegate, boolean isHiPriFifo, int maxOutstandingHiPri, int maxOutstandingLowPri, boolean inflightFetchesCanBeCancelled, boolean infiniteRequeue, boolean doNotCancelRequests) {
        this(delegate, isHiPriFifo, maxOutstandingHiPri, maxOutstandingLowPri, inflightFetchesCanBeCancelled, infiniteRequeue ? -1 : 0, doNotCancelRequests, -1, 0, false, RealtimeSinceBootClock.get());
    }

    @VisibleForTesting
    public PriorityNetworkFetcher(l0<FETCH_STATE> delegate, boolean isHiPriFifo, int maxOutstandingHiPri, int maxOutstandingLowPri, boolean inflightFetchesCanBeCancelled, int maxNumberOfRequeue, boolean doNotCancelRequests, int immediateRequeueCount, int requeueDelayTimeInMillis, boolean multipleDequeue, l3.c clock) {
        this.f28278f = new Object();
        this.f28279g = new LinkedList<>();
        this.f28280h = new LinkedList<>();
        this.f28281i = new HashSet<>();
        this.f28282j = new LinkedList<>();
        this.f28283k = true;
        this.f28273a = delegate;
        this.f28274b = isHiPriFifo;
        this.f28275c = maxOutstandingHiPri;
        this.f28276d = maxOutstandingLowPri;
        if (maxOutstandingHiPri > maxOutstandingLowPri) {
            this.f28284l = inflightFetchesCanBeCancelled;
            this.f28285m = maxNumberOfRequeue;
            this.f28286n = doNotCancelRequests;
            this.f28289q = immediateRequeueCount;
            this.f28288p = requeueDelayTimeInMillis;
            this.f28290r = multipleDequeue;
            this.f28277e = clock;
            return;
        }
        throw new IllegalArgumentException("maxOutstandingHiPri should be > maxOutstandingLowPri");
    }
}
