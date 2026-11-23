package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.zxing.view.ViewfinderView;

/* JADX INFO: loaded from: classes4.dex */
public final class vy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f46498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f46499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SurfaceView f46500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewfinderView f46501e;

    private vy0(@NonNull FrameLayout rootView, @NonNull Button btnCancelScan, @NonNull SurfaceView previewView, @NonNull ViewfinderView viewfinderView) {
        this.f46498b = rootView;
        this.f46499c = btnCancelScan;
        this.f46500d = previewView;
        this.f46501e = viewfinderView;
    }

    @NonNull
    public static vy0 bind(@NonNull View rootView) {
        int i10 = R.id.btn_cancel_scan;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_cancel_scan);
        if (button != null) {
            i10 = R.id.preview_view;
            SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(rootView, R.id.preview_view);
            if (surfaceView != null) {
                i10 = R.id.viewfinder_view;
                ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(rootView, R.id.viewfinder_view);
                if (viewfinderView != null) {
                    return new vy0((FrameLayout) rootView, button, surfaceView, viewfinderView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f46498b;
    }

    @NonNull
    public static vy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.zxing_camera, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
