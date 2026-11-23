package com.facebook.rebound;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final n f28812c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, i> f28810a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<i> f28811b = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArraySet<p> f28813d = new CopyOnWriteArraySet<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f28814e = true;

    public c(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("springLooper is required");
        }
        this.f28812c = nVar;
        nVar.a(this);
    }

    void a(String str) {
        i iVar = this.f28810a.get(str);
        if (iVar == null) {
            throw new IllegalArgumentException("springId " + str + " does not reference a registered spring");
        }
        this.f28811b.add(iVar);
        if (g()) {
            this.f28814e = false;
            this.f28812c.b();
        }
    }

    public void b(p pVar) {
        if (pVar == null) {
            throw new IllegalArgumentException("newListener is required");
        }
        this.f28813d.add(pVar);
    }

    void c(double d10) {
        for (i iVar : this.f28811b) {
            if (iVar.D()) {
                iVar.b(d10 / 1000.0d);
            } else {
                this.f28811b.remove(iVar);
            }
        }
    }

    public i d() {
        i iVar = new i(this);
        j(iVar);
        return iVar;
    }

    void e(i iVar) {
        if (iVar == null) {
            throw new IllegalArgumentException("spring is required");
        }
        this.f28811b.remove(iVar);
        this.f28810a.remove(iVar.i());
    }

    public List<i> f() {
        Collection<i> collectionValues = this.f28810a.values();
        return Collections.unmodifiableList(collectionValues instanceof List ? (List) collectionValues : new ArrayList(collectionValues));
    }

    public boolean g() {
        return this.f28814e;
    }

    public i h(String str) {
        if (str != null) {
            return this.f28810a.get(str);
        }
        throw new IllegalArgumentException("id is required");
    }

    public void i(double d10) {
        Iterator<p> it2 = this.f28813d.iterator();
        while (it2.hasNext()) {
            it2.next().b(this);
        }
        c(d10);
        if (this.f28811b.isEmpty()) {
            this.f28814e = true;
        }
        Iterator<p> it3 = this.f28813d.iterator();
        while (it3.hasNext()) {
            it3.next().a(this);
        }
        if (this.f28814e) {
            this.f28812c.c();
        }
    }

    void j(i iVar) {
        if (iVar == null) {
            throw new IllegalArgumentException("spring is required");
        }
        if (this.f28810a.containsKey(iVar.i())) {
            throw new IllegalArgumentException("spring is already registered");
        }
        this.f28810a.put(iVar.i(), iVar);
    }

    public void k() {
        this.f28813d.clear();
    }

    public void l(p pVar) {
        if (pVar == null) {
            throw new IllegalArgumentException("listenerToRemove is required");
        }
        this.f28813d.remove(pVar);
    }
}
