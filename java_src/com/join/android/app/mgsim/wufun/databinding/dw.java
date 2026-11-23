package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.component.photoviewer.MultiTouchViewPager;
import com.join.android.app.mgsim.wufun.R;
import me.relex.circleindicator.CircleIndicator;

/* JADX INFO: loaded from: classes4.dex */
public final class dw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f37646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f37647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final CircleIndicator f37648d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37649e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f37650f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37651g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final MultiTouchViewPager f37652h;

    private dw(@NonNull LinearLayout rootView, @NonNull View holder, @NonNull CircleIndicator indicator, @NonNull TextView message, @NonNull SimpleDraweeView more, @NonNull LinearLayout parentLayout, @NonNull MultiTouchViewPager viewPager) {
        this.f37646b = rootView;
        this.f37647c = holder;
        this.f37648d = indicator;
        this.f37649e = message;
        this.f37650f = more;
        this.f37651g = parentLayout;
        this.f37652h = viewPager;
    }

    @NonNull
    public static dw bind(@NonNull View rootView) {
        int i10 = R.id.holder;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.holder);
        if (viewFindChildViewById != null) {
            i10 = R.id.indicator;
            CircleIndicator circleIndicator = (CircleIndicator) ViewBindings.findChildViewById(rootView, R.id.indicator);
            if (circleIndicator != null) {
                i10 = R.id.message;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                if (textView != null) {
                    i10 = R.id.more;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.more);
                    if (simpleDraweeView != null) {
                        LinearLayout linearLayout = (LinearLayout) rootView;
                        i10 = R.id.viewPager;
                        MultiTouchViewPager multiTouchViewPager = (MultiTouchViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                        if (multiTouchViewPager != null) {
                            return new dw(linearLayout, viewFindChildViewById, circleIndicator, textView, simpleDraweeView, linearLayout, multiTouchViewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static dw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f37646b;
    }

    @NonNull
    public static dw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.install_app_notice_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
