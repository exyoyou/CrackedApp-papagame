package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
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
public final class aa implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f35719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f35721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f35722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35724g;

    private aa(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView adImageView, @NonNull DownloadNormalView dvView, @NonNull SimpleDraweeView gameIcon, @NonNull TextView gameInfo, @NonNull TextView gameName) {
        this.f35719b = rootView;
        this.f35720c = adImageView;
        this.f35721d = dvView;
        this.f35722e = gameIcon;
        this.f35723f = gameInfo;
        this.f35724g = gameName;
    }

    @NonNull
    public static aa bind(@NonNull View rootView) {
        int i10 = R.id.adImageView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.adImageView);
        if (simpleDraweeView != null) {
            i10 = R.id.dv_view;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
            if (downloadNormalView != null) {
                i10 = R.id.gameIcon;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.gameInfo;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameInfo);
                    if (textView != null) {
                        i10 = R.id.gameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                        if (textView2 != null) {
                            return new aa((RelativeLayout) rootView, simpleDraweeView, downloadNormalView, simpleDraweeView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static aa inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f35719b;
    }

    @NonNull
    public static aa inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.classify_mainad_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
