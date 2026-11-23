package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36985b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final bj0 f36986c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36988e;

    private cl0(@NonNull RelativeLayout rootView, @NonNull bj0 actionbarLayout, @NonNull SimpleDraweeView coinFloatad, @NonNull RelativeLayout mainTop) {
        this.f36985b = rootView;
        this.f36986c = actionbarLayout;
        this.f36987d = coinFloatad;
        this.f36988e = mainTop;
    }

    @NonNull
    public static cl0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.coinFloatad);
            if (simpleDraweeView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.mainTop);
                if (relativeLayout != null) {
                    return new cl0((RelativeLayout) rootView, bj0VarBind, simpleDraweeView, relativeLayout);
                }
                i10 = R.id.mainTop;
            } else {
                i10 = R.id.coinFloatad;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36985b;
    }

    @NonNull
    public static cl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgmain_otherlayout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
