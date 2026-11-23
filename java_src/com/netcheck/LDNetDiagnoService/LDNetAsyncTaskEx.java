package com.netcheck.LDNetDiagnoService;

import android.os.Handler;
import android.os.Message;
import com.haima.hmcp.utils.LogUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public abstract class LDNetAsyncTaskEx<Params, Progress, Result> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f75783d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f75784e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f75785f = 3;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final e f75786g = new e(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Status f75787a = Status.PENDING;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f<Params, Result> f75788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final FutureTask<Result> f75789c;

    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    class a extends f<Params, Result> {
        a() {
            super(null);
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            return (Result) LDNetAsyncTaskEx.this.b(this.f75795b);
        }
    }

    class b extends FutureTask<Result> {
        b(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            Result result = null;
            try {
                result = get();
            } catch (InterruptedException e10) {
                LogUtils.w(getClass().getSimpleName(), e10.toString());
            } catch (CancellationException unused) {
                LDNetAsyncTaskEx.f75786g.obtainMessage(3, new d(LDNetAsyncTaskEx.this, null)).sendToTarget();
                return;
            } catch (ExecutionException e11) {
                throw new RuntimeException("An error occured while executing doInBackground()", e11.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occured while executing doInBackground()", th);
            }
            LDNetAsyncTaskEx.f75786g.obtainMessage(1, new d(LDNetAsyncTaskEx.this, result)).sendToTarget();
        }
    }

    static /* synthetic */ class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f75792a;

        static {
            int[] iArr = new int[Status.values().length];
            f75792a = iArr;
            try {
                iArr[Status.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f75792a[Status.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private static class d<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final LDNetAsyncTaskEx f75793a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Data[] f75794b;

        d(LDNetAsyncTaskEx lDNetAsyncTaskEx, Data... dataArr) {
            this.f75793a = lDNetAsyncTaskEx;
            this.f75794b = dataArr;
        }
    }

    private static class e extends Handler {
        private e() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            d dVar = (d) message.obj;
            int i10 = message.what;
            if (i10 == 1) {
                dVar.f75793a.c(dVar.f75794b[0]);
            } else if (i10 == 2) {
                dVar.f75793a.h(dVar.f75794b);
            } else {
                if (i10 != 3) {
                    return;
                }
                dVar.f75793a.e();
            }
        }

        /* synthetic */ e(a aVar) {
            this();
        }
    }

    private static abstract class f<Params, Result> implements Callable<Result> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Params[] f75795b;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    public LDNetAsyncTaskEx() {
        a aVar = new a();
        this.f75788b = aVar;
        this.f75789c = new b(aVar);
    }

    protected abstract Result b(Params... paramsArr);

    protected void c(Result result) {
        if (isCancelled()) {
            result = null;
        }
        f(result);
        this.f75787a = Status.FINISHED;
    }

    public final boolean cancel(boolean z10) {
        return this.f75789c.cancel(z10);
    }

    protected abstract ThreadPoolExecutor d();

    protected void e() {
    }

    public final LDNetAsyncTaskEx<Params, Progress, Result> execute(Params... paramsArr) {
        if (this.f75787a != Status.PENDING) {
            int i10 = c.f75792a[this.f75787a.ordinal()];
            if (i10 == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i10 == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f75787a = Status.RUNNING;
        g();
        this.f75788b.f75795b = paramsArr;
        ThreadPoolExecutor threadPoolExecutorD = d();
        if (threadPoolExecutorD == null) {
            return null;
        }
        threadPoolExecutorD.execute(this.f75789c);
        return this;
    }

    protected void f(Result result) {
    }

    protected void g() {
    }

    public final Status getStatus() {
        return this.f75787a;
    }

    protected void h(Progress... progressArr) {
    }

    protected final void i(Progress... progressArr) {
        f75786g.obtainMessage(2, new d(this, progressArr)).sendToTarget();
    }

    public final boolean isCancelled() {
        return this.f75789c.isCancelled();
    }
}
