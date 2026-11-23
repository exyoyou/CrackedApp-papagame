package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewFlipper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomerDownloadView;

/* JADX INFO: loaded from: classes4.dex */
public final class pl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f43410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final CustomerDownloadView f43411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f43412d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f43413e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TabLayout f43414f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43415g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ViewFlipper f43416h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f43417i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f43418j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f43419k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f43420l;

    private pl0(@NonNull ConstraintLayout rootView, @NonNull CustomerDownloadView cdvView, @NonNull SimpleDraweeView ivFloatad, @NonNull View statubar, @NonNull TabLayout tablayout, @NonNull TextView tvMessageCount, @NonNull ViewFlipper tvSearchHint, @NonNull View v10, @NonNull ImageView vMessage, @NonNull View vSearch, @NonNull ViewPager2 viewpager) {
        this.f43410b = rootView;
        this.f43411c = cdvView;
        this.f43412d = ivFloatad;
        this.f43413e = statubar;
        this.f43414f = tablayout;
        this.f43415g = tvMessageCount;
        this.f43416h = tvSearchHint;
        this.f43417i = v10;
        this.f43418j = vMessage;
        this.f43419k = vSearch;
        this.f43420l = viewpager;
    }

    @NonNull
    public static pl0 bind(@NonNull View rootView) {
        int i10 = R.id.cdv_view;
        CustomerDownloadView customerDownloadView = (CustomerDownloadView) ViewBindings.findChildViewById(rootView, R.id.cdv_view);
        if (customerDownloadView != null) {
            i10 = R.id.ivFloatad;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.ivFloatad);
            if (simpleDraweeView != null) {
                i10 = R.id.statubar;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                if (viewFindChildViewById != null) {
                    i10 = R.id.tablayout;
                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tablayout);
                    if (tabLayout != null) {
                        i10 = R.id.tv_message_count;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_message_count);
                        if (textView != null) {
                            i10 = R.id.tvSearchHint;
                            ViewFlipper viewFlipper = (ViewFlipper) ViewBindings.findChildViewById(rootView, R.id.tvSearchHint);
                            if (viewFlipper != null) {
                                i10 = R.id.v_1;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.v_1);
                                if (viewFindChildViewById2 != null) {
                                    i10 = R.id.v_message;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.v_message);
                                    if (imageView != null) {
                                        i10 = R.id.v_search;
                                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.v_search);
                                        if (viewFindChildViewById3 != null) {
                                            i10 = R.id.viewpager;
                                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                                            if (viewPager2 != null) {
                                                return new pl0((ConstraintLayout) rootView, customerDownloadView, simpleDraweeView, viewFindChildViewById, tabLayout, textView, viewFlipper, viewFindChildViewById2, imageView, viewFindChildViewById3, viewPager2);
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
    public static pl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f43410b;
    }

    @NonNull
    public static pl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_mainfragment_new_layout_v4, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
