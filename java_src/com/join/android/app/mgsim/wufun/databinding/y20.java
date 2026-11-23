package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class y20 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47554c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47555d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47556e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f47557f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47558g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47559h;

    private y20(@NonNull ConstraintLayout rootView, @NonNull ImageView icPretend, @NonNull ImageView icWf, @NonNull TextView tvBtn, @NonNull TextView tvDesc, @NonNull TextView tvResetPwd, @NonNull TextView tvTitle) {
        this.f47553b = rootView;
        this.f47554c = icPretend;
        this.f47555d = icWf;
        this.f47556e = tvBtn;
        this.f47557f = tvDesc;
        this.f47558g = tvResetPwd;
        this.f47559h = tvTitle;
    }

    @NonNull
    public static y20 bind(@NonNull View rootView) {
        int i10 = R.id.ic_pretend;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ic_pretend);
        if (imageView != null) {
            i10 = R.id.ic_wf;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ic_wf);
            if (imageView2 != null) {
                i10 = R.id.tvBtn;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtn);
                if (textView != null) {
                    i10 = R.id.tvDesc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvDesc);
                    if (textView2 != null) {
                        i10 = R.id.tvResetPwd;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvResetPwd);
                        if (textView3 != null) {
                            i10 = R.id.tvTitle;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                            if (textView4 != null) {
                                return new y20((ConstraintLayout) rootView, imageView, imageView2, textView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static y20 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47553b;
    }

    @NonNull
    public static y20 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_hide_app_home_viewpager, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
