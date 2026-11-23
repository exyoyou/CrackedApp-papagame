package y4;

import android.os.Bundle;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes5.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final View f97677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f97678b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @IdRes
    private int f97679c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    public c(b bVar) {
        this.f97677a = (View) bVar;
    }

    private void a() {
        ViewParent parent = this.f97677a.getParent();
        if (parent instanceof CoordinatorLayout) {
            ((CoordinatorLayout) parent).dispatchDependentViewsChanged(this.f97677a);
        }
    }

    @IdRes
    public int b() {
        return this.f97679c;
    }

    public boolean c() {
        return this.f97678b;
    }

    public void d(@NonNull Bundle bundle) {
        this.f97678b = bundle.getBoolean("expanded", false);
        this.f97679c = bundle.getInt("expandedComponentIdHint", 0);
        if (this.f97678b) {
            a();
        }
    }

    @NonNull
    public Bundle e() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("expanded", this.f97678b);
        bundle.putInt("expandedComponentIdHint", this.f97679c);
        return bundle;
    }

    public boolean f(boolean z10) {
        if (this.f97678b == z10) {
            return false;
        }
        this.f97678b = z10;
        a();
        return true;
    }

    public void g(@IdRes int i10) {
        this.f97679c = i10;
    }
}
