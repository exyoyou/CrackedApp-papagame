package com.byazt.iq;

import com.byazt.eg.eo;
import com.byazt.eg.m;
import com.byazt.eg.my;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 179, 34})
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15459a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.eg.c f15460c;
    public final uj tt;
    public final m uj;
    public final com.byazt.eg.n ve;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<Proxy> f15461n = Collections.emptyList();
    public List<InetSocketAddress> sp = Collections.emptyList();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<eo> f15462x = new ArrayList();

    @com.byazt.zqa.c(c = {0, 1, 179, 464})
    public static final class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<eo> f15463c;
        public int tt = 0;

        public c(List<eo> list) {
            this.f15463c = list;
        }

        public boolean c() {
            return this.tt < this.f15463c.size();
        }

        public eo tt() {
            if (!c()) {
                throw new NoSuchElementException();
            }
            List<eo> list = this.f15463c;
            int i10 = this.tt;
            this.tt = i10 + 1;
            return list.get(i10);
        }

        public List<eo> ve() {
            return new ArrayList(this.f15463c);
        }
    }

    public a(com.byazt.eg.c cVar, uj ujVar, com.byazt.eg.n nVar, m mVar) throws IOException {
        this.f15460c = cVar;
        this.tt = ujVar;
        this.ve = nVar;
        this.uj = mVar;
        c(cVar.c(), cVar.x());
    }

    private Proxy uj() throws IOException {
        if (!ve()) {
            throw new SocketException("No route to " + this.f15460c.c().sp() + "; exhausted proxy configurations: " + this.f15461n);
        }
        List<Proxy> list = this.f15461n;
        int i10 = this.f15459a;
        this.f15459a = i10 + 1;
        Proxy proxy = list.get(i10);
        c(proxy);
        return proxy;
    }

    private boolean ve() {
        return this.f15459a < this.f15461n.size();
    }

    public boolean c() {
        return ve() || !this.f15462x.isEmpty();
    }

    public c tt() throws IOException {
        if (!c()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (ve()) {
            Proxy proxyUj = uj();
            int size = this.sp.size();
            for (int i10 = 0; i10 < size; i10++) {
                eo eoVar = new eo(this.f15460c, proxyUj, this.sp.get(i10));
                if (this.tt.ve(eoVar)) {
                    this.f15462x.add(eoVar);
                } else {
                    arrayList.add(eoVar);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(this.f15462x);
            this.f15462x.clear();
        }
        return new c(arrayList);
    }

    public void c(eo eoVar, IOException iOException) {
        if (eoVar.tt().type() != Proxy.Type.DIRECT && this.f15460c.sp() != null) {
            this.f15460c.sp().connectFailed(this.f15460c.c().tt(), eoVar.tt().address(), iOException);
        }
        this.tt.c(eoVar);
    }

    private void c(my myVar, Proxy proxy) throws IOException {
        List<Proxy> listC;
        if (proxy != null) {
            this.f15461n = Collections.singletonList(proxy);
        } else {
            try {
                List<Proxy> listSelect = this.f15460c.sp().select(myVar.tt());
                if (listSelect != null && !listSelect.isEmpty()) {
                    listC = com.byazt.kh.ve.c(listSelect);
                } else {
                    listC = com.byazt.kh.ve.c(Proxy.NO_PROXY);
                }
                this.f15461n = listC;
            } catch (IllegalArgumentException unused) {
                throw new IOException();
            }
        }
        this.f15459a = 0;
    }

    private void c(Proxy proxy) throws IOException {
        String strSp;
        int iX;
        this.sp = new ArrayList();
        if (proxy.type() != Proxy.Type.DIRECT && proxy.type() != Proxy.Type.SOCKS) {
            SocketAddress socketAddressAddress = proxy.address();
            if (socketAddressAddress instanceof InetSocketAddress) {
                InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                strSp = c(inetSocketAddress);
                iX = inetSocketAddress.getPort();
            } else {
                throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + socketAddressAddress.getClass());
            }
        } else {
            strSp = this.f15460c.c().sp();
            iX = this.f15460c.c().x();
        }
        if (iX > 0 && iX <= 65535) {
            if (proxy.type() == Proxy.Type.SOCKS) {
                this.sp.add(InetSocketAddress.createUnresolved(strSp, iX));
                return;
            }
            List<InetAddress> listC = this.f15460c.tt().c(strSp);
            if (listC.isEmpty()) {
                return;
            }
            int size = listC.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.sp.add(new InetSocketAddress(listC.get(i10), iX));
            }
            return;
        }
        throw new SocketException("No route to " + strSp + ":" + iX + "; port is out of range");
    }

    public static String c(InetSocketAddress inetSocketAddress) {
        InetAddress address = inetSocketAddress.getAddress();
        if (address == null) {
            return inetSocketAddress.getHostName();
        }
        return address.getHostAddress();
    }
}
