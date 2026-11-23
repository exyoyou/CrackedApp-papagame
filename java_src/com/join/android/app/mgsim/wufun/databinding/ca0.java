package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ca0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final da0 f36827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36830f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36831g;

    private ca0(@NonNull ConstraintLayout rootView, @NonNull da0 analog, @NonNull ImageView sd, @NonNull ImageView sl, @NonNull ImageView sr, @NonNull ImageView su) {
        this.f36826b = rootView;
        this.f36827c = analog;
        this.f36828d = sd;
        this.f36829e = sl;
        this.f36830f = sr;
        this.f36831g = su;
    }

    @NonNull
    public static ca0 bind(@NonNull View rootView) {
        int i10 = R.id.analog;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.analog);
        if (viewFindChildViewById != null) {
            da0 da0VarBind = da0.bind(viewFindChildViewById);
            i10 = R.id.sd;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sd);
            if (imageView != null) {
                i10 = R.id.sl;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sl);
                if (imageView2 != null) {
                    i10 = R.id.sr;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sr);
                    if (imageView3 != null) {
                        i10 = R.id.su;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.su);
                        if (imageView4 != null) {
                            return new ca0((ConstraintLayout) rootView, da0VarBind, imageView, imageView2, imageView3, imageView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ca0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36826b;
    }

    @NonNull
    public static ca0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_hm_pad_analog_all, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
