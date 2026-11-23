package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class l6 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f41190c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f41191d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41194g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41196i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f41197j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41198k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ProgressBar f41199l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f41200m;

    private l6(@NonNull RelativeLayout rootView, @NonNull TextView appSize, @NonNull ImageView cancle, @NonNull SimpleDraweeView icon, @NonNull TextView info, @NonNull LinearLayout linearLayout2, @NonNull TextView lodingInfo, @NonNull LinearLayout main, @NonNull TextView ok, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBarZip, @NonNull TextView title) {
        this.f41189b = rootView;
        this.f41190c = appSize;
        this.f41191d = cancle;
        this.f41192e = icon;
        this.f41193f = info;
        this.f41194g = linearLayout2;
        this.f41195h = lodingInfo;
        this.f41196i = main;
        this.f41197j = ok;
        this.f41198k = progressBar;
        this.f41199l = progressBarZip;
        this.f41200m = title;
    }

    @NonNull
    public static l6 bind(@NonNull View rootView) {
        int i10 = R.id.appSize;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.appSize);
        if (textView != null) {
            i10 = R.id.cancle;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.cancle);
            if (imageView != null) {
                i10 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon);
                if (simpleDraweeView != null) {
                    i10 = R.id.info;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.info);
                    if (textView2 != null) {
                        i10 = R.id.linearLayout2;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.linearLayout2);
                        if (linearLayout != null) {
                            i10 = R.id.lodingInfo;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.lodingInfo);
                            if (textView3 != null) {
                                i10 = R.id.main;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.main);
                                if (linearLayout2 != null) {
                                    i10 = R.id.ok;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.ok);
                                    if (textView4 != null) {
                                        i10 = R.id.progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                        if (progressBar != null) {
                                            i10 = R.id.progressBarZip;
                                            ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBarZip);
                                            if (progressBar2 != null) {
                                                i10 = R.id.title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                if (textView5 != null) {
                                                    return new l6((RelativeLayout) rootView, textView, imageView, simpleDraweeView, textView2, linearLayout, textView3, linearLayout2, textView4, progressBar, progressBar2, textView5);
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
    public static l6 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41189b;
    }

    @NonNull
    public static l6 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.appdown_unzipfailed_dialog_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
