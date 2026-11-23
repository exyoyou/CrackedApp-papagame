package com.aggmoread.sdk.z.c.a.a.d.b;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.aggmoread.sdk.z.c.a.a.e.q;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public final class h {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static Map<Integer, com.aggmoread.sdk.z.c.a.a.d.b.b> f5058f = new ConcurrentHashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static com.aggmoread.sdk.z.c.a.a.d.b.i f5059g = com.aggmoread.sdk.z.c.a.a.d.b.i.f5117f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private CountDownLatch f5060a = new CountDownLatch(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f5061b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConcurrentLinkedQueue<com.aggmoread.sdk.z.c.a.a.d.b.l> f5062c = new ConcurrentLinkedQueue<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f5063d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5064e = -1;

    static class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f5066c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5067d;

        a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, int i10, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
            this.f5065b = eVar;
            this.f5066c = i10;
            this.f5067d = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5065b.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, "不支持的广告源. adSource=" + this.f5066c), this.f5067d);
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5068b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f5069c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5070d;

        b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, int i10, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
            this.f5068b = eVar;
            this.f5069c = i10;
            this.f5070d = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5068b.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, "未检测到广告源，请确认广告源接入是否成功. adSource=" + this.f5069c), this.f5070d);
        }
    }

    static class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.b f5071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5072c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5073d;

        c(com.aggmoread.sdk.z.c.a.a.d.b.b bVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
            this.f5071b = bVar;
            this.f5072c = eVar;
            this.f5073d = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f5071b.a(this.f5072c, this.f5073d).p();
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.a(e10.getMessage());
            } catch (OutOfMemoryError e11) {
                e11.printStackTrace();
                com.aggmoread.sdk.z.c.a.a.e.e.b("AMSdkThread", "oom err");
                this.f5072c.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003006, "内存空间不足，广告请求失败！"), this.f5073d);
            }
        }
    }

    class d implements com.aggmoread.sdk.z.c.a.a.e.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ o f5074a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5075b;

        d(h hVar, o oVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f5074a = oVar;
            this.f5075b = eVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            if (jVar != null) {
                this.f5074a.a(null, bArr, jVar);
                return;
            }
            if (i10 != 200) {
                this.f5074a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002001, "HTTP error，statusCode=" + i10));
                return;
            }
            if (bArr == null) {
                this.f5074a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002002, "HTTP error，response parse error."));
                return;
            }
            try {
                Map<Object, Object> mapF = com.aggmoread.sdk.z.c.a.a.b.f(bArr);
                if (mapF == null) {
                    this.f5074a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002006, "HTTP error, response parse error, parse json."));
                    return;
                }
                com.aggmoread.sdk.z.c.a.a.d.b.f fVar = new com.aggmoread.sdk.z.c.a.a.d.b.f(this.f5075b, mapF);
                com.aggmoread.sdk.z.c.a.a.d.b.j jVarC = fVar.c();
                if (jVarC != null) {
                    this.f5074a.a(null, bArr, jVarC);
                } else {
                    this.f5074a.a(fVar, bArr, null);
                }
            } catch (Exception unused) {
                this.f5074a.a(null, bArr, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002002, "HTTP error，response parse error, encodeing error."));
            }
        }
    }

    class e implements com.aggmoread.sdk.z.c.a.a.e.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5076a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o f5077b;

        class a implements o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.e.b f5079a;

            /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.b.h$e$a$a, reason: collision with other inner class name */
            class C0186a implements o {
                C0186a() {
                }

                @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
                public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                    if (bArr != null) {
                        a.this.f5079a.a(bArr);
                    }
                }
            }

            a(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
                this.f5079a = bVar;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
            public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                e.this.f5077b.a(fVar, bArr, jVar);
                e eVar = e.this;
                h.this.b(eVar.f5076a, new C0186a());
            }
        }

        class b implements o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.e.b f5082a;

            class a implements o {
                a() {
                }

                @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
                public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                    if (bArr != null) {
                        b.this.f5082a.a(bArr);
                    }
                }
            }

            b(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
                this.f5082a = bVar;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
            public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                e.this.f5077b.a(fVar, bArr, jVar);
                e eVar = e.this;
                h.this.b(eVar.f5076a, new a());
            }
        }

        class c implements o {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.e.b f5085a;

            class a implements o {
                a() {
                }

                @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
                public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                    if (bArr != null) {
                        c.this.f5085a.a(bArr);
                    }
                }
            }

            c(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
                this.f5085a = bVar;
            }

            @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
            public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
                e.this.f5077b.a(fVar, bArr, jVar);
                e eVar = e.this;
                h.this.b(eVar.f5076a, new a());
            }
        }

        e(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, o oVar) {
            this.f5076a = eVar;
            this.f5077b = oVar;
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0024  */
        @Override // com.aggmoread.sdk.z.c.a.a.e.b.c
        public void a(com.aggmoread.sdk.z.c.a.a.e.b bVar) {
            com.aggmoread.sdk.z.c.a.a.d.b.f fVar;
            h hVar;
            com.aggmoread.sdk.z.c.a.a.d.b.e eVar;
            o cVar;
            byte[] bArrB = bVar != null ? bVar.b() : null;
            if (bArrB != null) {
                try {
                    new String(bArrB, "UTF-8");
                    Map<Object, Object> mapF = com.aggmoread.sdk.z.c.a.a.b.f(bArrB);
                    if (mapF != null) {
                        fVar = new com.aggmoread.sdk.z.c.a.a.d.b.f(this.f5076a, mapF);
                    } else {
                        fVar = null;
                    }
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                }
            } else {
                fVar = null;
            }
            if (fVar == null || fVar.c() != null) {
                hVar = h.this;
                eVar = this.f5076a;
                cVar = new c(bVar);
            } else {
                String strD = bVar.d();
                if ("20102911".equals(strD)) {
                    long jA = ((long) h.this.a(fVar)) * 1000;
                    long jCurrentTimeMillis = System.currentTimeMillis() - bVar.c();
                    com.aggmoread.sdk.z.c.a.a.e.e.a("ct " + jCurrentTimeMillis + ", pct " + jA + ", db " + bVar.c());
                    if (jCurrentTimeMillis < jA) {
                        com.aggmoread.sdk.z.c.a.a.e.e.a("c b");
                        this.f5077b.a(fVar, bVar.b(), null);
                        return;
                    } else {
                        bVar.a((byte[]) null);
                        hVar = h.this;
                        eVar = this.f5076a;
                        cVar = new b(bVar);
                    }
                } else {
                    com.aggmoread.sdk.z.c.a.a.e.e.a("sv " + strD);
                    bVar.a((byte[]) null);
                    hVar = h.this;
                    eVar = this.f5076a;
                    cVar = new a(bVar);
                }
            }
            hVar.b(eVar, cVar);
        }
    }

    class f implements com.aggmoread.sdk.z.c.a.a.e.d.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.i f5088a;

        f(h hVar, com.aggmoread.sdk.z.c.a.a.d.b.i iVar) {
            this.f5088a = iVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.e.d.e
        public void a(int i10, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            if (jVar != null || bArr == null) {
                return;
            }
            try {
                com.aggmoread.sdk.z.c.a.a.e.f fVar = new com.aggmoread.sdk.z.c.a.a.e.f(com.aggmoread.sdk.z.c.a.a.b.h(bArr));
                if (fVar.a(p.f5115a, false)) {
                    com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r = Boolean.TRUE;
                    com.aggmoread.sdk.z.c.a.a.b.c();
                } else {
                    com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r = Boolean.FALSE;
                }
                String strB = null;
                String strA = fVar.a(p.f5116b, (String) null);
                if (strA != null) {
                    com.aggmoread.sdk.z.c.a.a.d.b.k.f5149s = strA;
                }
                com.aggmoread.sdk.z.c.a.a.e.h.a().b("debugLog", com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue());
                com.aggmoread.sdk.z.c.a.a.d.b.i iVar = this.f5088a;
                if (iVar != null) {
                    strB = iVar.b();
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("init set oaid ");
                sb2.append(strB);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class g implements Handler.Callback {
        g() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            h.this.f5060a.countDown();
            h.this.f5061b.set(true);
            return false;
        }
    }

    /* JADX INFO: renamed from: com.aggmoread.sdk.z.c.a.a.d.b.h$h, reason: collision with other inner class name */
    class C0187h implements Handler.Callback {
        C0187h(h hVar) {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(@NonNull Message message) {
            return false;
        }
    }

    class i implements Runnable {
        i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    com.aggmoread.sdk.z.c.a.a.d.b.l lVar = (com.aggmoread.sdk.z.c.a.a.d.b.l) h.this.f5062c.poll();
                    if (lVar == null) {
                        com.aggmoread.sdk.z.c.a.a.e.e.a("q e ");
                        return;
                    } else {
                        com.aggmoread.sdk.z.c.a.a.e.e.a("q r ");
                        lVar.run();
                    }
                } catch (Throwable unused) {
                    return;
                }
            }
        }
    }

    static class j implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Boolean f5091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Handler.Callback f5092c;

        j(Boolean bool, Handler.Callback callback) {
            this.f5091b = bool;
            this.f5092c = callback;
        }

        @Override // java.lang.Runnable
        public void run() {
            Message messageObtain = Message.obtain();
            messageObtain.what = 0;
            messageObtain.obj = this.f5091b;
            this.f5092c.handleMessage(messageObtain);
        }
    }

    class k implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5093b;

        k(com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f5093b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (h.this.f5064e == -1) {
                str = "广告无填充，请确认是否初始化";
            } else {
                str = "广告无填充：" + h.this.f5064e;
            }
            com.aggmoread.sdk.z.c.a.a.d.b.j jVar = new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, str);
            com.aggmoread.sdk.z.c.a.a.c.g gVar = this.f5093b.f4951g;
            if (gVar != null) {
                gVar.a(jVar);
            }
        }
    }

    class l implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5095b;

        l(h hVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f5095b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5095b.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, "广告无填充，当前系统版本暂不支持"), (com.aggmoread.sdk.z.c.a.a.d.b.f) null);
        }
    }

    class m implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5096b;

        m(h hVar, com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f5096b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5096b.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, "sc:广告无填充"), (com.aggmoread.sdk.z.c.a.a.d.b.f) null);
        }
    }

    class n implements o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.e f5097a;

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.j f5099b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5100c;

            a(com.aggmoread.sdk.z.c.a.a.d.b.j jVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5099b = jVar;
                this.f5100c = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001003005, "err: " + this.f5099b.f5128a + ", " + this.f5099b.f5129b), this.f5100c);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5102b;

            b(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5102b = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001005001, "广告无填充"), this.f5102b);
            }
        }

        class c implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5104b;

            c(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5104b = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001005000, "广告无填充"), this.f5104b);
            }
        }

        class d implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5106b;

            d(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5106b = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001005003, "广告无填充"), this.f5106b);
            }
        }

        class e implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5108b;

            e(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5108b = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001005002, "广告无填充"), this.f5108b);
            }
        }

        class f implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5110b;

            f(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5110b = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001005004, "广告无填充"), this.f5110b);
            }
        }

        class g implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ com.aggmoread.sdk.z.c.a.a.d.b.f f5112b;

            class a implements Runnable {
                a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    g gVar = g.this;
                    n.this.f5097a.a(new com.aggmoread.sdk.z.c.a.a.d.b.j(1001001001, "广告无填充"), gVar.f5112b);
                }
            }

            g(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
                this.f5112b = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    boolean zAwait = h.this.f5060a.await(5L, TimeUnit.SECONDS);
                    com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "wait r " + zAwait);
                    if (zAwait) {
                        h.a(n.this.f5097a, this.f5112b);
                        return;
                    }
                } catch (Exception e10) {
                    com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", " loc err : " + e10.getMessage());
                }
                q.a(new a());
            }
        }

        n(com.aggmoread.sdk.z.c.a.a.d.b.e eVar) {
            this.f5097a = eVar;
        }

        @Override // com.aggmoread.sdk.z.c.a.a.d.b.h.o
        public void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar) {
            Runnable fVar2;
            if (jVar != null) {
                fVar2 = new a(jVar, fVar);
            } else {
                int iA = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5042o, 0);
                if (iA <= 0 || iA > this.f5097a.D.d()) {
                    int iA2 = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5040n, 0);
                    if (iA2 <= 0 || iA2 > this.f5097a.C.d()) {
                        int iA3 = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5038m, 0);
                        if (iA3 <= 0 || iA3 > this.f5097a.F.d()) {
                            int iA4 = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5036l, 0);
                            if (iA4 <= 0 || iA4 > this.f5097a.E.d()) {
                                int iA5 = fVar.f5004d.a(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5053x, 0);
                                String str = String.format("REQ_%s_LAST", this.f5097a.f4953i);
                                if (iA5 <= 0 || iA5 * 1000 < System.currentTimeMillis() - com.aggmoread.sdk.z.c.a.a.e.h.a().a(str, 0L)) {
                                    this.f5097a.a(fVar);
                                    com.aggmoread.sdk.z.c.a.a.e.h.a().b(str, System.currentTimeMillis());
                                    if (fVar.a()) {
                                        com.aggmoread.sdk.z.c.a.a.e.e.b("AMSdkThread", "cc bid ");
                                        if (com.aggmoread.sdk.z.c.a.a.d.a.d.s.d.a().b(this.f5097a, fVar)) {
                                            return;
                                        }
                                    }
                                    if (!h.this.f5061b.get()) {
                                        q.c(new g(fVar));
                                        return;
                                    } else {
                                        com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "rs ");
                                        h.a(this.f5097a, fVar);
                                        return;
                                    }
                                }
                                fVar2 = new f(fVar);
                            } else {
                                fVar2 = new e(fVar);
                            }
                        } else {
                            fVar2 = new d(fVar);
                        }
                    } else {
                        fVar2 = new c(fVar);
                    }
                } else {
                    fVar2 = new b(fVar);
                }
            }
            q.a(fVar2);
        }
    }

    private interface o {
        void a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar, byte[] bArr, com.aggmoread.sdk.z.c.a.a.d.b.j jVar);
    }

    public static class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Object f5115a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Object f5116b = new Object();
    }

    public h(Context context) {
        com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q = context;
        com.aggmoread.sdk.z.c.a.a.d.b.k.f5150t = Boolean.FALSE;
        a(100);
        a(10086);
        a(105);
        a(101);
        a(106);
        a(107);
        a(1);
        a(500);
        a(501);
        a(TypedValues.PositionType.TYPE_DRAWPATH);
        a(TypedValues.PositionType.TYPE_PERCENT_WIDTH);
        a(504);
        a(TypedValues.PositionType.TYPE_SIZE_PERCENT);
        a(TypedValues.PositionType.TYPE_PERCENT_X);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        int iB = fVar.f5004d.b(com.aggmoread.sdk.z.c.a.a.d.b.f.c.F);
        if (iB > 3600) {
            return 3600;
        }
        return iB;
    }

    public static com.aggmoread.sdk.z.c.a.a.d.b.i b() {
        return f5059g;
    }

    public void c(com.aggmoread.sdk.z.c.a.a.c.h hVar) {
        b(hVar);
    }

    private void b(com.aggmoread.sdk.z.c.a.a.c.h hVar) {
        com.aggmoread.sdk.z.c.a.a.d.b.e eVar = (com.aggmoread.sdk.z.c.a.a.d.b.e) hVar;
        eVar.a();
        if (com.aggmoread.sdk.z.c.a.a.e.p.a(19)) {
            q.a(new l(this, eVar));
        } else if (com.aggmoread.sdk.z.c.a.a.e.p.e() >= 3) {
            q.a(new m(this, eVar));
        } else {
            a(eVar, new n(eVar));
        }
    }

    public com.aggmoread.sdk.z.c.a.a.c.h.a a(Activity activity) {
        return new com.aggmoread.sdk.z.c.a.a.d.b.d(activity);
    }

    public boolean c() {
        try {
            com.aggmoread.sdk.z.c.a.a.b.a();
            com.aggmoread.sdk.z.c.a.a.d.b.e.i();
            com.aggmoread.sdk.z.c.a.a.d.b.f.i();
            com.aggmoread.sdk.z.c.a.a.d.b.m.a();
            com.aggmoread.sdk.z.c.a.a.b.e(new Object[]{p.f5115a, p.f5116b});
            com.aggmoread.sdk.z.c.a.a.b.a(com.aggmoread.sdk.z.c.a.a.d.b.k.f5131a);
            com.aggmoread.sdk.z.c.a.a.b.b(com.aggmoread.sdk.z.c.a.a.d.b.k.f5142l);
            com.aggmoread.sdk.z.c.a.a.b.i(com.aggmoread.sdk.z.c.a.a.d.b.k.f5133c);
            com.aggmoread.sdk.z.c.a.a.b.j(com.aggmoread.sdk.z.c.a.a.d.b.k.f5135e);
            com.aggmoread.sdk.z.c.a.a.d.b.k.i();
            com.aggmoread.sdk.z.c.a.a.b.k(com.aggmoread.sdk.z.c.a.a.d.b.k.f5132b);
            com.aggmoread.sdk.z.c.a.a.b.l(com.aggmoread.sdk.z.c.a.a.d.b.k.f5144n);
            com.aggmoread.sdk.z.c.a.a.b.m(com.aggmoread.sdk.z.c.a.a.d.b.k.f5140j);
            com.aggmoread.sdk.z.c.a.a.b.n(com.aggmoread.sdk.z.c.a.a.d.b.k.f5136f);
            com.aggmoread.sdk.z.c.a.a.b.o(com.aggmoread.sdk.z.c.a.a.d.b.k.f5145o);
            com.aggmoread.sdk.z.c.a.a.b.p(com.aggmoread.sdk.z.c.a.a.d.b.k.f5138h);
            com.aggmoread.sdk.z.c.a.a.b.c(com.aggmoread.sdk.z.c.a.a.d.b.k.f5139i);
            com.aggmoread.sdk.z.c.a.a.b.d(com.aggmoread.sdk.z.c.a.a.d.b.k.f5137g);
            com.aggmoread.sdk.z.c.a.a.b.e(com.aggmoread.sdk.z.c.a.a.d.b.k.f5143m);
            com.aggmoread.sdk.z.c.a.a.b.f(com.aggmoread.sdk.z.c.a.a.d.b.k.f5141k);
            com.aggmoread.sdk.z.c.a.a.b.g(com.aggmoread.sdk.z.c.a.a.d.b.k.f5134d);
            com.aggmoread.sdk.z.c.a.a.b.h(com.aggmoread.sdk.z.c.a.a.d.b.k.f5146p);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public com.aggmoread.sdk.z.c.a.a.c.h.a a(Context context) {
        return new com.aggmoread.sdk.z.c.a.a.d.b.d(context);
    }

    public void b(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, o oVar) {
        String strA = com.aggmoread.sdk.z.c.a.a.b.a(eVar.c());
        com.aggmoread.sdk.z.c.a.a.e.e.b("AMGTAG", "params is " + strA);
        HashMap map = new HashMap();
        map.put("Content-type", "application/json");
        map.put("tt", "1");
        try {
            com.aggmoread.sdk.z.c.a.a.e.d.a(com.aggmoread.sdk.z.c.a.a.d.b.k.a(), strA.getBytes("UTF-8"), map, new d(this, oVar, eVar));
        } catch (UnsupportedEncodingException unused) {
            oVar.a(null, null, new com.aggmoread.sdk.z.c.a.a.d.b.j(1001002004, "HTTP error, request error"));
        }
    }

    public Object a(Handler.Callback callback, com.aggmoread.sdk.z.c.a.a.d.b.i iVar) {
        int i10;
        this.f5064e = -1;
        if (com.aggmoread.sdk.z.c.a.a.e.p.a(19)) {
            i10 = -100;
        } else {
            if (iVar != null) {
                f5059g = iVar;
            }
            if (c()) {
                com.aggmoread.sdk.z.c.a.a.e.d.a(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q);
                q.b();
                com.aggmoread.sdk.z.c.a.a.e.h.a().a("debugFile", (String) null);
                com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r = Boolean.valueOf(com.aggmoread.sdk.z.c.a.a.e.h.a().a("debugLog", false));
                com.aggmoread.sdk.z.c.a.a.e.c.F();
                try {
                    String strA = com.aggmoread.sdk.z.c.a.a.b.a(com.aggmoread.sdk.z.c.a.a.e.d.b(null));
                    com.aggmoread.sdk.z.c.a.a.b.a(com.aggmoread.sdk.z.c.a.a.d.b.k.f5147q, com.aggmoread.sdk.z.c.a.a.d.b.k.f5148r.booleanValue());
                    byte[] bytes = strA.getBytes("UTF-8");
                    HashMap map = new HashMap();
                    map.put("Content-type", "application/json");
                    map.put("tt", "1");
                    com.aggmoread.sdk.z.c.a.a.e.d.a(com.aggmoread.sdk.z.c.a.a.d.b.k.g(), bytes, map, new f(this, iVar));
                    this.f5061b.set(false);
                    com.aggmoread.sdk.z.c.a.a.e.o.a().c(new g());
                    com.aggmoread.sdk.z.c.a.a.e.o.a().b(new C0187h(this));
                    this.f5063d = true;
                    Boolean bool = Boolean.TRUE;
                    com.aggmoread.sdk.z.c.a.a.d.b.k.f5150t = bool;
                    if (a()) {
                        q.c(new i());
                    }
                    a(callback, bool);
                } catch (Throwable th) {
                    th.printStackTrace();
                    this.f5064e = -101;
                }
                return null;
            }
            i10 = 1001001002;
        }
        this.f5064e = i10;
        a(callback, Boolean.FALSE);
        return null;
    }

    private void a(int i10) {
        Class cls;
        if (i10 == 1) {
            cls = com.aggmoread.sdk.z.c.a.a.d.a.d.r.b.class;
        } else if (i10 == 105) {
            cls = com.aggmoread.sdk.z.c.a.a.d.a.d.u.a.class;
        } else if (i10 == 107) {
            cls = com.aggmoread.sdk.z.c.a.a.d.a.d.w.a.class;
        } else if (i10 == 10086) {
            cls = com.aggmoread.sdk.z.c.a.a.d.a.d.q.a.class;
        } else if (i10 != 100) {
            cls = i10 != 101 ? null : com.aggmoread.sdk.z.c.a.a.d.a.d.t.d.a.class;
        } else {
            cls = com.aggmoread.sdk.z.c.a.a.d.a.d.v.c.class;
        }
        if (cls != null) {
            try {
                Constructor constructor = cls.getConstructor(new Class[0]);
                constructor.setAccessible(true);
                Object objNewInstance = constructor.newInstance(new Object[0]);
                if (objNewInstance instanceof com.aggmoread.sdk.z.c.a.a.d.b.b) {
                    f5058f.put(Integer.valueOf(i10), (com.aggmoread.sdk.z.c.a.a.d.b.b) objNewInstance);
                }
            } catch (Exception e10) {
                com.aggmoread.sdk.z.c.a.a.e.e.b("err " + e10.getMessage());
            }
        }
    }

    private static void a(Handler.Callback callback, Boolean bool) {
        if (callback != null) {
            q.a(new j(bool, callback));
        }
    }

    public void a(com.aggmoread.sdk.z.c.a.a.c.h hVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("init ");
        sb2.append(this.f5063d);
        if (this.f5063d) {
            b(hVar);
        } else if (a() && this.f5064e == -1) {
            this.f5062c.add(new com.aggmoread.sdk.z.c.a.a.d.b.l(this, hVar));
        } else {
            q.a(new k((com.aggmoread.sdk.z.c.a.a.d.b.e) hVar));
        }
    }

    public static void a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        int iF = fVar.f();
        if (iF == 0) {
            iF = 10086;
        }
        com.aggmoread.sdk.z.c.a.a.d.b.b bVar = f5058f.get(Integer.valueOf(iF));
        if (bVar == null) {
            q.a(new a(eVar, iF, fVar));
        } else if (bVar.a()) {
            q.a(new c(bVar, eVar, fVar));
        } else {
            q.a(new b(eVar, iF, fVar));
        }
    }

    public void a(com.aggmoread.sdk.z.c.a.a.d.b.e eVar, o oVar) {
        com.aggmoread.sdk.z.c.a.a.e.b bVarA = com.aggmoread.sdk.z.c.a.a.e.b.a("sc_" + eVar.f4953i);
        e eVar2 = new e(eVar, oVar);
        if (bVarA != null) {
            bVarA.a(eVar2);
        } else {
            eVar2.a(null);
        }
    }

    private boolean a() {
        return false;
    }
}
