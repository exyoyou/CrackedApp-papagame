package h;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class a<T> implements c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f91379c = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<T> f91380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f91381b;

    public a(ArrayList<T> arrayList, int i10) {
        this.f91380a = arrayList;
        this.f91381b = i10;
    }

    @Override // h.c
    public int a() {
        return this.f91380a.size();
    }

    @Override // h.c
    public Object getItem(int i10) {
        return (i10 < 0 || i10 >= this.f91380a.size()) ? "" : this.f91380a.get(i10);
    }

    @Override // h.c
    public int indexOf(Object obj) {
        return this.f91380a.indexOf(obj);
    }

    public a(ArrayList<T> arrayList) {
        this(arrayList, 4);
    }
}
