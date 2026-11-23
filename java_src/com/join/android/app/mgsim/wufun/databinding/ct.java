package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ct implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37096d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37097e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37098f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f37099g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f37100h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f37101i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37102j;

    private ct(@NonNull LinearLayout rootView, @NonNull TextView appCompany, @NonNull TextView appDownloadCount, @NonNull SimpleDraweeView appIcon, @NonNull TextView appName, @NonNull TextView appSize, @NonNull Button gameFollowButn, @NonNull View line, @NonNull LinearLayout tipsLayout) {
        this.f37094b = rootView;
        this.f37095c = appCompany;
        this.f37096d = appDownloadCount;
        this.f37097e = appIcon;
        this.f37098f = appName;
        this.f37099g = appSize;
        this.f37100h = gameFollowButn;
        this.f37101i = line;
        this.f37102j = tipsLayout;
    }

    @NonNull
    public static ct bind(@NonNull View rootView) {
        int i10 = R.id.appCompany;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appCompany);
        if (textView != null) {
            i10 = R.id.appDownloadCount;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appDownloadCount);
            if (textView2 != null) {
                i10 = R.id.appIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.appIcon);
                if (simpleDraweeView != null) {
                    i10 = R.id.appName;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appName);
                    if (textView3 != null) {
                        i10 = R.id.appSize;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
                        if (textView4 != null) {
                            i10 = R.id.gameFollowButn;
                            Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.gameFollowButn);
                            if (button != null) {
                                i10 = R.id.line;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                                if (viewFindChildViewById != null) {
                                    i10 = R.id.tipsLayout;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                    if (linearLayout != null) {
                                        return new ct((LinearLayout) rootView, textView, textView2, simpleDraweeView, textView3, textView4, button, viewFindChildViewById, linearLayout);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ct inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37094b;
    }

    @NonNull
    public static ct inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetial_more_gift_top_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
