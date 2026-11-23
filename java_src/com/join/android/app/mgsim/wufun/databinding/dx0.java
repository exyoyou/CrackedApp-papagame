package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class dx0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37671e;

    private dx0(@NonNull RelativeLayout rootView, @NonNull ImageView mute, @NonNull RelativeLayout surfaceContainer, @NonNull RelativeLayout thumb) {
        this.f37668b = rootView;
        this.f37669c = mute;
        this.f37670d = surfaceContainer;
        this.f37671e = thumb;
    }

    @NonNull
    public static dx0 bind(@NonNull View rootView) {
        int i10 = R.id.mute;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.mute);
        if (imageView != null) {
            i10 = R.id.surface_container;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.surface_container);
            if (relativeLayout != null) {
                i10 = R.id.thumb;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.thumb);
                if (relativeLayout2 != null) {
                    return new dx0((RelativeLayout) rootView, imageView, relativeLayout, relativeLayout2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dx0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37668b;
    }

    @NonNull
    public static dx0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.video_layout_empty_control_wufun, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
