package dagger.hilt.android.internal.modules;

import android.app.Application;
import android.content.Context;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.android.qualifiers.ApplicationContext;

/* JADX INFO: loaded from: classes8.dex */
@Module
@InstallIn({ib.a.class})
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f90820a;

    public c(Context applicationContext) {
        this.f90820a = applicationContext;
    }

    @Provides
    Application a() {
        return fb.a.a(this.f90820a);
    }

    @Provides
    @ApplicationContext
    Context b() {
        return this.f90820a;
    }
}
