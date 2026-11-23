package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class v6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f46086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46087c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f46088d;

    private v6(@NonNull LinearLayout rootView, @NonNull LinearLayout bannerHome, @NonNull View postFooterDivider) {
        this.f46086b = rootView;
        this.f46087c = bannerHome;
        this.f46088d = postFooterDivider;
    }

    @NonNull
    public static v6 bind(@NonNull View rootView) {
        int i10 = R.id.bannerHome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.bannerHome);
        if (linearLayout != null) {
            i10 = R.id.post_footer_divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.post_footer_divider);
            if (viewFindChildViewById != null) {
                return new v6((LinearLayout) rootView, linearLayout, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static v6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f46086b;
    }

    @NonNull
    public static v6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.baidu_ad_banner_home_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
