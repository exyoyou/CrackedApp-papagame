package com.sdk.d;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.framework.utils.log.MobileLogManager;
import com.sdk.base.module.manager.SDKManager;
import io.netty.handler.codec.rtsp.RtspHeaders;
import java.net.HttpURLConnection;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c<Params, Progress, Result> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final d f78483g = new d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Executor f78484h = new com.sdk.d.d(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e<Params, Result> f78485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FutureTask<Result> f78486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f78487c = new AtomicBoolean();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f78488d = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f78489e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f78490f = Boolean.valueOf(com.sdk.f.d.f78522b);

    public class a extends e<Params, Result> {
        public a() {
            super(null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.concurrent.Callable
        public Result call() {
            c.this.f78488d.set(true);
            Process.setThreadPriority(10);
            c cVar = c.this;
            Object[] objArr = this.f78495a;
            com.sdk.a.c cVar2 = (com.sdk.a.c) cVar;
            cVar2.getClass();
            LogUtils.d_yl("PriorityAsyncTask", "HttpHandler doInBackground", 0);
            if (cVar2.f78393m != com.sdk.a.c.a.CANCELLED && objArr != null && objArr.length != 0) {
                if (objArr.length == 4) {
                    cVar2.f78397q = String.valueOf(objArr[1]);
                    cVar2.f78398r = true;
                    cVar2.f78399s = (Boolean) objArr[2];
                    cVar2.f78400t = (Boolean) objArr[3];
                }
                if (objArr.length == 2) {
                    cVar2.f78401u = (Boolean) objArr[1];
                }
                try {
                    cVar2.f78396p = SystemClock.uptimeMillis();
                    cVar2.a(1);
                    com.sdk.a.d dVar = (com.sdk.a.d) objArr[0];
                    cVar2.f78392l = dVar.b();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    HttpURLConnection httpURLConnectionA = dVar.a(cVar2.f78392l, com.sdk.n.a.c.f78561a == dVar.f78419b.f78442h);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("request.client强开耗时时间: ");
                    long j10 = jCurrentTimeMillis2 - jCurrentTimeMillis;
                    sb2.append(j10);
                    sb2.append("\ndoInBackground forcedTime: ");
                    sb2.append(j10 + com.sdk.x.a.f78623k);
                    LogUtils.d_yl("PriorityAsyncTask", sb2.toString(), 1);
                    com.sdk.a.c.C.put("forcedTime", Long.valueOf(j10 + com.sdk.x.a.f78623k));
                    if (httpURLConnectionA == null) {
                        cVar2.a(4, new com.sdk.a.f(0, cVar2.b(), false));
                        LogUtils.d_yl("PriorityAsyncTask", "client = null", 0);
                    } else {
                        com.sdk.a.f fVarB = cVar2.b(dVar, httpURLConnectionA);
                        if (fVarB.f78444b.equals("网络访问已取消")) {
                            cVar2.f78404x.put("endTime", Long.valueOf(System.currentTimeMillis()));
                        }
                        if (fVarB.f78443a == 0) {
                            cVar2.a(4, fVarB);
                        } else {
                            cVar2.a(3, Integer.valueOf(fVarB.f78443a), fVarB.f78444b);
                            fVarB.f78444b.equals("网络访问异常");
                            fVarB.f78444b.equals("网络访问已取消");
                        }
                    }
                } catch (Exception e10) {
                    MobileLogManager.status302002(e10.toString());
                    LogUtils.d_yl("PriorityAsyncTask", "HttpHandler：doInBackground", 0);
                    cVar2.a(3, 302002, "网络访问异常");
                }
            }
            return (Result) cVar.a((Object) null);
        }
    }

    public class b extends FutureTask<Result> {
        public b(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            try {
                c cVar = c.this;
                Result result = get();
                if (cVar.f78488d.get()) {
                    return;
                }
                cVar.a(result);
            } catch (Exception e10) {
                c cVar2 = c.this;
                if (!cVar2.f78488d.get()) {
                    cVar2.a((Object) null);
                }
                LogUtils.e("PriorityAsyncTask", e10.getMessage(), c.this.f78490f);
            }
        }
    }

    /* JADX INFO: renamed from: com.sdk.d.c$c, reason: collision with other inner class name */
    public static class C1011c<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f78493a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Data[] f78494b;

        public C1011c(c cVar, Data... dataArr) {
            this.f78493a = cVar;
            this.f78494b = dataArr;
        }
    }

    public static class d extends Handler {
        public d() {
            super(Looper.getMainLooper());
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
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
            int i10;
            C1011c c1011c = (C1011c) message.obj;
            int i11 = message.what;
            if (i11 == 1) {
                c cVar = c1011c.f78493a;
                Object obj = c1011c.f78494b[0];
                cVar.f78487c.get();
                return;
            }
            if (i11 != 2) {
                return;
            }
            c cVar2 = c1011c.f78493a;
            Object[] objArr = c1011c.f78494b;
            com.sdk.a.c cVar3 = (com.sdk.a.c) cVar2;
            cVar3.getClass();
            LogUtils.d_yl("PriorityAsyncTask", "HttpHandler onProgressUpdate 开始", 0);
            if (cVar3.f78393m == com.sdk.a.c.a.CANCELLED || objArr == null || objArr.length == 0 || cVar3.f78390j == null) {
                return;
            }
            int iIntValue = ((Integer) objArr[0]).intValue();
            if (iIntValue == 1) {
                cVar3.f78393m = com.sdk.a.c.a.STARTED;
                cVar3.f78390j.getClass();
                return;
            }
            if (iIntValue == 2) {
                if (objArr.length != 3) {
                    return;
                }
                cVar3.f78393m = com.sdk.a.c.a.LOADING;
                Object obj2 = cVar3.f78390j;
                Long.parseLong(String.valueOf(objArr[1]));
                Long.parseLong(String.valueOf(objArr[2]));
                obj2.getClass();
                return;
            }
            if (iIntValue == 3) {
                if (objArr.length != 3) {
                    return;
                }
                cVar3.f78393m = com.sdk.a.c.a.FAILURE;
                Object obj3 = cVar3.f78390j;
                int iIntValue2 = ((Integer) objArr[1]).intValue();
                String str = (String) objArr[2];
                com.sdk.g.b bVar = ((com.sdk.g.a) obj3).f78528a;
                String str2 = ((Object) str) + "";
                com.sdk.e.a<T> aVar = bVar.f78535e;
                if (aVar != 0) {
                    aVar.a(iIntValue2, 302002, str2);
                    bVar.f78535e = null;
                }
                String.valueOf(iIntValue2);
                String str3 = com.sdk.g.b.f78529j;
                return;
            }
            if (iIntValue != 4 || objArr.length != 2) {
                return;
            }
            cVar3.f78393m = com.sdk.a.c.a.SUCCESS;
            Object obj4 = cVar3.f78390j;
            com.sdk.a.f fVar = (com.sdk.a.f) objArr[1];
            String str4 = cVar3.f78402v.f78436b;
            com.sdk.g.a aVar2 = (com.sdk.g.a) obj4;
            aVar2.getClass();
            try {
                JSONObject jSONObject = new JSONObject(fVar == null ? "" : (String) fVar.f78444b);
                int iOptInt = jSONObject.optInt("code");
                try {
                    String strOptString = jSONObject.optString("msg");
                    int iOptInt2 = jSONObject.optInt("status");
                    String strOptString2 = jSONObject.optString("obj");
                    String strOptString3 = jSONObject.optString(RtspHeaders.Values.SEQ);
                    if (com.sdk.r.a.a(strOptString).booleanValue() && com.sdk.r.a.a(strOptString3).booleanValue() && com.sdk.r.a.a(strOptString2).booleanValue()) {
                        aVar2.f78528a.a(1, "服务端数据格式出错", 302003, null, MobileLogManager.getMobileLog().f78516c);
                        LogUtils.e(com.sdk.g.b.f78529j, "返回数据为空", Boolean.valueOf(com.sdk.g.b.f78530k));
                        return;
                    }
                    aVar2.f78528a.a(iOptInt, strOptString, iOptInt2, strOptString2, strOptString3);
                    String.valueOf(iOptInt);
                    String str5 = iOptInt2 + "";
                    if (iOptInt2 == 100) {
                        return;
                    }
                    str5.length();
                } catch (Throwable th) {
                    th = th;
                    i10 = iOptInt;
                    aVar2.f78528a.f78539i = com.sdk.j.a.a(SDKManager.getContext(), RtspHeaders.Values.SEQ, "");
                    MobileLogManager.status302003(th.toString());
                    aVar2.f78528a.a(i10, "服务端数据格式出错", 302003, null, MobileLogManager.getMobileLog().f78516c);
                    LogUtils.e(com.sdk.g.b.f78529j, "返回数据解析异常：" + th.toString(), Boolean.valueOf(com.sdk.g.b.f78530k));
                    if (com.sdk.r.a.a(aVar2.f78528a.f78539i).booleanValue()) {
                        aVar2.f78528a.f78539i = com.sdk.j.a.a(SDKManager.getContext(), RtspHeaders.Values.SEQ, "");
                        if (com.sdk.r.a.a(aVar2.f78528a.f78539i).booleanValue()) {
                            aVar2.f78528a.f78539i = "seqAndroidEmpty";
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                i10 = 1;
            }
        }
    }

    public static abstract class e<Params, Result> implements Callable<Result> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Params[] f78495a;

        public e() {
        }

        public /* synthetic */ e(a aVar) {
            this();
        }
    }

    public c() {
        a aVar = new a();
        this.f78485a = aVar;
        this.f78486b = new b(aVar);
    }

    public final Result a(Result result) {
        f78483g.obtainMessage(1, new C1011c(this, result)).sendToTarget();
        return result;
    }

    public final void a(Progress... progressArr) {
        if (this.f78487c.get()) {
            return;
        }
        f78483g.obtainMessage(2, new C1011c(this, progressArr)).sendToTarget();
    }
}
