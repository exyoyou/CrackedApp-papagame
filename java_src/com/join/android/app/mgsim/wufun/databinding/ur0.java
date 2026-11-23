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
public final class ur0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f45826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f45830g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f45831h;

    private ur0(@NonNull ConstraintLayout rootView, @NonNull TextView cancel, @NonNull SimpleDraweeView icon, @NonNull TextView install, @NonNull TextView name, @NonNull View view5, @NonNull View view8) {
        this.f45825b = rootView;
        this.f45826c = cancel;
        this.f45827d = icon;
        this.f45828e = install;
        this.f45829f = name;
        this.f45830g = view5;
        this.f45831h = view8;
    }

    @NonNull
    public static ur0 bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (textView != null) {
            i10 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
            if (simpleDraweeView != null) {
                i10 = R.id.install;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.install);
                if (textView2 != null) {
                    i10 = R.id.name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView3 != null) {
                        i10 = R.id.view5;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.view5);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.view8;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.view8);
                            if (viewFindChildViewById2 != null) {
                                return new ur0((ConstraintLayout) rootView, textView, simpleDraweeView, textView2, textView3, viewFindChildViewById, viewFindChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ur0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45825b;
    }

    @NonNull
    public static ur0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.pop_mod_stand_install, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
