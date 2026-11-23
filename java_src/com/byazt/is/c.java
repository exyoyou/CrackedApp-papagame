package com.byazt.is;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 984, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<ve> f15510c = new ArrayList();

    public List<ve> c() {
        return this.f15510c;
    }

    public void c(Set<String> set) {
        ArrayList arrayList = new ArrayList();
        for (ve veVar : this.f15510c) {
            if (!set.contains(veVar.t())) {
                arrayList.add(veVar);
            }
        }
        this.f15510c = arrayList;
    }

    public void c(List<ve> list) {
        this.f15510c = list;
    }
}
