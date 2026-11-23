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
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomCircleProgressBar;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class jv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f40448f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CircleIndicator f40449g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40450h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40451i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40452j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final CustomCircleProgressBar f40453k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final MultiTouchViewPager f40454l;

    private jv(@NonNull LinearLayout rootView, @NonNull ImageView close, @NonNull TextView downFileName, @NonNull RelativeLayout downLoadlayout, @NonNull View holder, @NonNull CircleIndicator indicator, @NonNull TextView install, @NonNull SimpleDraweeView more, @NonNull LinearLayout parentLayout, @NonNull CustomCircleProgressBar progressBar, @NonNull MultiTouchViewPager viewPager) {
        this.f40444b = rootView;
        this.f40445c = close;
        this.f40446d = downFileName;
        this.f40447e = downLoadlayout;
        this.f40448f = holder;
        this.f40449g = indicator;
        this.f40450h = install;
        this.f40451i = more;
        this.f40452j = parentLayout;
        this.f40453k = progressBar;
        this.f40454l = viewPager;
    }

    @NonNull
    public static jv bind(@NonNull View rootView) {
        int i10 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
        if (imageView != null) {
            i10 = R.id.downFileName;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.downFileName);
            if (textView != null) {
                i10 = R.id.downLoadlayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.downLoadlayout);
                if (relativeLayout != null) {
                    i10 = R.id.holder;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.holder);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.indicator;
                        CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(rootView, R.id.indicator);
                        if (circleIndicator != null) {
                            i10 = R.id.install;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.install);
                            if (textView2 != null) {
                                i10 = R.id.more;
                                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.more);
                                if (simpleDraweeView != null) {
                                    LinearLayout linearLayout = (LinearLayout) rootView;
                                    i10 = R.id.progressBar;
                                    CustomCircleProgressBar customCircleProgressBar = (CustomCircleProgressBar) ViewBindings.findChildViewById(rootView, R.id.progressBar);
                                    if (customCircleProgressBar != null) {
                                        i10 = R.id.viewPager;
                                        MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                        if (multiTouchViewPager != null) {
                                            return new jv(linearLayout, imageView, textView, relativeLayout, viewFindChildViewById, circleIndicator, textView2, simpleDraweeView, linearLayout, customCircleProgressBar, multiTouchViewPager);
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
    public static jv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40444b;
    }

    @NonNull
    public static jv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.home_popup_adqw_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
