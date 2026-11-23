package com.byazt.omf;

import android.util.SparseArray;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 46})
public class n implements com.byazt.aas.c.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Integer, WeakReference<com.byazt.aas.c.tt>> f18087c = new HashMap();

    public void c(Function<SparseArray<Object>, Object> function) {
        if (function == null) {
            return;
        }
        function.apply(com.byazt.yxi.uj.c().c(9).c(Boolean.class).c(0, new com.byazt.fb.c() { // from class: com.byazt.omf.n.1
            @Override // com.byazt.fb.c
            public void onAppBackground() {
                n.this.onAppBackground();
            }

            @Override // com.byazt.fb.c
            public void onAppForeground() {
                n.this.onAppForeground();
            }
        }).tt());
    }

    @Override // com.byazt.aas.c.tt
    public void onAppBackground() {
        Iterator<Map.Entry<Integer, WeakReference<com.byazt.aas.c.tt>>> it2 = this.f18087c.entrySet().iterator();
        while (it2.hasNext()) {
            WeakReference<com.byazt.aas.c.tt> value = it2.next().getValue();
            if (value != null) {
                com.byazt.aas.c.tt ttVar = value.get();
                if (ttVar != null) {
                    ttVar.onAppBackground();
                } else {
                    it2.remove();
                }
            } else {
                it2.remove();
            }
        }
    }

    @Override // com.byazt.aas.c.tt
    public void onAppExit() {
    }

    @Override // com.byazt.aas.c.tt
    public void onAppForeground() {
        Iterator<Map.Entry<Integer, WeakReference<com.byazt.aas.c.tt>>> it2 = this.f18087c.entrySet().iterator();
        while (it2.hasNext()) {
            WeakReference<com.byazt.aas.c.tt> value = it2.next().getValue();
            if (value != null) {
                com.byazt.aas.c.tt ttVar = value.get();
                if (ttVar != null) {
                    ttVar.onAppForeground();
                } else {
                    it2.remove();
                }
            } else {
                it2.remove();
            }
        }
    }

    @Override // com.byazt.aas.c.tt
    public void onAppStart() {
    }

    public void c(com.byazt.aas.c.tt ttVar) {
        if (ttVar == null) {
            return;
        }
        this.f18087c.put(Integer.valueOf(ttVar.hashCode()), new WeakReference<>(ttVar));
    }
}
