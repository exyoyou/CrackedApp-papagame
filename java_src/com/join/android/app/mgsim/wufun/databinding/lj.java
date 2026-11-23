package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.zxing.android.view.ViewfinderView;

/* JADX INFO: loaded from: classes4.dex */
public final class lj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f41333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SurfaceView f41334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f41335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final gw0 f41336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ViewfinderView f41337f;

    private lj(@NonNull FrameLayout rootView, @NonNull SurfaceView previewView, @NonNull FrameLayout scanQrCodeFl, @NonNull gw0 scanQrCodeTitle, @NonNull ViewfinderView viewfinderView) {
        this.f41333b = rootView;
        this.f41334c = previewView;
        this.f41335d = scanQrCodeFl;
        this.f41336e = scanQrCodeTitle;
        this.f41337f = viewfinderView;
    }

    @NonNull
    public static lj bind(@NonNull View rootView) {
        int i10 = R.id.preview_view;
        SurfaceView surfaceView = (SurfaceView) ViewBindings.findChildViewById(rootView, R.id.preview_view);
        if (surfaceView != null) {
            FrameLayout frameLayout = (FrameLayout) rootView;
            i10 = R.id.scan_qr_code_title;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.scan_qr_code_title);
            if (viewFindChildViewById != null) {
                gw0 gw0VarBind = gw0.bind(viewFindChildViewById);
                i10 = R.id.viewfinder_view;
                ViewfinderView viewfinderView = (ViewfinderView) ViewBindings.findChildViewById(rootView, R.id.viewfinder_view);
                if (viewfinderView != null) {
                    return new lj(frameLayout, surfaceView, frameLayout, gw0VarBind, viewfinderView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static lj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f41333b;
    }

    @NonNull
    public static lj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.face_transfer_scan_qr_code_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
