package com.kwad.framework.filedownloader;

import com.kwad.framework.filedownloader.message.MessageSnapshot;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class h {
    private final ArrayList<com.kwad.framework.filedownloader.a.InterfaceC0903a> azI;

    static final class a {
        private static final h azJ = new h(0);
    }

    /* synthetic */ h(byte b10) {
        this();
    }

    public static h Bn() {
        return a.azJ;
    }

    final boolean a(com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a) {
        return this.azI.isEmpty() || !this.azI.contains(interfaceC0903a);
    }

    final void b(com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a) {
        if (!interfaceC0903a.AP().Ay()) {
            interfaceC0903a.AS();
        }
        if (interfaceC0903a.AQ().Bf().Bs()) {
            c(interfaceC0903a);
        }
    }

    final void c(com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a) {
        if (interfaceC0903a.AT()) {
            return;
        }
        synchronized (this.azI) {
            if (this.azI.contains(interfaceC0903a)) {
                com.kwad.framework.filedownloader.f.d.d(this, "already has %s", interfaceC0903a);
            } else {
                interfaceC0903a.AU();
                this.azI.add(interfaceC0903a);
                if (com.kwad.framework.filedownloader.f.d.aDr) {
                    com.kwad.framework.filedownloader.f.d.e(this, "add list in all %s %d %d", interfaceC0903a, Byte.valueOf(interfaceC0903a.AP().AH()), Integer.valueOf(this.azI.size()));
                }
            }
        }
    }

    final int cr(int i10) {
        int i11;
        synchronized (this.azI) {
            Iterator<com.kwad.framework.filedownloader.a.InterfaceC0903a> it2 = this.azI.iterator();
            i11 = 0;
            while (it2.hasNext()) {
                if (it2.next().cq(i10)) {
                    i11++;
                }
            }
        }
        return i11;
    }

    final List<com.kwad.framework.filedownloader.a.InterfaceC0903a> cs(int i10) {
        byte bAH;
        ArrayList arrayList = new ArrayList();
        synchronized (this.azI) {
            for (com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a : this.azI) {
                if (interfaceC0903a.cq(i10) && !interfaceC0903a.isOver() && (bAH = interfaceC0903a.AP().AH()) != 0 && bAH != 10) {
                    arrayList.add(interfaceC0903a);
                }
            }
        }
        return arrayList;
    }

    final List<com.kwad.framework.filedownloader.a.InterfaceC0903a> ct(int i10) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.azI) {
            for (com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a : this.azI) {
                if (interfaceC0903a.cq(i10) && !interfaceC0903a.isOver()) {
                    arrayList.add(interfaceC0903a);
                }
            }
        }
        return arrayList;
    }

    final int size() {
        return this.azI.size();
    }

    final void v(List<com.kwad.framework.filedownloader.a.InterfaceC0903a> list) {
        synchronized (this.azI) {
            for (com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a : this.azI) {
                if (!list.contains(interfaceC0903a)) {
                    list.add(interfaceC0903a);
                }
            }
            this.azI.clear();
        }
    }

    private h() {
        this.azI = new ArrayList<>();
    }

    public final boolean a(com.kwad.framework.filedownloader.a.InterfaceC0903a interfaceC0903a, MessageSnapshot messageSnapshot) {
        boolean zRemove;
        byte bAH = messageSnapshot.AH();
        synchronized (this.azI) {
            zRemove = this.azI.remove(interfaceC0903a);
        }
        if (com.kwad.framework.filedownloader.f.d.aDr && this.azI.size() == 0) {
            com.kwad.framework.filedownloader.f.d.e(this, "remove %s left %d %d", interfaceC0903a, Byte.valueOf(bAH), Integer.valueOf(this.azI.size()));
        }
        if (zRemove) {
            t tVarBf = interfaceC0903a.AQ().Bf();
            if (bAH == -4) {
                tVarBf.l(messageSnapshot);
            } else if (bAH == -3) {
                tVarBf.j(com.kwad.framework.filedownloader.message.f.t(messageSnapshot));
            } else if (bAH == -2) {
                tVarBf.n(messageSnapshot);
            } else if (bAH == -1) {
                tVarBf.m(messageSnapshot);
            }
        } else {
            com.kwad.framework.filedownloader.f.d.a(this, "remove error, not exist: %s %d", interfaceC0903a, Byte.valueOf(bAH));
        }
        return zRemove;
    }
}
