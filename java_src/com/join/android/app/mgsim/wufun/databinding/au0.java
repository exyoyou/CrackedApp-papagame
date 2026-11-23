package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.zhy.view.flowlayout.TagFlowLayout3;

/* JADX INFO: loaded from: classes4.dex */
public final class au0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f36075c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36076d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TagFlowLayout3 f36077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36079g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36080h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final EditText f36081i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f36082j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TagFlowLayout3 f36083k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36084l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36085m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TabLayout f36086n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final View f36087o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f36088p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f36089q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ViewPager f36090r;

    private au0(@NonNull ConstraintLayout rootView, @NonNull ListView autoListView, @NonNull ImageView back, @NonNull TagFlowLayout3 classifies, @NonNull ImageView clear, @NonNull ConstraintLayout constraintLayout3, @NonNull ConstraintLayout constraintLayout6, @NonNull EditText input, @NonNull ImageView ivFilter, @NonNull TagFlowLayout3 languages, @NonNull LinearLayout llFilter, @NonNull ImageView search, @NonNull TabLayout tabLayout, @NonNull View tagBackground, @NonNull TextView tvFilterClose, @NonNull TextView tvFilterConfirm, @NonNull ViewPager viewPager) {
        this.f36074b = rootView;
        this.f36075c = autoListView;
        this.f36076d = back;
        this.f36077e = classifies;
        this.f36078f = clear;
        this.f36079g = constraintLayout3;
        this.f36080h = constraintLayout6;
        this.f36081i = input;
        this.f36082j = ivFilter;
        this.f36083k = languages;
        this.f36084l = llFilter;
        this.f36085m = search;
        this.f36086n = tabLayout;
        this.f36087o = tagBackground;
        this.f36088p = tvFilterClose;
        this.f36089q = tvFilterConfirm;
        this.f36090r = viewPager;
    }

    @NonNull
    public static au0 bind(@NonNull View rootView) {
        int i10 = R.id.autoListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.autoListView);
        if (listView != null) {
            i10 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView != null) {
                i10 = R.id.classifies;
                TagFlowLayout3 tagFlowLayout3 = (TagFlowLayout3) ViewBindings.findChildViewById(rootView, R.id.classifies);
                if (tagFlowLayout3 != null) {
                    i10 = R.id.clear;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.clear);
                    if (imageView2 != null) {
                        i10 = R.id.constraintLayout3;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout3);
                        if (constraintLayout != null) {
                            i10 = R.id.constraintLayout6;
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout6);
                            if (constraintLayout2 != null) {
                                i10 = R.id.input;
                                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.input);
                                if (editText != null) {
                                    i10 = R.id.iv_filter;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_filter);
                                    if (imageView3 != null) {
                                        i10 = R.id.languages;
                                        TagFlowLayout3 tagFlowLayout4 = (TagFlowLayout3) ViewBindings.findChildViewById(rootView, R.id.languages);
                                        if (tagFlowLayout4 != null) {
                                            i10 = R.id.ll_filter;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_filter);
                                            if (linearLayout != null) {
                                                i10 = R.id.search;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                                if (imageView4 != null) {
                                                    i10 = R.id.tabLayout;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tabLayout);
                                                    if (tabLayout != null) {
                                                        i10 = R.id.tagBackground;
                                                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.tagBackground);
                                                        if (viewFindChildViewById != null) {
                                                            i10 = R.id.tv_filter_close;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_filter_close);
                                                            if (textView != null) {
                                                                i10 = R.id.tv_filter_confirm;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_filter_confirm);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.viewPager;
                                                                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                    if (viewPager != null) {
                                                                        return new au0((ConstraintLayout) rootView, listView, imageView, tagFlowLayout3, imageView2, constraintLayout, constraintLayout2, editText, imageView3, tagFlowLayout4, linearLayout, imageView4, tabLayout, viewFindChildViewById, textView, textView2, viewPager);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static au0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36074b;
    }

    @NonNull
    public static au0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.search_list_activity1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
