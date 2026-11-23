package dagger.hilt.android;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final c f90771a = new c();

    private c() {
    }

    @JvmStatic
    public static final <T> T b(@NotNull Activity activity, @NotNull Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.a.a(activity, entryPoint);
    }

    @JvmStatic
    public static final <T> T d(@NotNull Context context, @NotNull Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.a.a(fb.a.a(context.getApplicationContext()), entryPoint);
    }

    @JvmStatic
    public static final <T> T f(@NotNull Fragment fragment, @NotNull Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.a.a(fragment, entryPoint);
    }

    @JvmStatic
    public static final <T> T h(@NotNull View view, @NotNull Class<T> entryPoint) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(entryPoint, "entryPoint");
        return (T) dagger.hilt.a.a(view, entryPoint);
    }

    public final /* synthetic */ <T> T a(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) b(activity, Object.class);
    }

    public final /* synthetic */ <T> T c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) d(context, Object.class);
    }

    public final /* synthetic */ <T> T e(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) f(fragment, Object.class);
    }

    public final /* synthetic */ <T> T g(View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.reifiedOperationMarker(4, "T");
        return (T) h(view, Object.class);
    }
}
