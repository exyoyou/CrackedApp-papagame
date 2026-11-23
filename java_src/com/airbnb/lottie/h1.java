package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes7.dex */
public class h1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5654a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<b> f5655b = new ArraySet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, com.airbnb.lottie.utils.j> f5656c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Comparator<Pair<String, Float>> f5657d = new a();

    class a implements Comparator<Pair<String, Float>> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float fFloatValue = pair.second.floatValue();
            float fFloatValue2 = pair2.second.floatValue();
            if (fFloatValue2 > fFloatValue) {
                return 1;
            }
            return fFloatValue > fFloatValue2 ? -1 : 0;
        }
    }

    public interface b {
        void a(float f10);
    }

    public void a(b bVar) {
        this.f5655b.add(bVar);
    }

    public void b() {
        this.f5656c.clear();
    }

    public List<Pair<String, Float>> c() {
        if (!this.f5654a) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(this.f5656c.size());
        for (Map.Entry<String, com.airbnb.lottie.utils.j> entry : this.f5656c.entrySet()) {
            arrayList.add(new Pair(entry.getKey(), Float.valueOf(entry.getValue().b())));
        }
        Collections.sort(arrayList, this.f5657d);
        return arrayList;
    }

    public void d() {
        if (this.f5654a) {
            List<Pair<String, Float>> listC = c();
            for (int i10 = 0; i10 < listC.size(); i10++) {
                Pair<String, Float> pair = listC.get(i10);
                String.format("\t\t%30s:%.2f", pair.first, pair.second);
            }
        }
    }

    public void e(String str, float f10) {
        if (this.f5654a) {
            com.airbnb.lottie.utils.j jVar = this.f5656c.get(str);
            if (jVar == null) {
                jVar = new com.airbnb.lottie.utils.j();
                this.f5656c.put(str, jVar);
            }
            jVar.a(f10);
            if (str.equals("__container")) {
                Iterator<b> it2 = this.f5655b.iterator();
                while (it2.hasNext()) {
                    it2.next().a(f10);
                }
            }
        }
    }

    public void f(b bVar) {
        this.f5655b.remove(bVar);
    }

    void g(boolean z10) {
        this.f5654a = z10;
    }
}
