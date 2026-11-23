package com.kwad.components.core.webview.tachikoma.e;

import com.kwad.components.core.webview.tachikoma.f.f;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class b {
    private final Set<Integer> auZ = new HashSet();
    private final ConcurrentHashMap<Integer, Set<f>> ava = new ConcurrentHashMap<>();

    static class a {
        private static final b avb = new b();
    }

    private void cn(int i10) {
        Set<f> set;
        this.auZ.remove(Integer.valueOf(i10));
        if (this.ava.isEmpty() || this.ava.get(Integer.valueOf(i10)) == null || (set = this.ava.get(Integer.valueOf(i10))) == null || set.isEmpty()) {
            return;
        }
        Iterator<f> it2 = set.iterator();
        while (it2.hasNext()) {
            it2.next().zp();
        }
        this.ava.remove(Integer.valueOf(i10));
    }

    public static b zE() {
        return a.avb;
    }

    public final void a(int i10, f fVar) {
        Set<f> set = this.ava.get(Integer.valueOf(i10));
        if (set != null) {
            set.add(fVar);
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.add(fVar);
        this.ava.put(Integer.valueOf(i10), hashSet);
    }

    public final void b(int i10, String str, String str2) {
        a(i10, str, str2);
    }

    public final boolean cm(int i10) {
        if (this.auZ.contains(Integer.valueOf(i10))) {
            return false;
        }
        this.auZ.add(Integer.valueOf(i10));
        return true;
    }

    public final void co(int i10) {
        cn(i10);
    }

    private void a(int i10, String str, String str2) {
        Set<f> set;
        this.auZ.remove(Integer.valueOf(i10));
        if (this.ava.isEmpty() || this.ava.get(Integer.valueOf(i10)) == null || (set = this.ava.get(Integer.valueOf(i10))) == null || set.isEmpty()) {
            return;
        }
        this.ava.remove(Integer.valueOf(i10));
        Iterator<f> it2 = set.iterator();
        while (it2.hasNext()) {
            it2.next().zo();
        }
    }
}
