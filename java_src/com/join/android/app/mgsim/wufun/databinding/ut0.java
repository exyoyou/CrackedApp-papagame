package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ut0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f45889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f45890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f45891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f45893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f45894g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f45895h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final EditText f45896i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45897j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f45898k;

    private ut0(@NonNull RelativeLayout rootView, @NonNull View divider, @NonNull ImageView imgIconback, @NonNull ImageView imgSearch, @NonNull RelativeLayout lLayoutSearch, @NonNull View requestLayout, @NonNull ImageView searchClear, @NonNull EditText searchEditText, @NonNull TextView tvSearch, @NonNull ViewPager2 vf) {
        this.f45889b = rootView;
        this.f45890c = divider;
        this.f45891d = imgIconback;
        this.f45892e = imgSearch;
        this.f45893f = lLayoutSearch;
        this.f45894g = requestLayout;
        this.f45895h = searchClear;
        this.f45896i = searchEditText;
        this.f45897j = tvSearch;
        this.f45898k = vf;
    }

    @NonNull
    public static ut0 bind(@NonNull View rootView) {
        int i10 = R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
        if (viewFindChildViewById != null) {
            i10 = R.id.img_iconback;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_iconback);
            if (imageView != null) {
                i10 = R.id.img_search;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img_search);
                if (imageView2 != null) {
                    i10 = R.id.lLayout_search;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.lLayout_search);
                    if (relativeLayout != null) {
                        i10 = R.id.requestLayout;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.requestLayout);
                        if (viewFindChildViewById2 != null) {
                            i10 = R.id.searchClear;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.searchClear);
                            if (imageView3 != null) {
                                i10 = R.id.searchEditText;
                                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.searchEditText);
                                if (editText != null) {
                                    i10 = R.id.tv_search;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_search);
                                    if (textView != null) {
                                        i10 = R.id.vf;
                                        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.vf);
                                        if (viewPager2 != null) {
                                            return new ut0((RelativeLayout) rootView, viewFindChildViewById, imageView, imageView2, relativeLayout, viewFindChildViewById2, imageView3, editText, textView, viewPager2);
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
    public static ut0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f45889b;
    }

    @NonNull
    public static ut0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_bar_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
