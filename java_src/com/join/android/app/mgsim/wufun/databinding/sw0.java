package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class sw0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f45013b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RecyclerView f45014c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f45015d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f45016e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f45017f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ViewPager f45018g;

    private sw0(@NonNull ConstraintLayout rootView, @NonNull RecyclerView indicator, @NonNull View left, @NonNull SimpleDraweeView pic, @NonNull View right, @NonNull ViewPager viewPager) {
        this.f45013b = rootView;
        this.f45014c = indicator;
        this.f45015d = left;
        this.f45016e = pic;
        this.f45017f = right;
        this.f45018g = viewPager;
    }

    @NonNull
    public static sw0 bind(@NonNull View rootView) {
        int i10 = R.id.indicator;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.indicator);
        if (recyclerView != null) {
            i10 = R.id.left;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.left);
            if (viewFindChildViewById != null) {
                i10 = R.id.pic;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.pic);
                if (simpleDraweeView != null) {
                    i10 = R.id.right;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.right);
                    if (viewFindChildViewById2 != null) {
                        i10 = R.id.viewPager;
                        ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                        if (viewPager != null) {
                            return new sw0((ConstraintLayout) rootView, recyclerView, viewFindChildViewById, simpleDraweeView, viewFindChildViewById2, viewPager);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static sw0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f45013b;
    }

    @NonNull
    public static sw0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.update_feature_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
