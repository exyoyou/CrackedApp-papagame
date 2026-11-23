package cn.fly.commons.cc;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a f1224a;

    interface a {
        Object a(String str, ArrayList<Object> arrayList);
    }

    public n(a aVar) {
        this.f1224a = aVar;
    }

    public Object a(String str, ArrayList<Object> arrayList) {
        a aVar = this.f1224a;
        if (aVar == null) {
            return null;
        }
        return aVar.a(str, arrayList);
    }
}
