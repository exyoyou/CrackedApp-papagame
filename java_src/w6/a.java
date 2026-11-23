package w6;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f97560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Object f97561c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<InterfaceC1253a> f97562a = new ArrayList();

    /* JADX INFO: renamed from: w6.a$a, reason: collision with other inner class name */
    public interface InterfaceC1253a {
        void onAppMsgChange();
    }

    private a() {
    }

    public static a b() {
        if (f97560b == null) {
            synchronized (f97561c) {
                if (f97560b == null) {
                    f97560b = new a();
                }
            }
        }
        return f97560b;
    }

    public void a(InterfaceC1253a action) {
        if (this.f97562a.contains(action)) {
            return;
        }
        this.f97562a.add(action);
    }

    public void c() {
        List<InterfaceC1253a> list = this.f97562a;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    this.f97562a.get(i10).onAppMsgChange();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public void d(InterfaceC1253a action) {
        List<InterfaceC1253a> list = this.f97562a;
        if (list != null) {
            list.remove(action);
        }
    }
}
