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
public final class j9 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40141b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40142c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f40143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40145f;

    private j9(@NonNull RelativeLayout rootView, @NonNull SimpleDraweeView adImageView, @NonNull DownloadNormalView downloadView, @NonNull TextView gameInfo, @NonNull TextView gameName) {
        this.f40141b = rootView;
        this.f40142c = adImageView;
        this.f40143d = downloadView;
        this.f40144e = gameInfo;
        this.f40145f = gameName;
    }

    @NonNull
    public static j9 bind(@NonNull View rootView) {
        int i10 = R.id.adImageView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.adImageView);
        if (simpleDraweeView != null) {
            i10 = R.id.downloadView;
            DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.downloadView);
            if (downloadNormalView != null) {
                i10 = R.id.gameInfo;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameInfo);
                if (textView != null) {
                    i10 = R.id.gameName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
                    if (textView2 != null) {
                        return new j9((RelativeLayout) rootView, simpleDraweeView, downloadNormalView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static j9 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40141b;
    }

    @NonNull
    public static j9 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.choice_mainad_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
