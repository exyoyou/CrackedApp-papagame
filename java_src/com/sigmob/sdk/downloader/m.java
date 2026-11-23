package com.sigmob.sdk.downloader;

import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List<Integer> f80811b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final c f80812c = new c() { // from class: com.sigmob.sdk.downloader.m.1
        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, int blockIndex, int responseCode, Map<String, List<String>> responseHeaderFields) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, blockIndex, responseCode, responseHeaderFields);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a_(f task) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a_(task);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void b(f task, int blockIndex, long increaseBytes) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.b(task, blockIndex, increaseBytes);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void c(f task, int blockIndex, long contentLength) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.c(task, blockIndex, contentLength);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, int blockIndex, long contentLength) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, blockIndex, contentLength);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void b(f task, int blockIndex, Map<String, List<String>> requestHeaderFields) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.b(task, blockIndex, requestHeaderFields);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, int responseCode, Map<String, List<String>> responseHeaderFields) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, responseCode, responseHeaderFields);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, info);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, com.sigmob.sdk.downloader.core.breakpoint.c info, com.sigmob.sdk.downloader.core.cause.b cause) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, info, cause);
                }
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, com.sigmob.sdk.downloader.core.cause.a cause, Exception realCause) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, cause, realCause);
                }
            }
            if (m.this.f80811b.contains(Integer.valueOf(task.c()))) {
                m.this.a(task.c());
            }
        }

        @Override // com.sigmob.sdk.downloader.c
        public void a(f task, Map<String, List<String>> requestHeaderFields) {
            c[] cVarArrB = m.b(task, m.this.f80810a);
            if (cVarArrB == null) {
                return;
            }
            for (c cVar : cVarArrB) {
                if (cVar != null) {
                    cVar.a(task, requestHeaderFields);
                }
            }
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SparseArray<ArrayList<c>> f80810a = new SparseArray<>();

    public c a() {
        return this.f80812c;
    }

    public synchronized void b(int id2) {
        if (this.f80811b.contains(Integer.valueOf(id2))) {
            return;
        }
        this.f80811b.add(Integer.valueOf(id2));
    }

    public synchronized void c(int id2) {
        this.f80811b.remove(Integer.valueOf(id2));
    }

    public synchronized void d(f task, c listener) {
        b(task, listener);
        task.b(this.f80812c);
    }

    public synchronized void e(f task, c listener) {
        b(task, listener);
        task.c(this.f80812c);
    }

    public synchronized void a(int id2) {
        this.f80810a.remove(id2);
    }

    public synchronized void b(f task, c listener) {
        int iC = task.c();
        ArrayList<c> arrayList = this.f80810a.get(iC);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            this.f80810a.put(iC, arrayList);
        }
        if (!arrayList.contains(listener)) {
            arrayList.add(listener);
            if (listener instanceof com.sigmob.sdk.downloader.core.listener.assist.d) {
                ((com.sigmob.sdk.downloader.core.listener.assist.d) listener).b(true);
            }
        }
    }

    public synchronized void c(f task, c listener) {
        b(task, listener);
        if (!a(task)) {
            task.b(this.f80812c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c[] b(f task, SparseArray<ArrayList<c>> realListenerMap) {
        ArrayList<c> arrayList = realListenerMap.get(task.c());
        if (arrayList == null || arrayList.size() <= 0) {
            return null;
        }
        c[] cVarArr = new c[arrayList.size()];
        arrayList.toArray(cVarArr);
        return cVarArr;
    }

    public synchronized void a(c listener) {
        int size = this.f80810a.size();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            ArrayList<c> arrayListValueAt = this.f80810a.valueAt(i10);
            if (arrayListValueAt != null) {
                arrayListValueAt.remove(listener);
                if (arrayListValueAt.isEmpty()) {
                    arrayList.add(Integer.valueOf(this.f80810a.keyAt(i10)));
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.f80810a.remove(((Integer) it2.next()).intValue());
        }
    }

    boolean a(f task) {
        return l.a(task);
    }

    public synchronized boolean a(f task, c listener) {
        int iC = task.c();
        ArrayList<c> arrayList = this.f80810a.get(iC);
        if (arrayList == null) {
            return false;
        }
        boolean zRemove = arrayList.remove(listener);
        if (arrayList.isEmpty()) {
            this.f80810a.remove(iC);
        }
        return zRemove;
    }
}
