package org.jboss.netty.channel;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: loaded from: classes10.dex */
public class x implements n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final p f95678f = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile e f95679a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile p f95680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile a f95681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile a f95682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<String, a> f95683e = new HashMap(4);

    private final class a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        volatile a f95684a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile a f95685b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f95686c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final ChannelHandler f95687d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final boolean f95688e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f95689f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private volatile Object f95690g;

        a(a aVar, a aVar2, String str, ChannelHandler channelHandler) {
            if (str == null) {
                throw new NullPointerException("name");
            }
            if (channelHandler == null) {
                throw new NullPointerException("handler");
            }
            boolean z10 = channelHandler instanceof r;
            this.f95688e = z10;
            boolean z11 = channelHandler instanceof g;
            this.f95689f = z11;
            if (z10 || z11) {
                this.f95685b = aVar;
                this.f95684a = aVar2;
                this.f95686c = str;
                this.f95687d = channelHandler;
                return;
            }
            throw new IllegalArgumentException("handler must be either " + r.class.getName() + " or " + g.class.getName() + external.org.apache.commons.lang3.d.f90941a);
        }

        @Override // org.jboss.netty.channel.m
        public Object K() {
            return this.f95690g;
        }

        @Override // org.jboss.netty.channel.m
        public void a(h hVar) {
            a aVarV = x.this.v(this.f95684a);
            if (aVarV != null) {
                x.this.E(aVarV, hVar);
            }
        }

        @Override // org.jboss.netty.channel.m
        public void b(h hVar) {
            a aVarU = x.this.u(this.f95685b);
            if (aVarU != null) {
                x.this.D(aVarU, hVar);
                return;
            }
            try {
                x.this.f().b(x.this, hVar);
            } catch (Throwable th) {
                x.this.A(hVar, th);
            }
        }

        @Override // org.jboss.netty.channel.m
        public boolean c() {
            return this.f95688e;
        }

        @Override // org.jboss.netty.channel.m
        public void d(Object obj) {
            this.f95690g = obj;
        }

        @Override // org.jboss.netty.channel.m
        public boolean e() {
            return this.f95689f;
        }

        @Override // org.jboss.netty.channel.m
        public e getChannel() {
            return getPipeline().getChannel();
        }

        @Override // org.jboss.netty.channel.m
        public ChannelHandler getHandler() {
            return this.f95687d;
        }

        @Override // org.jboss.netty.channel.m
        public String getName() {
            return this.f95686c;
        }

        @Override // org.jboss.netty.channel.m
        public n getPipeline() {
            return x.this;
        }
    }

    private static final class b implements p {
        b() {
        }

        @Override // org.jboss.netty.channel.p
        public void a(n nVar, h hVar, ChannelPipelineException channelPipelineException) throws Exception {
            throw channelPipelineException;
        }

        @Override // org.jboss.netty.channel.p
        public void b(n nVar, h hVar) {
        }

        @Override // org.jboss.netty.channel.p
        public j c(n nVar, Runnable runnable) {
            return s.i(nVar.getChannel(), new RejectedExecutionException("Not attached yet"));
        }
    }

    private a B(a aVar) {
        if (this.f95681c == this.f95682d) {
            this.f95682d = null;
            this.f95681c = null;
            this.f95683e.clear();
        } else if (aVar == this.f95681c) {
            removeFirst();
        } else if (aVar == this.f95682d) {
            removeLast();
        } else {
            s(aVar);
            a aVar2 = aVar.f95685b;
            a aVar3 = aVar.f95684a;
            aVar2.f95684a = aVar3;
            aVar3.f95685b = aVar2;
            this.f95683e.remove(aVar.getName());
            q(aVar);
        }
        return aVar;
    }

    private ChannelHandler C(a aVar, String str, ChannelHandler channelHandler) {
        boolean z10;
        if (aVar == this.f95681c) {
            removeFirst();
            l(str, channelHandler);
        } else if (aVar == this.f95682d) {
            removeLast();
            i(str, channelHandler);
        } else {
            boolean zEquals = aVar.getName().equals(str);
            if (!zEquals) {
                t(str);
            }
            a aVar2 = aVar.f95685b;
            a aVar3 = aVar.f95684a;
            a aVar4 = new a(aVar2, aVar3, str, channelHandler);
            s(aVar);
            r(aVar4);
            aVar2.f95684a = aVar4;
            aVar3.f95685b = aVar4;
            if (!zEquals) {
                this.f95683e.remove(aVar.getName());
            }
            this.f95683e.put(str, aVar4);
            boolean z11 = true;
            ChannelHandlerLifeCycleException e10 = null;
            try {
                q(aVar);
                e = null;
                z10 = true;
            } catch (ChannelHandlerLifeCycleException e11) {
                e = e11;
                z10 = false;
            }
            try {
                p(aVar4);
            } catch (ChannelHandlerLifeCycleException e12) {
                e10 = e12;
                z11 = false;
            }
            if (!z10 && !z11) {
                throw new ChannelHandlerLifeCycleException("Both " + aVar.getHandler().getClass().getName() + ".afterRemove() and " + aVar4.getHandler().getClass().getName() + ".afterAdd() failed; see logs.");
            }
            if (!z10) {
                throw e;
            }
            if (!z11) {
                throw e10;
            }
        }
        return aVar.getHandler();
    }

    private void p(m mVar) {
        boolean z10;
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.afterAdd(mVar);
            } catch (Throwable th) {
                try {
                    B((a) mVar);
                    z10 = true;
                } catch (Throwable th2) {
                    th2.printStackTrace();
                    z10 = false;
                }
                if (z10) {
                    throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".afterAdd() has thrown an exception; removed.", th);
                }
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".afterAdd() has thrown an exception; also failed to remove.", th);
            }
        }
    }

    private static void q(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.afterRemove(mVar);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".afterRemove() has thrown an exception.", th);
            }
        }
    }

    private static void r(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.beforeAdd(mVar);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".beforeAdd() has thrown an exception; not adding.", th);
            }
        }
    }

    private static void s(m mVar) {
        if (mVar.getHandler() instanceof h0) {
            h0 h0Var = (h0) mVar.getHandler();
            try {
                h0Var.beforeRemove(mVar);
            } catch (Throwable th) {
                throw new ChannelHandlerLifeCycleException(h0Var.getClass().getName() + ".beforeRemove() has thrown an exception; not removing.", th);
            }
        }
    }

    private void t(String str) {
        if (this.f95683e.containsKey(str)) {
            throw new IllegalArgumentException("Duplicate handler name: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a u(a aVar) {
        if (aVar == null) {
            return null;
        }
        while (!aVar.e()) {
            aVar = aVar.f95685b;
            if (aVar == null) {
                return null;
            }
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public a v(a aVar) {
        if (aVar == null) {
            return null;
        }
        while (!aVar.c()) {
            aVar = aVar.f95684a;
            if (aVar == null) {
                return null;
            }
        }
        return aVar;
    }

    private a w(Class<? extends ChannelHandler> cls) {
        a aVar = (a) getContext(cls);
        if (aVar != null) {
            return aVar;
        }
        throw new NoSuchElementException(cls.getName());
    }

    private a x(String str) {
        a aVar = (a) getContext(str);
        if (aVar != null) {
            return aVar;
        }
        throw new NoSuchElementException(str);
    }

    private a y(ChannelHandler channelHandler) {
        a aVar = (a) getContext(channelHandler);
        if (aVar != null) {
            return aVar;
        }
        throw new NoSuchElementException(channelHandler.getClass().getName());
    }

    private void z(String str, ChannelHandler channelHandler) {
        a aVar = new a(null, null, str, channelHandler);
        r(aVar);
        this.f95682d = aVar;
        this.f95681c = aVar;
        this.f95683e.clear();
        this.f95683e.put(str, aVar);
        p(aVar);
    }

    protected void A(h hVar, Throwable th) {
        if (hVar instanceof e0) {
            th.printStackTrace();
            return;
        }
        try {
            this.f95680b.a(this, hVar, th instanceof ChannelPipelineException ? (ChannelPipelineException) th : new ChannelPipelineException(th));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void D(a aVar, h hVar) {
        if (hVar instanceof p0) {
            throw new IllegalArgumentException("cannot send an upstream event to downstream");
        }
        try {
            ((g) aVar.getHandler()).handleDownstream(aVar, hVar);
        } catch (Throwable th) {
            hVar.d().setFailure(th);
            A(hVar, th);
        }
    }

    void E(a aVar, h hVar) {
        try {
            ((r) aVar.getHandler()).handleUpstream(aVar, hVar);
        } catch (Throwable th) {
            A(hVar, th);
        }
    }

    @Override // org.jboss.netty.channel.n
    public void a(h hVar) {
        a aVarV = v(this.f95681c);
        if (aVarV == null) {
            return;
        }
        E(aVarV, hVar);
    }

    @Override // org.jboss.netty.channel.n
    public void b(h hVar) {
        a aVarU = u(this.f95682d);
        if (aVarU != null) {
            D(aVarU, hVar);
            return;
        }
        try {
            f().b(this, hVar);
        } catch (Throwable th) {
            A(hVar, th);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void c(ChannelHandler channelHandler) {
        B(y(channelHandler));
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void d(String str, String str2, ChannelHandler channelHandler) {
        a aVarX = x(str);
        if (aVarX == this.f95682d) {
            i(str2, channelHandler);
        } else {
            t(str2);
            a aVar = new a(aVarX, aVarX.f95684a, str2, channelHandler);
            r(aVar);
            aVarX.f95684a.f95685b = aVar;
            aVarX.f95684a = aVar;
            this.f95683e.put(str2, aVar);
            p(aVar);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void e(ChannelHandler channelHandler, String str, ChannelHandler channelHandler2) {
        C(y(channelHandler), str, channelHandler2);
    }

    @Override // org.jboss.netty.channel.n
    public j execute(Runnable runnable) {
        return f().c(this, runnable);
    }

    @Override // org.jboss.netty.channel.n
    public p f() {
        p pVar = this.f95680b;
        return pVar == null ? f95678f : pVar;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler g(String str, String str2, ChannelHandler channelHandler) {
        return C(x(str), str2, channelHandler);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler get(String str) {
        a aVar = this.f95683e.get(str);
        if (aVar == null) {
            return null;
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public e getChannel() {
        return this.f95679a;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized m getContext(String str) {
        try {
            if (str == null) {
                throw new NullPointerException("name");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f95683e.get(str);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler getFirst() {
        a aVar = this.f95681c;
        if (aVar == null) {
            return null;
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler getLast() {
        a aVar = this.f95682d;
        if (aVar == null) {
            return null;
        }
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public List<String> getNames() {
        ArrayList arrayList = new ArrayList();
        if (this.f95683e.isEmpty()) {
            return arrayList;
        }
        a aVar = this.f95681c;
        do {
            arrayList.add(aVar.getName());
            aVar = aVar.f95684a;
        } while (aVar != null);
        return arrayList;
    }

    @Override // org.jboss.netty.channel.n
    public boolean h() {
        return this.f95680b != null;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void i(String str, ChannelHandler channelHandler) {
        if (this.f95683e.isEmpty()) {
            z(str, channelHandler);
        } else {
            t(str);
            a aVar = this.f95682d;
            a aVar2 = new a(aVar, null, str, channelHandler);
            r(aVar2);
            aVar.f95684a = aVar2;
            this.f95682d = aVar2;
            this.f95683e.put(str, aVar2);
            p(aVar2);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void j(String str, String str2, ChannelHandler channelHandler) {
        a aVarX = x(str);
        if (aVarX == this.f95681c) {
            l(str2, channelHandler);
        } else {
            t(str2);
            a aVar = new a(aVarX.f95685b, aVarX, str2, channelHandler);
            r(aVar);
            aVarX.f95685b.f95684a = aVar;
            aVarX.f95685b = aVar;
            this.f95683e.put(str2, aVar);
            p(aVar);
        }
    }

    @Override // org.jboss.netty.channel.n
    public void k(e eVar, p pVar) {
        if (eVar == null) {
            throw new NullPointerException("channel");
        }
        if (pVar == null) {
            throw new NullPointerException("sink");
        }
        if (this.f95679a != null || this.f95680b != null) {
            throw new IllegalStateException("attached already");
        }
        this.f95679a = eVar;
        this.f95680b = pVar;
    }

    @Override // org.jboss.netty.channel.n
    public synchronized void l(String str, ChannelHandler channelHandler) {
        if (this.f95683e.isEmpty()) {
            z(str, channelHandler);
        } else {
            t(str);
            a aVar = this.f95681c;
            a aVar2 = new a(null, aVar, str, channelHandler);
            r(aVar2);
            aVar.f95685b = aVar2;
            this.f95681c = aVar2;
            this.f95683e.put(str, aVar2);
            p(aVar2);
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized <T extends ChannelHandler> T m(Class<T> cls, String str, ChannelHandler channelHandler) {
        return (T) C(w(cls), str, channelHandler);
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler remove(String str) {
        return B(x(str)).getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler removeFirst() {
        a aVar;
        if (this.f95683e.isEmpty()) {
            throw new NoSuchElementException();
        }
        aVar = this.f95681c;
        if (aVar == null) {
            throw new NoSuchElementException();
        }
        s(aVar);
        if (aVar.f95684a == null) {
            this.f95682d = null;
            this.f95681c = null;
            this.f95683e.clear();
        } else {
            aVar.f95684a.f95685b = null;
            this.f95681c = aVar.f95684a;
            this.f95683e.remove(aVar.getName());
        }
        q(aVar);
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized ChannelHandler removeLast() {
        a aVar;
        if (this.f95683e.isEmpty()) {
            throw new NoSuchElementException();
        }
        aVar = this.f95682d;
        if (aVar == null) {
            throw new NoSuchElementException();
        }
        s(aVar);
        if (aVar.f95685b == null) {
            this.f95682d = null;
            this.f95681c = null;
            this.f95683e.clear();
        } else {
            aVar.f95685b.f95684a = null;
            this.f95682d = aVar.f95685b;
            this.f95683e.remove(aVar.getName());
        }
        s(aVar);
        return aVar.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public Map<String, ChannelHandler> toMap() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.f95683e.isEmpty()) {
            return linkedHashMap;
        }
        a aVar = this.f95681c;
        do {
            linkedHashMap.put(aVar.getName(), aVar.getHandler());
            aVar = aVar.f95684a;
        } while (aVar != null);
        return linkedHashMap;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append('{');
        a aVar = this.f95681c;
        if (aVar != null) {
            while (true) {
                sb2.append('(');
                sb2.append(aVar.getName());
                sb2.append(" = ");
                sb2.append(aVar.getHandler().getClass().getName());
                sb2.append(')');
                aVar = aVar.f95684a;
                if (aVar == null) {
                    break;
                }
                sb2.append(", ");
            }
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized <T extends ChannelHandler> T remove(Class<T> cls) {
        return (T) B(w(cls)).getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized m getContext(ChannelHandler channelHandler) {
        try {
            if (channelHandler != null) {
                if (this.f95683e.isEmpty()) {
                    return null;
                }
                a aVar = this.f95681c;
                while (aVar.getHandler() != channelHandler) {
                    aVar = aVar.f95684a;
                    if (aVar == null) {
                        return null;
                    }
                }
                return aVar;
            }
            throw new NullPointerException("handler");
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // org.jboss.netty.channel.n
    public synchronized <T extends ChannelHandler> T get(Class<T> cls) {
        m context = getContext((Class<? extends ChannelHandler>) cls);
        if (context == null) {
            return null;
        }
        return (T) context.getHandler();
    }

    @Override // org.jboss.netty.channel.n
    public synchronized m getContext(Class<? extends ChannelHandler> cls) {
        try {
            if (cls != null) {
                if (this.f95683e.isEmpty()) {
                    return null;
                }
                a aVar = this.f95681c;
                while (!cls.isAssignableFrom(aVar.getHandler().getClass())) {
                    aVar = aVar.f95684a;
                    if (aVar == null) {
                        return null;
                    }
                }
                return aVar;
            }
            throw new NullPointerException("handlerType");
        } catch (Throwable th) {
            throw th;
        }
    }
}
