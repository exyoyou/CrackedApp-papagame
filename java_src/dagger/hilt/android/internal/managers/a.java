package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.app.Application;
import androidx.activity.ComponentActivity;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;

/* JADX INFO: loaded from: classes8.dex */
public class a implements jb.b<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Object f90785b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f90786c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final Activity f90787d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final jb.b<eb.b> f90788e;

    /* JADX INFO: renamed from: dagger.hilt.android.internal.managers.a$a, reason: collision with other inner class name */
    @EntryPoint
    @InstallIn({eb.b.class})
    public interface InterfaceC1151a {
        gb.a a();
    }

    public a(Activity activity) {
        this.f90787d = activity;
        this.f90788e = new b((ComponentActivity) activity);
    }

    protected Object a() {
        String str;
        if (this.f90787d.getApplication() instanceof jb.b) {
            return ((InterfaceC1151a) dagger.hilt.a.a(this.f90788e, InterfaceC1151a.class)).a().a(this.f90787d).build();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Hilt Activity must be attached to an @HiltAndroidApp Application. ");
        if (Application.class.equals(this.f90787d.getApplication().getClass())) {
            str = "Did you forget to specify your Application's class name in your manifest's <application />'s android:name attribute?";
        } else {
            str = "Found: " + this.f90787d.getApplication().getClass();
        }
        sb2.append(str);
        throw new IllegalStateException(sb2.toString());
    }

    public final n b() {
        return ((b) this.f90788e).c();
    }

    @Override // jb.b
    public Object generatedComponent() {
        if (this.f90785b == null) {
            synchronized (this.f90786c) {
                if (this.f90785b == null) {
                    this.f90785b = a();
                }
            }
        }
        return this.f90785b;
    }
}
