package notchtools.geek.com.notchtools.core;

import android.app.Activity;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public abstract class a implements b {
    @Override // notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, d dVar) {
        notchtools.geek.com.notchtools.helper.b.e(activity.getWindow(), false);
        h(activity, f(activity.getWindow()), dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void b(Activity activity, d dVar) {
        d(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void c(Activity activity, d dVar) {
        d(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void d(Activity activity, d dVar) {
        notchtools.geek.com.notchtools.helper.b.e(activity.getWindow(), false);
        i(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public int g(Window window) {
        return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
    }

    protected void h(Activity activity, int i10, d dVar) {
        if (dVar != null) {
            c cVar = new c();
            cVar.f(f(activity.getWindow()));
            cVar.e(e(activity.getWindow()));
            cVar.d(i10);
            dVar.a(cVar);
        }
    }

    protected void i(Activity activity, d dVar) {
        if (dVar != null) {
            c cVar = new c();
            cVar.f(f(activity.getWindow()));
            cVar.e(e(activity.getWindow()));
            dVar.a(cVar);
        }
    }
}
