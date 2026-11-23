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
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class b8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f36263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ViewPager f36266e;

    private b8(@NonNull LinearLayout rootView, @NonNull RelativeLayout relateLayout, @NonNull TextView textViewPosition, @NonNull ViewPager viewpager) {
        this.f36263b = rootView;
        this.f36264c = relateLayout;
        this.f36265d = textViewPosition;
        this.f36266e = viewpager;
    }

    @NonNull
    public static b8 bind(@NonNull View rootView) {
        int i10 = R.id.relateLayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relateLayout);
        if (relativeLayout != null) {
            i10 = R.id.textViewPosition;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textViewPosition);
            if (textView != null) {
                i10 = R.id.viewpager;
                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                if (viewPager != null) {
                    return new b8((LinearLayout) rootView, relativeLayout, textView, viewPager);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static b8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f36263b;
    }

    @NonNull
    public static b8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.category_collection_recom, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
