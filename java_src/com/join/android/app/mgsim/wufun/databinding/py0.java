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
public final class py0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f43575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43576d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43577e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43578f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43579g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43580h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f43581i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f43582j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43583k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f43584l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f43585m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f43586n;

    private py0(@NonNull RelativeLayout rootView, @NonNull ImageView close, @NonNull TextView gameName, @NonNull TextView goH5, @NonNull SimpleDraweeView icon, @NonNull LinearLayout llReUnzip, @NonNull LinearLayout main, @NonNull TextView message, @NonNull LinearLayout moreSelecter, @NonNull SimpleDraweeView sdvImage, @NonNull TextView startButn, @NonNull TextView tvReDownload, @NonNull TextView tvReUnzip) {
        this.f43574b = rootView;
        this.f43575c = close;
        this.f43576d = gameName;
        this.f43577e = goH5;
        this.f43578f = icon;
        this.f43579g = llReUnzip;
        this.f43580h = main;
        this.f43581i = message;
        this.f43582j = moreSelecter;
        this.f43583k = sdvImage;
        this.f43584l = startButn;
        this.f43585m = tvReDownload;
        this.f43586n = tvReUnzip;
    }

    @NonNull
    public static py0 bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameName);
            if (textView != null) {
                i10 = R.id.goH5;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.goH5);
                if (textView2 != null) {
                    i10 = R.id.icon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (simpleDraweeView != null) {
                        i10 = R.id.llReUnzip;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llReUnzip);
                        if (linearLayout != null) {
                            i10 = R.id.main;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                            if (linearLayout2 != null) {
                                i10 = R.id.message;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                                if (textView3 != null) {
                                    i10 = R.id.moreSelecter;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moreSelecter);
                                    if (linearLayout3 != null) {
                                        i10 = R.id.sdv_image;
                                        SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.sdv_image);
                                        if (simpleDraweeView2 != null) {
                                            i10 = R.id.startButn;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.startButn);
                                            if (textView4 != null) {
                                                i10 = R.id.tvReDownload;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvReDownload);
                                                if (textView5 != null) {
                                                    i10 = R.id.tvReUnzip;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvReUnzip);
                                                    if (textView6 != null) {
                                                        return new py0((RelativeLayout) rootView, imageView, textView, textView2, simpleDraweeView, linearLayout, linearLayout2, textView3, linearLayout3, simpleDraweeView2, textView4, textView5, textView6);
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
    public static py0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43574b;
    }

    @NonNull
    public static py0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.wufungame_unzipfailed_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
