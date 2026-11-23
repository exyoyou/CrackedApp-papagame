package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CubeRotateView;

/* JADX INFO: loaded from: classes4.dex */
public final class gc implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38788b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38789c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CubeRotateView f38790d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f38791e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38792f;

    private gc(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView background, @NonNull CubeRotateView cubeView, @NonNull TextView date, @NonNull SimpleDraweeView foreground) {
        this.f38788b = rootView;
        this.f38789c = background;
        this.f38790d = cubeView;
        this.f38791e = date;
        this.f38792f = foreground;
    }

    @NonNull
    public static gc bind(@NonNull View rootView) {
        int i10 = R.id.background;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.background);
        if (simpleDraweeView != null) {
            i10 = R.id.cubeView;
            CubeRotateView cubeRotateView = (CubeRotateView) ViewBindings.findChildViewById(rootView, R.id.cubeView);
            if (cubeRotateView != null) {
                i10 = R.id.date;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.date);
                if (textView != null) {
                    i10 = R.id.foreground;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.foreground);
                    if (simpleDraweeView2 != null) {
                        return new gc((LinearLayout) rootView, simpleDraweeView, cubeRotateView, textView, simpleDraweeView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static gc inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38788b;
    }

    @NonNull
    public static gc inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cube_roate_view_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
