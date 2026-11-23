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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class nt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42510b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42511c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f42515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ViewPager f42516h;

    private nt0(@NonNull RelativeLayout rootView, @NonNull ImageView back, @NonNull LinearLayout bottomLayout, @NonNull TextView message, @NonNull TextView nameAndDate, @NonNull TextView positionShow, @NonNull ViewPager viewPager) {
        this.f42510b = rootView;
        this.f42511c = back;
        this.f42512d = bottomLayout;
        this.f42513e = message;
        this.f42514f = nameAndDate;
        this.f42515g = positionShow;
        this.f42516h = viewPager;
    }

    @NonNull
    public static nt0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.bottomLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.bottomLayout);
            if (linearLayout != null) {
                i10 = R.id.message;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.message);
                if (textView != null) {
                    i10 = R.id.nameAndDate;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nameAndDate);
                    if (textView2 != null) {
                        i10 = R.id.positionShow;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.positionShow);
                        if (textView3 != null) {
                            i10 = R.id.viewPager;
                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                            if (viewPager != null) {
                                return new nt0((RelativeLayout) rootView, imageView, linearLayout, textView, textView2, textView3, viewPager);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42510b;
    }

    @NonNull
    public static nt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.screenshort_bigimag_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
