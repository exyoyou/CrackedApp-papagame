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

/* JADX INFO: loaded from: classes4.dex */
public final class kq0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f40927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40928d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40929e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40930f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40931g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40932h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40933i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40934j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40935k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f40936l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40937m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40938n;

    private kq0(@NonNull LinearLayout rootView, @NonNull TextView appSize, @NonNull TextView appname, @NonNull SimpleDraweeView gameIcon, @NonNull RelativeLayout gameLayout, @NonNull LinearLayout gamebroadcastTop, @NonNull SimpleDraweeView gamebroadcastTopImage1, @NonNull SimpleDraweeView gamebroadcastTopImage2, @NonNull SimpleDraweeView gamebroadcastTopImage3, @NonNull TextView itemInstall, @NonNull TextView moneyText, @NonNull RelativeLayout rLayoutRight, @NonNull LinearLayout tipsLayout) {
        this.f40926b = rootView;
        this.f40927c = appSize;
        this.f40928d = appname;
        this.f40929e = gameIcon;
        this.f40930f = gameLayout;
        this.f40931g = gamebroadcastTop;
        this.f40932h = gamebroadcastTopImage1;
        this.f40933i = gamebroadcastTopImage2;
        this.f40934j = gamebroadcastTopImage3;
        this.f40935k = itemInstall;
        this.f40936l = moneyText;
        this.f40937m = rLayoutRight;
        this.f40938n = tipsLayout;
    }

    @NonNull
    public static kq0 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.appname;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.appname);
            if (textView2 != null) {
                i10 = R.id.gameIcon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gameIcon);
                if (simpleDraweeView != null) {
                    i10 = R.id.gameLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.gameLayout);
                    if (relativeLayout != null) {
                        i10 = R.id.gamebroadcastTop;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTop);
                        if (linearLayout != null) {
                            i10 = R.id.gamebroadcastTopImage1;
                            SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage1);
                            if (simpleDraweeView2 != null) {
                                i10 = R.id.gamebroadcastTopImage2;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage2);
                                if (simpleDraweeView3 != null) {
                                    i10 = R.id.gamebroadcastTopImage3;
                                    SimpleDraweeView simpleDraweeView4 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.gamebroadcastTopImage3);
                                    if (simpleDraweeView4 != null) {
                                        i10 = R.id.itemInstall;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.itemInstall);
                                        if (textView3 != null) {
                                            i10 = R.id.moneyText;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moneyText);
                                            if (textView4 != null) {
                                                i10 = R.id.rLayoutRight;
                                                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rLayoutRight);
                                                if (relativeLayout2 != null) {
                                                    i10 = R.id.tipsLayout;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.tipsLayout);
                                                    if (linearLayout2 != null) {
                                                        return new kq0((LinearLayout) rootView, textView, textView2, simpleDraweeView, relativeLayout, linearLayout, simpleDraweeView2, simpleDraweeView3, simpleDraweeView4, textView3, textView4, relativeLayout2, linearLayout2);
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
    public static kq0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40926b;
    }

    @NonNull
    public static kq0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.papamain_mode_five, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
