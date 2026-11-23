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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bg implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f36376c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36377d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36378e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36379f;

    private bg(@NonNull ConstraintLayout rootView, @NonNull TextView tvConfirm, @NonNull TextView tvPwd, @NonNull TextView tvReset, @NonNull TextView tvTitle) {
        this.f36375b = rootView;
        this.f36376c = tvConfirm;
        this.f36377d = tvPwd;
        this.f36378e = tvReset;
        this.f36379f = tvTitle;
    }

    @NonNull
    public static bg bind(@NonNull View rootView) {
        int i10 = R.id.tvConfirm;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvConfirm);
        if (textView != null) {
            i10 = R.id.tvPwd;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPwd);
            if (textView2 != null) {
                i10 = R.id.tvReset;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvReset);
                if (textView3 != null) {
                    i10 = R.id.tvTitle;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvTitle);
                    if (textView4 != null) {
                        return new bg((ConstraintLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bg inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36375b;
    }

    @NonNull
    public static bg inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_hide_app_confirm_pwd, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
