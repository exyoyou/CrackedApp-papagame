package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.LoadingLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class cb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LoadingLayout f36847b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final gw0 f36848c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36849d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36850e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LoadingImageView f36851f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36852g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36853h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36854i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36856k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f36857l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36858m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f36859n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f36860o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f36861p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f36862q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f36863r;

    private cb0(@NonNull LoadingLayout rootView, @NonNull gw0 buildQrCodeTitle, @NonNull TextView failedMessage, @NonNull LinearLayout loadingNone, @NonNull LoadingImageView loadingView, @NonNull ImageView lodingBackImage, @NonNull LinearLayout lodingFaile, @NonNull LinearLayout lodingLayout, @NonNull LinearLayout nodataLayout, @NonNull TextView noneMessage, @NonNull ImageView noneReloadImage, @NonNull ImageView relodingimag, @NonNull TextView setAll, @NonNull Button setNetwork, @NonNull TextView setting, @NonNull TextView textView2, @NonNull TextView textViewNodata) {
        this.f36847b = rootView;
        this.f36848c = buildQrCodeTitle;
        this.f36849d = failedMessage;
        this.f36850e = loadingNone;
        this.f36851f = loadingView;
        this.f36852g = lodingBackImage;
        this.f36853h = lodingFaile;
        this.f36854i = lodingLayout;
        this.f36855j = nodataLayout;
        this.f36856k = noneMessage;
        this.f36857l = noneReloadImage;
        this.f36858m = relodingimag;
        this.f36859n = setAll;
        this.f36860o = setNetwork;
        this.f36861p = setting;
        this.f36862q = textView2;
        this.f36863r = textViewNodata;
    }

    @NonNull
    public static cb0 bind(@NonNull View rootView) {
        int i10 = R.id.build_qr_code_title;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.build_qr_code_title);
        if (viewFindChildViewById != null) {
            gw0 gw0VarBind = gw0.bind(viewFindChildViewById);
            i10 = R.id.failedMessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.failedMessage);
            if (textView != null) {
                i10 = R.id.loading_none;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loading_none);
                if (linearLayout != null) {
                    i10 = R.id.loading_view;
                    LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(rootView, R.id.loading_view);
                    if (loadingImageView != null) {
                        i10 = R.id.lodingBackImage;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.lodingBackImage);
                        if (imageView != null) {
                            i10 = R.id.loding_faile;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_faile);
                            if (linearLayout2 != null) {
                                i10 = R.id.loding_layout;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.loding_layout);
                                if (linearLayout3 != null) {
                                    i10 = R.id.nodata_layout;
                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.nodata_layout);
                                    if (linearLayout4 != null) {
                                        i10 = R.id.noneMessage;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.noneMessage);
                                        if (textView2 != null) {
                                            i10 = R.id.noneReloadImage;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.noneReloadImage);
                                            if (imageView2 != null) {
                                                i10 = R.id.relodingimag;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.relodingimag);
                                                if (imageView3 != null) {
                                                    i10 = R.id.setAll;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setAll);
                                                    if (textView3 != null) {
                                                        i10 = R.id.setNetwork;
                                                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.setNetwork);
                                                        if (button != null) {
                                                            i10 = R.id.setting;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.setting);
                                                            if (textView4 != null) {
                                                                i10 = R.id.textView2;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.textView_nodata;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView_nodata);
                                                                    if (textView6 != null) {
                                                                        return new cb0((LoadingLayout) rootView, gw0VarBind, textView, linearLayout, loadingImageView, imageView, linearLayout2, linearLayout3, linearLayout4, textView2, imageView2, imageView3, textView3, button, textView4, textView5, textView6);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static cb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LoadingLayout getRoot() {
        return this.f36847b;
    }

    @NonNull
    public static cb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_papa_loading, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
