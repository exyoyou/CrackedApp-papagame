package zc;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f97749b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<b> f97750a = new LinkedHashSet();

    public static void b(b bVar) {
        c cVar = f97749b;
        if (cVar != null) {
            cVar.f97750a.add(bVar);
        }
    }

    public static c c(c cVar) {
        c cVar2 = f97749b;
        f97749b = cVar;
        return cVar2;
    }

    public void a(a aVar) {
        Iterator<b> it2 = this.f97750a.iterator();
        while (it2.hasNext()) {
            it2.next().onViewChanged(aVar);
        }
    }
}
