package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class wp0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46904c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46905d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46906e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46907f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f46908g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46909h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f46910i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46911j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f46912k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46913l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46914m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46915n;

    private wp0(@NonNull RelativeLayout rootView, @NonNull RelativeLayout aaa, @NonNull TextView appname, @NonNull RelativeLayout bannerLayout, @NonNull SimpleDraweeView bannerView, @NonNull TextView describe, @NonNull SimpleDraweeView gameIcon, @NonNull TextView itemInstall, @NonNull SimpleDraweeView loading, @NonNull TextView moneyText, @NonNull RelativeLayout rLayoutRight, @NonNull RelativeLayout topImage, @NonNull FrameLayout videoContner) {
        this.f46903b = rootView;
        this.f46904c = aaa;
        this.f46905d = appname;
        this.f46906e = bannerLayout;
        this.f46907f = bannerView;
        this.f46908g = describe;
        this.f46909h = gameIcon;
        this.f46910i = itemInstall;
        this.f46911j = loading;
        this.f46912k = moneyText;
        this.f46913l = rLayoutRight;
        this.f46914m = topImage;
        this.f46915n = videoContner;
    }

    @NonNull
    public static wp0 bind(@NonNull View rootView) {
        int i10 = R.id.aaa;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.aaa);
        if (relativeLayout != null) {
            i10 = R.id.appname;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname);
            if (textView != null) {
                RelativeLayout relativeLayout2 = (RelativeLayout) rootView;
                i10 = R.id.bannerView;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.bannerView);
                if (simpleDraweeView != null) {
                    i10 = R.id.describe;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.describe);
                    if (textView2 != null) {
                        i10 = R.id.gameIcon;
                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                        if (simpleDraweeView2 != null) {
                            i10 = R.id.itemInstall;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemInstall);
                            if (textView3 != null) {
                                i10 = R.id.loading;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.loading);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.moneyText;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                    if (textView4 != null) {
                                        i10 = R.id.rLayoutRight;
                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight);
                                        if (relativeLayout3 != null) {
                                            i10 = R.id.topImage;
                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.topImage);
                                            if (relativeLayout4 != null) {
                                                i10 = R.id.videoContner;
                                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContner);
                                                if (frameLayout != null) {
                                                    return new wp0(relativeLayout2, relativeLayout, textView, relativeLayout2, simpleDraweeView, textView2, simpleDraweeView2, textView3, simpleDraweeView3, textView4, relativeLayout3, relativeLayout4, frameLayout);
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
    public static wp0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46903b;
    }

    @NonNull
    public static wp0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_broadcast_sptop_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
