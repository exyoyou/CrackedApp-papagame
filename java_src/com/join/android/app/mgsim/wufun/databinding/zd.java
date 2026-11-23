package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zd implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f48175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f48176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48178e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48179f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f48180g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ScrollView f48181h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final WebView f48182i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f48183j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f48184k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f48185l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48186m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f48187n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f48188o;

    private zd(@NonNull RelativeLayout rootView, @NonNull Button cancel, @NonNull ImageView dialogAppUpdateBottomImg, @NonNull LinearLayout dialogAppUpdateBottomLl, @NonNull RelativeLayout dialogAppUpdateBottomRl, @NonNull ImageView dialogAppUpdateHeaderImg, @NonNull ScrollView dialogAppUpdateSv, @NonNull WebView info, @NonNull TextView installNotice, @NonNull Button newClosed, @NonNull SimpleDraweeView newUpdateImage, @NonNull RelativeLayout newVersion, @NonNull RelativeLayout oldVersion, @NonNull Button updateNow) {
        this.f48175b = rootView;
        this.f48176c = cancel;
        this.f48177d = dialogAppUpdateBottomImg;
        this.f48178e = dialogAppUpdateBottomLl;
        this.f48179f = dialogAppUpdateBottomRl;
        this.f48180g = dialogAppUpdateHeaderImg;
        this.f48181h = dialogAppUpdateSv;
        this.f48182i = info;
        this.f48183j = installNotice;
        this.f48184k = newClosed;
        this.f48185l = newUpdateImage;
        this.f48186m = newVersion;
        this.f48187n = oldVersion;
        this.f48188o = updateNow;
    }

    @NonNull
    public static zd bind(@NonNull View rootView) {
        int i10 = R.id.cancel;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.cancel);
        if (button != null) {
            i10 = R.id.dialog_app_update_bottom_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dialog_app_update_bottom_img);
            if (imageView != null) {
                i10 = R.id.dialog_app_update_bottom_ll;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.dialog_app_update_bottom_ll);
                if (linearLayout != null) {
                    i10 = R.id.dialog_app_update_bottom_rl;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.dialog_app_update_bottom_rl);
                    if (relativeLayout != null) {
                        i10 = R.id.dialog_app_update_header_img;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.dialog_app_update_header_img);
                        if (imageView2 != null) {
                            i10 = R.id.dialog_app_update_sv;
                            ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.dialog_app_update_sv);
                            if (scrollView != null) {
                                i10 = R.id.info;
                                WebView webView = (WebView) ViewBindings.findChildViewById(rootView, R.id.info);
                                if (webView != null) {
                                    i10 = R.id.installNotice;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.installNotice);
                                    if (textView != null) {
                                        i10 = R.id.newClosed;
                                        Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.newClosed);
                                        if (button2 != null) {
                                            i10 = R.id.newUpdateImage;
                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.newUpdateImage);
                                            if (simpleDraweeView != null) {
                                                i10 = R.id.newVersion;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.newVersion);
                                                if (relativeLayout2 != null) {
                                                    i10 = R.id.oldVersion;
                                                    RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.oldVersion);
                                                    if (relativeLayout3 != null) {
                                                        i10 = R.id.updateNow;
                                                        Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.updateNow);
                                                        if (button3 != null) {
                                                            return new zd((RelativeLayout) rootView, button, imageView, linearLayout, relativeLayout, imageView2, scrollView, webView, textView, button2, simpleDraweeView, relativeLayout2, relativeLayout3, button3);
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
    public static zd inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f48175b;
    }

    @NonNull
    public static zd inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_app_update, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
