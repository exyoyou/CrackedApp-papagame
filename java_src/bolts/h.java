package bolts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes7.dex */
public class h<TResult> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile q f443l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f450c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TResult f451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Exception f452e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f453f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private bolts.j f454g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ExecutorService f440i = bolts.b.a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Executor f441j = bolts.b.b();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Executor f442k = bolts.a.d();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static h<?> f444m = new h<>((Object) null);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static h<Boolean> f445n = new h<>(Boolean.TRUE);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static h<Boolean> f446o = new h<>(Boolean.FALSE);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static h<?> f447p = new h<>(true);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f448a = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<bolts.g<TResult, Void>> f455h = new ArrayList();

    class a implements bolts.g<TResult, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bolts.i f456a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.g f457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Executor f458c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ bolts.c f459d;

        a(bolts.i iVar, bolts.g gVar, Executor executor, bolts.c cVar) {
            this.f456a = iVar;
            this.f457b = gVar;
            this.f458c = executor;
            this.f459d = cVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<TResult> hVar) {
            h.h(this.f456a, this.f457b, hVar, this.f458c, this.f459d);
            return null;
        }
    }

    class b implements bolts.g<TResult, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bolts.i f461a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.g f462b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Executor f463c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ bolts.c f464d;

        b(bolts.i iVar, bolts.g gVar, Executor executor, bolts.c cVar) {
            this.f461a = iVar;
            this.f462b = gVar;
            this.f463c = executor;
            this.f464d = cVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<TResult> hVar) {
            h.g(this.f461a, this.f462b, hVar, this.f463c, this.f464d);
            return null;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    class c<TContinuationResult> implements bolts.g<TResult, h<TContinuationResult>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bolts.c f466a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.g f467b;

        c(bolts.c cVar, bolts.g gVar) {
            this.f466a = cVar;
            this.f467b = gVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h<TContinuationResult> a(h<TResult> hVar) {
            bolts.c cVar = this.f466a;
            if (cVar != null && cVar.a()) {
                return h.e();
            }
            if (hVar.F()) {
                return h.y(hVar.A());
            }
            return hVar.D() ? h.e() : hVar.m(this.f467b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
    class d<TContinuationResult> implements bolts.g<TResult, h<TContinuationResult>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bolts.c f469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.g f470b;

        d(bolts.c cVar, bolts.g gVar) {
            this.f469a = cVar;
            this.f470b = gVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h<TContinuationResult> a(h<TResult> hVar) {
            bolts.c cVar = this.f469a;
            if (cVar != null && cVar.a()) {
                return h.e();
            }
            if (hVar.F()) {
                return h.y(hVar.A());
            }
            return hVar.D() ? h.e() : hVar.q(this.f470b);
        }
    }

    static class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.c f472b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ bolts.i f473c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ bolts.g f474d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ h f475e;

        e(bolts.c cVar, bolts.i iVar, bolts.g gVar, h hVar) {
            this.f472b = cVar;
            this.f473c = iVar;
            this.f474d = gVar;
            this.f475e = hVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f472b;
            if (cVar != null && cVar.a()) {
                this.f473c.b();
                return;
            }
            try {
                this.f473c.setResult(this.f474d.a(this.f475e));
            } catch (CancellationException unused) {
                this.f473c.b();
            } catch (Exception e10) {
                this.f473c.c(e10);
            }
        }
    }

    static class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.c f476b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ bolts.i f477c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ bolts.g f478d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ h f479e;

        /* JADX INFO: Add missing generic type declarations: [TContinuationResult] */
        class a<TContinuationResult> implements bolts.g<TContinuationResult, Void> {
            a() {
            }

            @Override // bolts.g
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Void a(h<TContinuationResult> hVar) {
                bolts.c cVar = f.this.f476b;
                if (cVar != null && cVar.a()) {
                    f.this.f477c.b();
                    return null;
                }
                if (hVar.D()) {
                    f.this.f477c.b();
                } else if (hVar.F()) {
                    f.this.f477c.c(hVar.A());
                } else {
                    f.this.f477c.setResult(hVar.B());
                }
                return null;
            }
        }

        f(bolts.c cVar, bolts.i iVar, bolts.g gVar, h hVar) {
            this.f476b = cVar;
            this.f477c = iVar;
            this.f478d = gVar;
            this.f479e = hVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f476b;
            if (cVar != null && cVar.a()) {
                this.f477c.b();
                return;
            }
            try {
                h hVar = (h) this.f478d.a(this.f479e);
                if (hVar == null) {
                    this.f477c.setResult(null);
                } else {
                    hVar.m(new a());
                }
            } catch (CancellationException unused) {
                this.f477c.b();
            } catch (Exception e10) {
                this.f477c.c(e10);
            }
        }
    }

    static class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.i f481b;

        g(bolts.i iVar) {
            this.f481b = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f481b.f(null);
        }
    }

    /* JADX INFO: renamed from: bolts.h$h, reason: collision with other inner class name */
    static class RunnableC0022h implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ScheduledFuture f482b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ bolts.i f483c;

        RunnableC0022h(ScheduledFuture scheduledFuture, bolts.i iVar) {
            this.f482b = scheduledFuture;
            this.f483c = iVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f482b.cancel(true);
            this.f483c.d();
        }
    }

    class i implements bolts.g<TResult, h<Void>> {
        i() {
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h<Void> a(h<TResult> hVar) throws Exception {
            if (hVar.D()) {
                return h.e();
            }
            return hVar.F() ? h.y(hVar.A()) : h.z(null);
        }
    }

    static class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.c f485b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ bolts.i f486c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Callable f487d;

        j(bolts.c cVar, bolts.i iVar, Callable callable) {
            this.f485b = cVar;
            this.f486c = iVar;
            this.f487d = callable;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            bolts.c cVar = this.f485b;
            if (cVar != null && cVar.a()) {
                this.f486c.b();
                return;
            }
            try {
                this.f486c.setResult(this.f487d.call());
            } catch (CancellationException unused) {
                this.f486c.b();
            } catch (Exception e10) {
                this.f486c.c(e10);
            }
        }
    }

    static class k implements bolts.g<TResult, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.i f489b;

        k(AtomicBoolean atomicBoolean, bolts.i iVar) {
            this.f488a = atomicBoolean;
            this.f489b = iVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<TResult> hVar) {
            if (this.f488a.compareAndSet(false, true)) {
                this.f489b.setResult(hVar);
                return null;
            }
            hVar.A();
            return null;
        }
    }

    static class l implements bolts.g<Object, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f490a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ bolts.i f491b;

        l(AtomicBoolean atomicBoolean, bolts.i iVar) {
            this.f490a = atomicBoolean;
            this.f491b = iVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<Object> hVar) {
            if (this.f490a.compareAndSet(false, true)) {
                this.f491b.setResult(hVar);
                return null;
            }
            hVar.A();
            return null;
        }
    }

    static class m implements bolts.g<Void, List<TResult>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Collection f492a;

        m(Collection collection) {
            this.f492a = collection;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public List<TResult> a(h<Void> hVar) throws Exception {
            if (this.f492a.size() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            Iterator it2 = this.f492a.iterator();
            while (it2.hasNext()) {
                arrayList.add(((h) it2.next()).B());
            }
            return arrayList;
        }
    }

    static class n implements bolts.g<Object, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f493a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ArrayList f494b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f495c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f496d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ bolts.i f497e;

        n(Object obj, ArrayList arrayList, AtomicBoolean atomicBoolean, AtomicInteger atomicInteger, bolts.i iVar) {
            this.f493a = obj;
            this.f494b = arrayList;
            this.f495c = atomicBoolean;
            this.f496d = atomicInteger;
            this.f497e = iVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void a(h<Object> hVar) {
            if (hVar.F()) {
                synchronized (this.f493a) {
                    this.f494b.add(hVar.A());
                }
            }
            if (hVar.D()) {
                this.f495c.set(true);
            }
            if (this.f496d.decrementAndGet() == 0) {
                if (this.f494b.size() != 0) {
                    if (this.f494b.size() == 1) {
                        this.f497e.c((Exception) this.f494b.get(0));
                    } else {
                        this.f497e.c(new AggregateException(String.format("There were %d exceptions.", Integer.valueOf(this.f494b.size())), this.f494b));
                    }
                } else if (this.f495c.get()) {
                    this.f497e.b();
                } else {
                    this.f497e.setResult(null);
                }
            }
            return null;
        }
    }

    class o implements bolts.g<Void, h<Void>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ bolts.c f498a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Callable f499b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ bolts.g f500c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Executor f501d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ bolts.f f502e;

        o(bolts.c cVar, Callable callable, bolts.g gVar, Executor executor, bolts.f fVar) {
            this.f498a = cVar;
            this.f499b = callable;
            this.f500c = gVar;
            this.f501d = executor;
            this.f502e = fVar;
        }

        @Override // bolts.g
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public h<Void> a(h<Void> hVar) throws Exception {
            bolts.c cVar = this.f498a;
            if (cVar == null || !cVar.a()) {
                return ((Boolean) this.f499b.call()).booleanValue() ? h.z(null).N(this.f500c, this.f501d).N((bolts.g) this.f502e.a(), this.f501d) : h.z(null);
            }
            return h.e();
        }
    }

    public class p extends bolts.i<TResult> {
        p() {
        }
    }

    public interface q {
        void a(h<?> hVar, UnobservedTaskException unobservedTaskException);
    }

    h() {
    }

    public static q C() {
        return f443l;
    }

    private void P() {
        synchronized (this.f448a) {
            Iterator<bolts.g<TResult, Void>> it2 = this.f455h.iterator();
            while (it2.hasNext()) {
                try {
                    it2.next().a(this);
                } catch (RuntimeException e10) {
                    throw e10;
                } catch (Exception e11) {
                    throw new RuntimeException(e11);
                }
            }
            this.f455h = null;
        }
    }

    public static void Q(q qVar) {
        f443l = qVar;
    }

    public static h<Void> W(Collection<? extends h<?>> collection) {
        if (collection.size() == 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        ArrayList arrayList = new ArrayList();
        Object obj = new Object();
        AtomicInteger atomicInteger = new AtomicInteger(collection.size());
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<? extends h<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().m(new n(obj, arrayList, atomicBoolean, atomicInteger, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<List<TResult>> X(Collection<? extends h<TResult>> collection) {
        return (h<List<TResult>>) W(collection).H(new m(collection));
    }

    public static h<h<?>> Y(Collection<? extends h<?>> collection) {
        if (collection.size() == 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<? extends h<?>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().m(new l(atomicBoolean, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<h<TResult>> Z(Collection<? extends h<TResult>> collection) {
        if (collection.size() == 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Iterator<? extends h<TResult>> it2 = collection.iterator();
        while (it2.hasNext()) {
            it2.next().m(new k(atomicBoolean, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> c(Callable<TResult> callable) {
        return call(callable, f440i, null);
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable, Executor executor) {
        return call(callable, executor, null);
    }

    public static <TResult> h<TResult> d(Callable<TResult> callable, bolts.c cVar) {
        return call(callable, f440i, cVar);
    }

    public static <TResult> h<TResult> e() {
        return (h<TResult>) f447p;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void g(bolts.i<TContinuationResult> iVar, bolts.g<TResult, h<TContinuationResult>> gVar, h<TResult> hVar, Executor executor, bolts.c cVar) {
        try {
            executor.execute(new f(cVar, iVar, gVar, hVar));
        } catch (Exception e10) {
            iVar.c(new ExecutorException(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <TContinuationResult, TResult> void h(bolts.i<TContinuationResult> iVar, bolts.g<TResult, TContinuationResult> gVar, h<TResult> hVar, Executor executor, bolts.c cVar) {
        try {
            executor.execute(new e(cVar, iVar, gVar, hVar));
        } catch (Exception e10) {
            iVar.c(new ExecutorException(e10));
        }
    }

    public static <TResult> h<TResult>.p u() {
        return new p();
    }

    public static h<Void> v(long j10) {
        return x(j10, bolts.b.d(), null);
    }

    public static h<Void> w(long j10, bolts.c cVar) {
        return x(j10, bolts.b.d(), cVar);
    }

    static h<Void> x(long j10, ScheduledExecutorService scheduledExecutorService, bolts.c cVar) {
        if (cVar != null && cVar.a()) {
            return e();
        }
        if (j10 <= 0) {
            return z(null);
        }
        bolts.i iVar = new bolts.i();
        ScheduledFuture<?> scheduledFutureSchedule = scheduledExecutorService.schedule(new g(iVar), j10, TimeUnit.MILLISECONDS);
        if (cVar != null) {
            cVar.b(new RunnableC0022h(scheduledFutureSchedule, iVar));
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> y(Exception exc) {
        bolts.i iVar = new bolts.i();
        iVar.c(exc);
        return iVar.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <TResult> h<TResult> z(TResult tresult) {
        if (tresult == 0) {
            return (h<TResult>) f444m;
        }
        if (tresult instanceof Boolean) {
            return ((Boolean) tresult).booleanValue() ? (h<TResult>) f445n : (h<TResult>) f446o;
        }
        bolts.i iVar = new bolts.i();
        iVar.setResult(tresult);
        return iVar.a();
    }

    public Exception A() {
        Exception exc;
        synchronized (this.f448a) {
            if (this.f452e != null) {
                this.f453f = true;
                bolts.j jVar = this.f454g;
                if (jVar != null) {
                    jVar.a();
                    this.f454g = null;
                }
            }
            exc = this.f452e;
        }
        return exc;
    }

    public TResult B() {
        TResult tresult;
        synchronized (this.f448a) {
            tresult = this.f451d;
        }
        return tresult;
    }

    public boolean D() {
        boolean z10;
        synchronized (this.f448a) {
            z10 = this.f450c;
        }
        return z10;
    }

    public boolean E() {
        boolean z10;
        synchronized (this.f448a) {
            z10 = this.f449b;
        }
        return z10;
    }

    public boolean F() {
        boolean z10;
        synchronized (this.f448a) {
            z10 = A() != null;
        }
        return z10;
    }

    public h<Void> G() {
        return q(new i());
    }

    public <TContinuationResult> h<TContinuationResult> H(bolts.g<TResult, TContinuationResult> gVar) {
        return K(gVar, f441j, null);
    }

    public <TContinuationResult> h<TContinuationResult> I(bolts.g<TResult, TContinuationResult> gVar, bolts.c cVar) {
        return K(gVar, f441j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> J(bolts.g<TResult, TContinuationResult> gVar, Executor executor) {
        return K(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> K(bolts.g<TResult, TContinuationResult> gVar, Executor executor, bolts.c cVar) {
        return s(new c(cVar, gVar), executor);
    }

    public <TContinuationResult> h<TContinuationResult> L(bolts.g<TResult, h<TContinuationResult>> gVar) {
        return N(gVar, f441j);
    }

    public <TContinuationResult> h<TContinuationResult> M(bolts.g<TResult, h<TContinuationResult>> gVar, bolts.c cVar) {
        return O(gVar, f441j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> N(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor) {
        return O(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> O(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor, bolts.c cVar) {
        return s(new d(cVar, gVar), executor);
    }

    boolean R() {
        synchronized (this.f448a) {
            if (this.f449b) {
                return false;
            }
            this.f449b = true;
            this.f450c = true;
            this.f448a.notifyAll();
            P();
            return true;
        }
    }

    boolean S(Exception exc) {
        synchronized (this.f448a) {
            if (this.f449b) {
                return false;
            }
            this.f449b = true;
            this.f452e = exc;
            this.f453f = false;
            this.f448a.notifyAll();
            P();
            if (!this.f453f && C() != null) {
                this.f454g = new bolts.j(this);
            }
            return true;
        }
    }

    boolean T(TResult tresult) {
        synchronized (this.f448a) {
            if (this.f449b) {
                return false;
            }
            this.f449b = true;
            this.f451d = tresult;
            this.f448a.notifyAll();
            P();
            return true;
        }
    }

    public void U() throws InterruptedException {
        synchronized (this.f448a) {
            if (!E()) {
                this.f448a.wait();
            }
        }
    }

    public boolean V(long j10, TimeUnit timeUnit) throws InterruptedException {
        boolean zE;
        synchronized (this.f448a) {
            if (!E()) {
                this.f448a.wait(timeUnit.toMillis(j10));
            }
            zE = E();
        }
        return zE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <TOut> h<TOut> f() {
        return this;
    }

    public h<Void> i(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar) {
        return l(callable, gVar, f441j, null);
    }

    public h<Void> j(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, bolts.c cVar) {
        return l(callable, gVar, f441j, cVar);
    }

    public h<Void> k(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, Executor executor) {
        return l(callable, gVar, executor, null);
    }

    public h<Void> l(Callable<Boolean> callable, bolts.g<Void, h<Void>> gVar, Executor executor, bolts.c cVar) {
        bolts.f fVar = new bolts.f();
        fVar.b(new o(cVar, callable, gVar, executor, fVar));
        return G().s((bolts.g) fVar.a(), executor);
    }

    public <TContinuationResult> h<TContinuationResult> m(bolts.g<TResult, TContinuationResult> gVar) {
        return p(gVar, f441j, null);
    }

    public <TContinuationResult> h<TContinuationResult> n(bolts.g<TResult, TContinuationResult> gVar, bolts.c cVar) {
        return p(gVar, f441j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> o(bolts.g<TResult, TContinuationResult> gVar, Executor executor) {
        return p(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> p(bolts.g<TResult, TContinuationResult> gVar, Executor executor, bolts.c cVar) {
        boolean zE;
        bolts.i iVar = new bolts.i();
        synchronized (this.f448a) {
            zE = E();
            if (!zE) {
                this.f455h.add(new a(iVar, gVar, executor, cVar));
            }
        }
        if (zE) {
            h(iVar, gVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public <TContinuationResult> h<TContinuationResult> q(bolts.g<TResult, h<TContinuationResult>> gVar) {
        return t(gVar, f441j, null);
    }

    public <TContinuationResult> h<TContinuationResult> r(bolts.g<TResult, h<TContinuationResult>> gVar, bolts.c cVar) {
        return t(gVar, f441j, cVar);
    }

    public <TContinuationResult> h<TContinuationResult> s(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor) {
        return t(gVar, executor, null);
    }

    public <TContinuationResult> h<TContinuationResult> t(bolts.g<TResult, h<TContinuationResult>> gVar, Executor executor, bolts.c cVar) {
        boolean zE;
        bolts.i iVar = new bolts.i();
        synchronized (this.f448a) {
            zE = E();
            if (!zE) {
                this.f455h.add(new b(iVar, gVar, executor, cVar));
            }
        }
        if (zE) {
            g(iVar, gVar, this, executor, cVar);
        }
        return iVar.a();
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable, Executor executor, bolts.c cVar) {
        bolts.i iVar = new bolts.i();
        try {
            executor.execute(new j(cVar, iVar, callable));
        } catch (Exception e10) {
            iVar.c(new ExecutorException(e10));
        }
        return iVar.a();
    }

    private h(TResult tresult) {
        T(tresult);
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable) {
        return call(callable, f441j, null);
    }

    public static <TResult> h<TResult> call(Callable<TResult> callable, bolts.c cVar) {
        return call(callable, f441j, cVar);
    }

    private h(boolean z10) {
        if (z10) {
            R();
        } else {
            T(null);
        }
    }
}
