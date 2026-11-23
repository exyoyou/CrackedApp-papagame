package w6;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f97563b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Object f97564c = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<a> f97565a = new ArrayList();

    public interface a {
        void onAppMsgChange();
    }

    private b() {
    }

    public static b b() {
        if (f97563b == null) {
            synchronized (f97564c) {
                if (f97563b == null) {
                    f97563b = new b();
                }
            }
        }
        return f97563b;
    }

    public void a(a action) {
        if (this.f97565a.contains(action)) {
            return;
        }
        this.f97565a.add(action);
    }

    public void c() {
        List<a> list = this.f97565a;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                try {
                    this.f97565a.get(i10).onAppMsgChange();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public void d(a action) {
        List<a> list = this.f97565a;
        if (list != null) {
            list.remove(action);
        }
    }
}
