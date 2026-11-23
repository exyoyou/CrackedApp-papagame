package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class vy implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f46491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f46493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f46494f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46495g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46496h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46497i;

    private vy(@NonNull RelativeLayout rootView, @NonNull DownloadNormalView dvView, @NonNull LinearLayout linearLayout, @NonNull TextView mgListviewItemAppname, @NonNull TextView mgListviewItemDescribe, @NonNull SimpleDraweeView mgListviewItemIcon, @NonNull RelativeLayout relateLayoutApp, @NonNull LinearLayout tipsLayout) {
        this.f46490b = rootView;
        this.f46491c = dvView;
        this.f46492d = linearLayout;
        this.f46493e = mgListviewItemAppname;
        this.f46494f = mgListviewItemDescribe;
        this.f46495g = mgListviewItemIcon;
        this.f46496h = relateLayoutApp;
        this.f46497i = tipsLayout;
    }

    @NonNull
    public static vy bind(@NonNull View rootView) {
        int i10 = R.id.dv_view;
        DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
        if (downloadNormalView != null) {
            i10 = R.id.linearLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout);
            if (linearLayout != null) {
                i10 = R.id.mgListviewItemAppname;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemAppname);
                if (textView != null) {
                    i10 = R.id.mgListviewItemDescribe;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemDescribe);
                    if (textView2 != null) {
                        i10 = R.id.mgListviewItemIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.mgListviewItemIcon);
                        if (simpleDraweeView != null) {
                            RelativeLayout relativeLayout = (RelativeLayout) rootView;
                            i10 = R.id.tipsLayout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                            if (linearLayout2 != null) {
                                return new vy(relativeLayout, downloadNormalView, linearLayout, textView, textView2, simpleDraweeView, relativeLayout, linearLayout2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static vy inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46490b;
    }

    @NonNull
    public static vy inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_daily_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
