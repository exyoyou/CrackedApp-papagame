package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class k3 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40568b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40569c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f40570d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f40571e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40572f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f40573g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RecyclerView f40574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40576j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40577k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40578l;

    private k3(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull View divider, @NonNull View header, @NonNull SimpleDraweeView ivGameIcon, @NonNull ProgressBar progress, @NonNull RecyclerView rvCheck, @NonNull TextView tvBtnInstall, @NonNull TextView tvGameName, @NonNull TextView tvInstallCount, @NonNull TextView tvPassNotice) {
        this.f40568b = rootView;
        this.f40569c = backImage;
        this.f40570d = divider;
        this.f40571e = header;
        this.f40572f = ivGameIcon;
        this.f40573g = progress;
        this.f40574h = rvCheck;
        this.f40575i = tvBtnInstall;
        this.f40576j = tvGameName;
        this.f40577k = tvInstallCount;
        this.f40578l = tvPassNotice;
    }

    @NonNull
    public static k3 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
            if (viewFindChildViewById != null) {
                i10 = R.id.header;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.header);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.ivGameIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivGameIcon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.progress;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progress);
                        if (progressBar != null) {
                            i10 = R.id.rvCheck;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvCheck);
                            if (recyclerView != null) {
                                i10 = R.id.tvBtnInstall;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvBtnInstall);
                                if (textView != null) {
                                    i10 = R.id.tvGameName;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvGameName);
                                    if (textView2 != null) {
                                        i10 = R.id.tvInstallCount;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvInstallCount);
                                        if (textView3 != null) {
                                            i10 = R.id.tvPassNotice;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvPassNotice);
                                            if (textView4 != null) {
                                                return new k3((RelativeLayout) rootView, imageView, viewFindChildViewById, viewFindChildViewById2, simpleDraweeView, progressBar, recyclerView, textView, textView2, textView3, textView4);
                                            }
                                        }
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
    public static k3 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40568b;
    }

    @NonNull
    public static k3 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_online_game_install_check, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
