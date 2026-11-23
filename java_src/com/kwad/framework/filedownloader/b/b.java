package com.kwad.framework.filedownloader.b;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.kwad.framework.filedownloader.b.a {
    final SparseArray<com.kwad.framework.filedownloader.d.c> aAv = new SparseArray<>();
    final SparseArray<List<com.kwad.framework.filedownloader.d.a>> aAw = new SparseArray<>();

    class a implements com.kwad.framework.filedownloader.b.a.InterfaceC0904a {
        a() {
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0904a
        public final void BS() {
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0904a
        public final void a(int i10, com.kwad.framework.filedownloader.d.c cVar) {
        }

        @Override // com.kwad.framework.filedownloader.b.a.InterfaceC0904a
        public final void c(com.kwad.framework.filedownloader.d.c cVar) {
        }

        @Override // java.lang.Iterable
        public final Iterator<com.kwad.framework.filedownloader.d.c> iterator() {
            return b.this.new C0905b();
        }
    }

    /* JADX INFO: renamed from: com.kwad.framework.filedownloader.b.b$b, reason: collision with other inner class name */
    class C0905b implements Iterator<com.kwad.framework.filedownloader.d.c> {
        C0905b() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final /* bridge */ /* synthetic */ com.kwad.framework.filedownloader.d.c next() {
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.b.a.InterfaceC0904a BR() {
        return new a();
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, long j10, String str, String str2) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(int i10, long j10) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void c(int i10, long j10) {
        cF(i10);
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cB(int i10) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final com.kwad.framework.filedownloader.d.c cC(int i10) {
        com.kwad.framework.filedownloader.d.c cVar;
        synchronized (this.aAv) {
            cVar = this.aAv.get(i10);
        }
        return cVar;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final List<com.kwad.framework.filedownloader.d.a> cD(int i10) {
        List<com.kwad.framework.filedownloader.d.a> list;
        try {
            ArrayList arrayList = new ArrayList();
            synchronized (this.aAw) {
                list = this.aAw.get(i10);
            }
            if (list != null) {
                arrayList.addAll(list);
            }
            return arrayList;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cE(int i10) {
        try {
            synchronized (this.aAw) {
                this.aAw.remove(i10);
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final boolean cF(int i10) {
        synchronized (this.aAv) {
            this.aAv.remove(i10);
        }
        return true;
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void cG(int i10) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void clear() {
        synchronized (this.aAv) {
            this.aAv.clear();
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void d(int i10, long j10) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void w(int i10, int i11) {
    }

    private void d(com.kwad.framework.filedownloader.d.c cVar) {
        synchronized (this.aAv) {
            this.aAv.put(cVar.getId(), cVar);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, String str, long j10, long j11, int i11) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void b(com.kwad.framework.filedownloader.d.c cVar) {
        if (cVar == null) {
            com.kwad.framework.filedownloader.f.d.d(this, "update but model == null!", new Object[0]);
            return;
        }
        if (cC(cVar.getId()) == null) {
            d(cVar);
            return;
        }
        synchronized (this.aAv) {
            this.aAv.remove(cVar.getId());
            this.aAv.put(cVar.getId(), cVar);
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, Throwable th) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, Throwable th, long j10) {
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(com.kwad.framework.filedownloader.d.a aVar) {
        List<com.kwad.framework.filedownloader.d.a> arrayList;
        try {
            int id2 = aVar.getId();
            synchronized (this.aAw) {
                arrayList = this.aAw.get(id2);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.aAw.put(id2, arrayList);
                }
            }
            arrayList.add(aVar);
        } catch (Exception unused) {
        }
    }

    @Override // com.kwad.framework.filedownloader.b.a
    public final void a(int i10, int i11, long j10) {
        List<com.kwad.framework.filedownloader.d.a> list;
        synchronized (this.aAw) {
            list = this.aAw.get(i10);
        }
        if (list == null) {
            return;
        }
        for (com.kwad.framework.filedownloader.d.a aVar : list) {
            if (aVar.getIndex() == i11) {
                aVar.ad(j10);
                return;
            }
        }
    }
}
