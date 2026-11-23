package com.cloudplay.messagesdk.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends d implements Iterable<d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<d> f23752a = new ArrayList();

    public void a(d dVar) {
        if (dVar == null) {
            dVar = e.f23753a;
        }
        this.f23752a.add(dVar);
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof c) && ((c) obj).f23752a.equals(this.f23752a));
    }

    public int hashCode() {
        return this.f23752a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<d> iterator() {
        return this.f23752a.iterator();
    }
}
