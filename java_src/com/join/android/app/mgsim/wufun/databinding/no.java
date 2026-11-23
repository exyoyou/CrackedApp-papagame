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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class no implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f42436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f42437c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42438d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f42439e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f42440f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42441g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42442h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f42443i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f42444j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f42445k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ViewPager f42446l;

    private no(@NonNull RelativeLayout rootView, @NonNull ImageView bgExpand, @NonNull ImageView btnShrinkIntroduction, @NonNull View divider, @NonNull ImageView ivExpand, @NonNull LinearLayout llExpand, @NonNull LinearLayout llHead, @NonNull RelativeLayout rlContent, @NonNull RecyclerView rvListType, @NonNull TextView tvDraft, @NonNull ViewPager viewPager) {
        this.f42436b = rootView;
        this.f42437c = bgExpand;
        this.f42438d = btnShrinkIntroduction;
        this.f42439e = divider;
        this.f42440f = ivExpand;
        this.f42441g = llExpand;
        this.f42442h = llHead;
        this.f42443i = rlContent;
        this.f42444j = rvListType;
        this.f42445k = tvDraft;
        this.f42446l = viewPager;
    }

    @NonNull
    public static no bind(@NonNull View rootView) {
        int i10 = R.id.bgExpand;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.bgExpand);
        if (imageView != null) {
            i10 = R.id.btnShrinkIntroduction;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.btnShrinkIntroduction);
            if (imageView2 != null) {
                i10 = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                if (viewFindChildViewById != null) {
                    i10 = R.id.ivExpand;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivExpand);
                    if (imageView3 != null) {
                        i10 = R.id.llExpand;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llExpand);
                        if (linearLayout != null) {
                            i10 = R.id.ll_head;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_head);
                            if (linearLayout2 != null) {
                                i10 = R.id.rlContent;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlContent);
                                if (relativeLayout != null) {
                                    i10 = R.id.rv_list_type;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list_type);
                                    if (recyclerView != null) {
                                        i10 = R.id.tv_draft;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_draft);
                                        if (textView != null) {
                                            i10 = R.id.view_pager;
                                            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.view_pager);
                                            if (viewPager != null) {
                                                return new no((RelativeLayout) rootView, imageView, imageView2, viewFindChildViewById, imageView3, linearLayout, linearLayout2, relativeLayout, recyclerView, textView, viewPager);
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
    public static no inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f42436b;
    }

    @NonNull
    public static no inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_simulator_introduction, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
