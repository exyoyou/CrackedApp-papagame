package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.R;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
public class l extends SharedElementCallback {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private static WeakReference<View> f32739f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private Rect f32743d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f32740a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f32741b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f32742c = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private d f32744e = new e();

    class a extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Window f32745a;

        a(Window window) {
            this.f32745a = window;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            l.j(this.f32745a);
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            l.i(this.f32745a);
        }
    }

    class b extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f32747a;

        b(Activity activity) {
            this.f32747a = activity;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            View view;
            if (l.f32739f != null && (view = (View) l.f32739f.get()) != null) {
                view.setAlpha(1.0f);
                WeakReference unused = l.f32739f = null;
            }
            this.f32747a.finish();
            this.f32747a.overridePendingTransition(0, 0);
        }
    }

    class c extends r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Window f32749a;

        c(Window window) {
            this.f32749a = window;
        }

        @Override // com.google.android.material.transition.platform.r, android.transition.Transition.TransitionListener
        public void onTransitionStart(Transition transition) {
            l.i(this.f32749a);
        }
    }

    public interface d {
        @Nullable
        com.google.android.material.shape.n a(@NonNull View view);
    }

    public static class e implements d {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.transition.platform.l.d
        @Nullable
        public com.google.android.material.shape.n a(@NonNull View view) {
            if (view instanceof com.google.android.material.shape.r) {
                return ((com.google.android.material.shape.r) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    @Nullable
    private static Drawable f(Window window) {
        return window.getDecorView().getBackground();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void i(Window window) {
        Drawable drawableF = f(window);
        if (drawableF == null) {
            return;
        }
        drawableF.mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void j(Window window) {
        Drawable drawableF = f(window);
        if (drawableF == null) {
            return;
        }
        drawableF.mutate().clearColorFilter();
    }

    private void n(Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementEnterTransition;
            if (!this.f32742c) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.f32741b) {
                p(window, materialContainerTransform);
                materialContainerTransform.addListener(new a(window));
            }
        }
    }

    private void o(Activity activity, Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementReturnTransition;
            materialContainerTransform.W(true);
            materialContainerTransform.addListener(new b(activity));
            if (this.f32741b) {
                p(window, materialContainerTransform);
                materialContainerTransform.addListener(new c(window));
            }
        }
    }

    private static void p(Window window, MaterialContainerTransform materialContainerTransform) {
        if (materialContainerTransform.getDuration() >= 0) {
            window.setTransitionBackgroundFadeDuration(materialContainerTransform.getDuration());
        }
    }

    @Nullable
    public d e() {
        return this.f32744e;
    }

    public boolean g() {
        return this.f32742c;
    }

    public boolean h() {
        return this.f32741b;
    }

    public void k(@Nullable d dVar) {
        this.f32744e = dVar;
    }

    public void l(boolean z10) {
        this.f32742c = z10;
    }

    public void m(boolean z10) {
        this.f32741b = z10;
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public Parcelable onCaptureSharedElementSnapshot(@NonNull View view, @NonNull Matrix matrix, @NonNull RectF rectF) {
        f32739f = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    @Nullable
    public View onCreateSnapshotView(@NonNull Context context, @Nullable Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        com.google.android.material.shape.n nVarA;
        View viewOnCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (viewOnCreateSnapshotView != null && (weakReference = f32739f) != null && this.f32744e != null && (view = weakReference.get()) != null && (nVarA = this.f32744e.a(view)) != null) {
            viewOnCreateSnapshotView.setTag(R.id.mtrl_motion_snapshot_view, nVarA);
        }
        return viewOnCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(@NonNull List<String> list, @NonNull Map<String, View> map) {
        View view;
        Activity activity;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (activity = com.google.android.material.internal.c.getActivity(view.getContext())) == null) {
            return;
        }
        Window window = activity.getWindow();
        if (this.f32740a) {
            n(window);
        } else {
            o(activity, window);
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty()) {
            View view = list2.get(0);
            int i10 = R.id.mtrl_motion_snapshot_view;
            if (view.getTag(i10) instanceof View) {
                list2.get(0).setTag(i10, null);
            }
        }
        if (!this.f32740a && !list2.isEmpty()) {
            this.f32743d = t.j(list2.get(0));
        }
        this.f32740a = false;
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(@NonNull List<String> list, @NonNull List<View> list2, @NonNull List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(R.id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.f32740a || list2.isEmpty() || this.f32743d == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.f32743d.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.f32743d.height(), 1073741824));
        Rect rect = this.f32743d;
        view.layout(rect.left, rect.top, rect.right, rect.bottom);
    }
}
