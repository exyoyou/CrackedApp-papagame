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
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventViewPager;

/* JADX INFO: loaded from: classes4.dex */
public final class ao implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f35941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final InterceptEventViewPager f35942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35944f;

    private ao(@NonNull LinearLayout rootView, @NonNull View line, @NonNull InterceptEventViewPager mViewPager, @NonNull TextView tvFree, @NonNull TextView tvNew) {
        this.f35940b = rootView;
        this.f35941c = line;
        this.f35942d = mViewPager;
        this.f35943e = tvFree;
        this.f35944f = tvNew;
    }

    @NonNull
    public static ao bind(@NonNull View rootView) {
        int i10 = R.id.line;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
        if (viewFindChildViewById != null) {
            i10 = R.id.mViewPager;
            InterceptEventViewPager interceptEventViewPager = (InterceptEventViewPager) ViewBindings.findChildViewById(rootView, R.id.mViewPager);
            if (interceptEventViewPager != null) {
                i10 = R.id.tv_free;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_free);
                if (textView != null) {
                    i10 = R.id.tv_new;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_new);
                    if (textView2 != null) {
                        return new ao((LinearLayout) rootView, viewFindChildViewById, interceptEventViewPager, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ao inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35940b;
    }

    @NonNull
    public static ao inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_papa_standalone_oversea, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
