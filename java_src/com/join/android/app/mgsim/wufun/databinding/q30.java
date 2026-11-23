package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadNormalView;

/* JADX INFO: loaded from: classes4.dex */
public final class q30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final DownloadNormalView f43678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f43679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f43680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43682g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f43683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43684i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f43685j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f43686k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43687l;

    private q30(@NonNull RelativeLayout rootView, @NonNull DownloadNormalView dvView, @NonNull ImageView iv1, @NonNull ImageView ivBespeakSwitch, @NonNull LinearLayout layoutGameTitleRow, @NonNull LinearLayout layoutLegendGameTags, @NonNull ConstraintLayout relateLayoutApp, @NonNull SimpleDraweeView sdvImage, @NonNull TextView tvServerInfo, @NonNull TextView tvText1, @NonNull TextView tvText5) {
        this.f43677b = rootView;
        this.f43678c = dvView;
        this.f43679d = iv1;
        this.f43680e = ivBespeakSwitch;
        this.f43681f = layoutGameTitleRow;
        this.f43682g = layoutLegendGameTags;
        this.f43683h = relateLayoutApp;
        this.f43684i = sdvImage;
        this.f43685j = tvServerInfo;
        this.f43686k = tvText1;
        this.f43687l = tvText5;
    }

    @NonNull
    public static q30 bind(@NonNull View rootView) {
        int i10 = R.id.dv_view;
        DownloadNormalView downloadNormalView = (DownloadNormalView) ViewBindings.findChildViewById(rootView, R.id.dv_view);
        if (downloadNormalView != null) {
            i10 = R.id.iv_1;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_1);
            if (imageView != null) {
                i10 = R.id.ivBespeakSwitch;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivBespeakSwitch);
                if (imageView2 != null) {
                    i10 = R.id.layoutGameTitleRow;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutGameTitleRow);
                    if (linearLayout != null) {
                        i10 = R.id.layoutLegendGameTags;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layoutLegendGameTags);
                        if (linearLayout2 != null) {
                            i10 = R.id.relateLayoutApp;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayoutApp);
                            if (constraintLayout != null) {
                                i10 = R.id.sdv_image;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                if (simpleDraweeView != null) {
                                    i10 = R.id.tvServerInfo;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvServerInfo);
                                    if (textView != null) {
                                        i10 = R.id.tv_text_1;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_1);
                                        if (textView2 != null) {
                                            i10 = R.id.tv_text_5;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_text_5);
                                            if (textView3 != null) {
                                                return new q30((RelativeLayout) rootView, downloadNormalView, imageView, imageView2, linearLayout, linearLayout2, constraintLayout, simpleDraweeView, textView, textView2, textView3);
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
    public static q30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43677b;
    }

    @NonNull
    public static q30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_legend_game_latest, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
