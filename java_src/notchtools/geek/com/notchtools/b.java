package notchtools.geek.com.notchtools;

import android.app.Activity;
import android.os.Build;
import android.view.Window;
import notchtools.geek.com.notchtools.core.d;
import vc.c;
import vc.e;
import vc.f;

/* JADX INFO: loaded from: classes.dex */
public class b implements notchtools.geek.com.notchtools.core.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static b f94900d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f94901e = "notch_container";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f94902f = Build.VERSION.SDK_INT;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f94903g = 28;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private notchtools.geek.com.notchtools.core.b f94904a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f94905b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f94906c;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Activity f94907b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d f94908c;

        a(Activity activity, d dVar) {
            this.f94907b = activity;
            this.f94908c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f94904a == null) {
                b.this.j(this.f94907b.getWindow());
            }
            if (b.this.f94904a != null) {
                b.this.f94904a.c(this.f94907b, this.f94908c);
            }
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(Window window) {
        if (this.f94904a != null) {
            return;
        }
        int i10 = f94902f;
        if (i10 < 26) {
            this.f94904a = new vc.a();
            return;
        }
        if (i10 >= 28) {
            if (i10 >= 28) {
                this.f94904a = new e();
                return;
            }
            return;
        }
        notchtools.geek.com.notchtools.helper.a aVarA = notchtools.geek.com.notchtools.helper.a.a();
        if (aVarA.c()) {
            this.f94904a = new vc.b();
            return;
        }
        if (aVarA.d()) {
            this.f94904a = new c();
            return;
        }
        if (aVarA.f()) {
            this.f94904a = new f();
        } else if (aVarA.e()) {
            this.f94904a = new vc.d();
        } else {
            this.f94904a = new vc.a();
        }
    }

    public static b o() {
        if (f94900d == null) {
            synchronized (b.class) {
                if (f94900d == null) {
                    f94900d = new b();
                }
            }
        }
        return f94900d;
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void a(Activity activity, d dVar) {
        if (this.f94904a == null) {
            j(activity.getWindow());
        }
        notchtools.geek.com.notchtools.core.b bVar = this.f94904a;
        if (bVar != null) {
            bVar.a(activity, dVar);
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void b(Activity activity, d dVar) {
        d(activity, dVar);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void c(Activity activity, d dVar) {
        notchtools.geek.com.notchtools.helper.d.p(new a(activity, dVar));
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public void d(Activity activity, d dVar) {
        if (this.f94904a == null) {
            j(activity.getWindow());
        }
        notchtools.geek.com.notchtools.core.b bVar = this.f94904a;
        if (bVar != null) {
            bVar.d(activity, dVar);
        }
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public boolean e(Window window) {
        if (!this.f94905b) {
            if (this.f94904a == null) {
                j(window);
            }
            notchtools.geek.com.notchtools.core.b bVar = this.f94904a;
            if (bVar == null) {
                this.f94905b = true;
                this.f94906c = false;
            } else {
                this.f94906c = bVar.e(window);
            }
        }
        return this.f94906c;
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public int f(Window window) {
        if (this.f94904a == null) {
            j(window);
        }
        notchtools.geek.com.notchtools.core.b bVar = this.f94904a;
        if (bVar == null) {
            return 0;
        }
        return bVar.f(window);
    }

    @Override // notchtools.geek.com.notchtools.core.b
    public int g(Window window) {
        return notchtools.geek.com.notchtools.helper.b.b(window.getContext());
    }

    public void k(Activity activity) {
        d(activity, null);
    }

    public void l(Activity activity) {
        c(activity, null);
    }

    public void m(Activity activity) {
        b(activity, null);
    }

    public void n(Activity activity) {
        a(activity, null);
    }

    public b p(boolean z10) {
        notchtools.geek.com.notchtools.helper.b.f94915b = z10;
        return this;
    }
}
