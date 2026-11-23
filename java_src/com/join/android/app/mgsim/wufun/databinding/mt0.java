package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.SlidingTabLayoutScreenShort;

/* JADX INFO: loaded from: classes4.dex */
public final class mt0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f42034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayoutScreenShort f42036d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f42037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f42038f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ViewPager f42039g;

    private mt0(@NonNull LinearLayout rootView, @NonNull ImageView back, @NonNull SlidingTabLayoutScreenShort tableLayout, @NonNull TextView title, @NonNull TextView upload, @NonNull ViewPager viewpager) {
        this.f42034b = rootView;
        this.f42035c = back;
        this.f42036d = tableLayout;
        this.f42037e = title;
        this.f42038f = upload;
        this.f42039g = viewpager;
    }

    @NonNull
    public static mt0 bind(@NonNull View rootView) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
        if (imageView != null) {
            i10 = R.id.tableLayout;
            SlidingTabLayoutScreenShort slidingTabLayoutScreenShort = (SlidingTabLayoutScreenShort) ViewBindings.findChildViewById(rootView, R.id.tableLayout);
            if (slidingTabLayoutScreenShort != null) {
                i10 = R.id.title;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                if (textView != null) {
                    i10 = R.id.upload;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.upload);
                    if (textView2 != null) {
                        i10 = R.id.viewpager;
                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                        if (viewPager != null) {
                            return new mt0((LinearLayout) rootView, imageView, slidingTabLayoutScreenShort, textView, textView2, viewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mt0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f42034b;
    }

    @NonNull
    public static mt0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.screenshort_activity_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
