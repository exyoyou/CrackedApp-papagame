package dagger.hilt.android.internal.modules;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import dagger.internal.DaggerGenerated;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import dagger.internal.k;
import dagger.internal.l;

/* JADX INFO: loaded from: classes8.dex */
@ScopeMetadata("dagger.Reusable")
@DaggerGenerated
@QualifierMetadata
public final class b implements dagger.internal.e<FragmentActivity> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<Activity> f90819a;

    private b(l<Activity> activityProvider) {
        this.f90819a = activityProvider;
    }

    public static b a(l<Activity> activityProvider) {
        return new b(activityProvider);
    }

    public static FragmentActivity c(Activity activity) {
        return (FragmentActivity) k.f(a.b(activity));
    }

    @Override // vb.a, tb.a
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public FragmentActivity get() {
        return c(this.f90819a.get());
    }
}
