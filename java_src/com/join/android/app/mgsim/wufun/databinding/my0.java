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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class my0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42090b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42091c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f42092d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f42093e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42094f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42095g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42096h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f42097i;

    private my0(@NonNull RelativeLayout rootView, @NonNull ImageView close, @NonNull TextView gameName, @NonNull SimpleDraweeView img, @NonNull LinearLayout main, @NonNull RelativeLayout mainxxx, @NonNull TextView settingInfo, @NonNull TextView startButn) {
        this.f42090b = rootView;
        this.f42091c = close;
        this.f42092d = gameName;
        this.f42093e = img;
        this.f42094f = main;
        this.f42095g = mainxxx;
        this.f42096h = settingInfo;
        this.f42097i = startButn;
    }

    @NonNull
    public static my0 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
            if (textView != null) {
                i10 = R.id.img;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.img);
                if (simpleDraweeView != null) {
                    i10 = R.id.main;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                    if (linearLayout != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) rootView;
                        i10 = R.id.settingInfo;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.settingInfo);
                        if (textView2 != null) {
                            i10 = R.id.startButn;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.startButn);
                            if (textView3 != null) {
                                return new my0(relativeLayout, imageView, textView, simpleDraweeView, linearLayout, relativeLayout, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static my0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42090b;
    }

    @NonNull
    public static my0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.wufungame_first_downpermiss_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
