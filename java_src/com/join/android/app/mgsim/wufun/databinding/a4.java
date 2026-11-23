package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f35647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f35648d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35650f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35651g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f35652h;

    private a4(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout close, @NonNull ConstraintLayout container, @NonNull SimpleDraweeView ivIcon, @NonNull TextView tvInstall, @NonNull TextView tvName, @NonNull TextView tvTitle) {
        this.f35646b = rootView;
        this.f35647c = close;
        this.f35648d = container;
        this.f35649e = ivIcon;
        this.f35650f = tvInstall;
        this.f35651g = tvName;
        this.f35652h = tvTitle;
    }

    @NonNull
    public static a4 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.close);
        if (constraintLayout != null) {
            i10 = R.id.container;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.container);
            if (constraintLayout2 != null) {
                i10 = R.id.ivIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivIcon);
                if (simpleDraweeView != null) {
                    i10 = R.id.tvInstall;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvInstall);
                    if (textView != null) {
                        i10 = R.id.tvName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvName);
                        if (textView2 != null) {
                            i10 = R.id.tvTitle;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                            if (textView3 != null) {
                                return new a4((ConstraintLayout) rootView, constraintLayout, constraintLayout2, simpleDraweeView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static a4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35646b;
    }

    @NonNull
    public static a4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_quark_install_app, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
