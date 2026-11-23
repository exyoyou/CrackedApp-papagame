package com.facebook.imagepipeline.producers;

import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.util.TriState;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.infer.annotation.Nullsafe;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public abstract class j0<K, T extends Closeable> implements q0<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f28443f = "started_as_prefetch";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final Map<K, j0<K, T>.b> f28444a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final q0<T> f28445b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f28446c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f28447d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f28448e;

    @VisibleForTesting
    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final K f28449a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CopyOnWriteArraySet<Pair<Consumer<T>, ProducerContext>> f28450b = com.facebook.common.internal.k.a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private T f28451c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        private float f28452d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        private int f28453e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private d f28454f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @GuardedBy("Multiplexer.this")
        @Nullable
        private j0<K, T>.b.C0577b f28455g;

        class a extends e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Pair f28457a;

            a(final Pair val$consumerContextPair) {
                this.f28457a = val$consumerContextPair;
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void a() {
                d.r(b.this.r());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void b() {
                boolean zRemove;
                List list;
                d dVar;
                List listT;
                List listR;
                synchronized (b.this) {
                    zRemove = b.this.f28450b.remove(this.f28457a);
                    list = null;
                    if (!zRemove) {
                        dVar = null;
                        listT = null;
                    } else if (b.this.f28450b.isEmpty()) {
                        dVar = b.this.f28454f;
                        listT = null;
                    } else {
                        List listS = b.this.s();
                        listT = b.this.t();
                        listR = b.this.r();
                        dVar = null;
                        list = listS;
                    }
                    listR = listT;
                }
                d.s(list);
                d.t(listT);
                d.r(listR);
                if (dVar != null) {
                    if (!j0.this.f28446c || dVar.o()) {
                        dVar.u();
                    } else {
                        d.t(dVar.z(Priority.LOW));
                    }
                }
                if (zRemove) {
                    ((Consumer) this.f28457a.first).a();
                }
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void c() {
                d.s(b.this.s());
            }

            @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
            public void d() {
                d.t(b.this.t());
            }
        }

        /* JADX INFO: renamed from: com.facebook.imagepipeline.producers.j0$b$b, reason: collision with other inner class name */
        private class C0577b extends com.facebook.imagepipeline.producers.b<T> {
            private C0577b() {
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void f() {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onCancellation");
                    }
                    b.this.m(this);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void g(Throwable t10) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onFailure");
                    }
                    b.this.n(this, t10);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            @Override // com.facebook.imagepipeline.producers.b
            protected void i(float progress) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onProgressUpdate");
                    }
                    b.this.p(this, progress);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.imagepipeline.producers.b
            /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
            public void h(@Nullable T newResult, int status) {
                try {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#onNewResult");
                    }
                    b.this.o(this, newResult, status);
                } finally {
                    if (com.facebook.imagepipeline.systrace.b.e()) {
                        com.facebook.imagepipeline.systrace.b.c();
                    }
                }
            }
        }

        public b(K key) {
            this.f28449a = key;
        }

        private void g(final Pair<Consumer<T>, ProducerContext> consumerContextPair, final ProducerContext producerContext) {
            producerContext.i(new a(consumerContextPair));
        }

        private void i(@Nullable Closeable obj) {
            if (obj != null) {
                try {
                    obj.close();
                } catch (IOException e10) {
                    throw new RuntimeException(e10);
                }
            }
        }

        private synchronized boolean j() {
            Iterator<Pair<Consumer<T>, ProducerContext>> it2 = this.f28450b.iterator();
            while (it2.hasNext()) {
                if (((ProducerContext) it2.next().second).m()) {
                    return true;
                }
            }
            return false;
        }

        private synchronized boolean k() {
            Iterator<Pair<Consumer<T>, ProducerContext>> it2 = this.f28450b.iterator();
            while (it2.hasNext()) {
                if (!((ProducerContext) it2.next().second).o()) {
                    return false;
                }
            }
            return true;
        }

        private synchronized Priority l() {
            Priority higherPriority;
            higherPriority = Priority.LOW;
            Iterator<Pair<Consumer<T>, ProducerContext>> it2 = this.f28450b.iterator();
            while (it2.hasNext()) {
                higherPriority = Priority.getHigherPriority(higherPriority, ((ProducerContext) it2.next().second).getPriority());
            }
            return higherPriority;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(TriState startedAsPrefetch) {
            synchronized (this) {
                boolean z10 = true;
                com.facebook.common.internal.i.d(Boolean.valueOf(this.f28454f == null));
                if (this.f28455g != null) {
                    z10 = false;
                }
                com.facebook.common.internal.i.d(Boolean.valueOf(z10));
                if (this.f28450b.isEmpty()) {
                    j0.this.k(this.f28449a, this);
                    return;
                }
                ProducerContext producerContext = (ProducerContext) this.f28450b.iterator().next().second;
                d dVar = new d(producerContext.a(), producerContext.getId(), producerContext.d(), producerContext.b(), producerContext.p(), k(), j(), l(), producerContext.c());
                this.f28454f = dVar;
                dVar.g(producerContext.getExtras());
                if (startedAsPrefetch.isSet()) {
                    this.f28454f.h(j0.f28443f, Boolean.valueOf(startedAsPrefetch.asBoolean()));
                }
                j0<K, T>.b.C0577b c0577b = new C0577b();
                this.f28455g = c0577b;
                j0.this.f28445b.a(c0577b, this.f28454f);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<s0> r() {
            d dVar = this.f28454f;
            if (dVar == null) {
                return null;
            }
            return dVar.x(j());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<s0> s() {
            d dVar = this.f28454f;
            if (dVar == null) {
                return null;
            }
            return dVar.y(k());
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Nullable
        public synchronized List<s0> t() {
            d dVar = this.f28454f;
            if (dVar == null) {
                return null;
            }
            return dVar.z(l());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public boolean h(final Consumer<T> consumer, final ProducerContext producerContext) {
            Pair<Consumer<T>, ProducerContext> pairCreate = Pair.create(consumer, producerContext);
            synchronized (this) {
                if (j0.this.i(this.f28449a) != this) {
                    return false;
                }
                this.f28450b.add(pairCreate);
                List<s0> listS = s();
                List<s0> listT = t();
                List<s0> listR = r();
                Closeable closeableG = this.f28451c;
                float f10 = this.f28452d;
                int i10 = this.f28453e;
                d.s(listS);
                d.t(listT);
                d.r(listR);
                synchronized (pairCreate) {
                    synchronized (this) {
                        if (closeableG != this.f28451c) {
                            closeableG = null;
                        } else if (closeableG != null) {
                            closeableG = j0.this.g(closeableG);
                        }
                    }
                    if (closeableG != null) {
                        if (f10 > 0.0f) {
                            consumer.c(f10);
                        }
                        consumer.b(closeableG, i10);
                        i(closeableG);
                    }
                }
                g(pairCreate, producerContext);
                return true;
            }
        }

        public void m(final j0<K, T>.b.C0577b forwardingConsumer) {
            synchronized (this) {
                if (this.f28455g != forwardingConsumer) {
                    return;
                }
                this.f28455g = null;
                this.f28454f = null;
                i(this.f28451c);
                this.f28451c = null;
                q(TriState.UNSET);
            }
        }

        public void n(final j0<K, T>.b.C0577b consumer, final Throwable t10) {
            synchronized (this) {
                if (this.f28455g != consumer) {
                    return;
                }
                this.f28450b.clear();
                j0.this.k(this.f28449a, this);
                i(this.f28451c);
                this.f28451c = null;
                for (Pair<Consumer<T>, ProducerContext> pair : this.f28450b) {
                    synchronized (pair) {
                        ((ProducerContext) pair.second).d().k((ProducerContext) pair.second, j0.this.f28447d, t10, null);
                        ((Consumer) pair.first).onFailure(t10);
                    }
                }
            }
        }

        public void o(j0<K, T>.b.C0577b c0577b, @Nullable T t10, int i10) {
            synchronized (this) {
                if (this.f28455g != c0577b) {
                    return;
                }
                i(this.f28451c);
                this.f28451c = null;
                int size = this.f28450b.size();
                if (com.facebook.imagepipeline.producers.b.e(i10)) {
                    this.f28451c = (T) j0.this.g(t10);
                    this.f28453e = i10;
                } else {
                    this.f28450b.clear();
                    j0.this.k(this.f28449a, this);
                }
                for (Pair<Consumer<T>, ProducerContext> pair : this.f28450b) {
                    synchronized (pair) {
                        if (com.facebook.imagepipeline.producers.b.d(i10)) {
                            ((ProducerContext) pair.second).d().j((ProducerContext) pair.second, j0.this.f28447d, null);
                            d dVar = this.f28454f;
                            if (dVar != null) {
                                ((ProducerContext) pair.second).g(dVar.getExtras());
                            }
                            ((ProducerContext) pair.second).h(j0.this.f28448e, Integer.valueOf(size));
                        }
                        ((Consumer) pair.first).b(t10, i10);
                    }
                }
            }
        }

        public void p(j0<K, T>.b.C0577b forwardingConsumer, float progress) {
            synchronized (this) {
                if (this.f28455g != forwardingConsumer) {
                    return;
                }
                this.f28452d = progress;
                for (Pair<Consumer<T>, ProducerContext> pair : this.f28450b) {
                    synchronized (pair) {
                        ((Consumer) pair.first).c(progress);
                    }
                }
            }
        }
    }

    protected j0(q0<T> inputProducer, String producerName, @ProducerContext.ExtraKeys String dedupedRequestsCountKey) {
        this(inputProducer, producerName, dedupedRequestsCountKey, false);
    }

    private synchronized j0<K, T>.b h(K key) {
        j0<K, T>.b bVar;
        bVar = new b(key);
        this.f28444a.put(key, bVar);
        return bVar;
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(Consumer<T> consumer, ProducerContext context) {
        j0<K, T>.b bVarI;
        boolean z10;
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("MultiplexProducer#produceResults");
            }
            context.d().b(context, this.f28447d);
            K kJ = j(context);
            do {
                synchronized (this) {
                    bVarI = i(kJ);
                    if (bVarI == null) {
                        bVarI = h(kJ);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
            } while (!bVarI.h(consumer, context));
            if (z10) {
                bVarI.q(TriState.valueOf(context.o()));
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    @Nullable
    protected abstract T g(@Nullable T object);

    @Nullable
    protected synchronized j0<K, T>.b i(K key) {
        return this.f28444a.get(key);
    }

    protected abstract K j(ProducerContext producerContext);

    protected synchronized void k(K key, j0<K, T>.b multiplexer) {
        if (this.f28444a.get(key) == multiplexer) {
            this.f28444a.remove(key);
        }
    }

    protected j0(q0<T> inputProducer, String producerName, @ProducerContext.ExtraKeys String dedupedRequestsCountKey, boolean keepCancelledFetchAsLowPriority) {
        this.f28445b = inputProducer;
        this.f28444a = new HashMap();
        this.f28446c = keepCancelledFetchAsLowPriority;
        this.f28447d = producerName;
        this.f28448e = dedupedRequestsCountKey;
    }
}
