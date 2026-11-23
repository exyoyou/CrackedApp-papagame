package com.xinzhu.overmind.server.am;

import android.content.Intent;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f89634a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f89635b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f89636c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Intent f89637d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<b> f89638e = new LinkedList();

    public h(int i10, int i11, String str) {
        this.f89634a = i10;
        this.f89635b = i11;
        this.f89636c = str;
    }

    public void a(b bVar) {
        this.f89638e.add(bVar);
    }

    public b b() {
        for (int size = this.f89638e.size() - 1; size >= 0; size--) {
            b bVar = this.f89638e.get(size);
            if (!bVar.finished) {
                return bVar;
            }
        }
        return null;
    }

    public boolean c() {
        Iterator<b> it2 = this.f89638e.iterator();
        while (it2.hasNext()) {
            if (!it2.next().finished) {
                return false;
            }
        }
        return true;
    }

    public void d(b bVar) {
        this.f89638e.remove(bVar);
    }
}
