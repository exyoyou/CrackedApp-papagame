package dagger.hilt.android.internal.managers;

import android.app.Application;
import android.app.Service;
import dagger.hilt.EntryPoint;
import dagger.hilt.InstallIn;

/* JADX INFO: loaded from: classes8.dex */
public final class o implements jb.b<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Service f90808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f90809c;

    @EntryPoint
    @InstallIn({ib.a.class})
    public interface a {
        gb.d a();
    }

    public o(Service service) {
        this.f90808b = service;
    }

    private Object a() {
        Application application = this.f90808b.getApplication();
        jb.d.d(application instanceof jb.b, "Hilt service must be attached to an @HiltAndroidApp Application. Found: %s", application.getClass());
        return ((a) dagger.hilt.a.a(application, a.class)).a().a(this.f90808b).build();
    }

    @Override // jb.b
    public Object generatedComponent() {
        if (this.f90809c == null) {
            this.f90809c = a();
        }
        return this.f90809c;
    }
}
