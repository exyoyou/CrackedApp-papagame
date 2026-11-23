package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class a1 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f35560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f35561c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f35562d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f35563e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f35564f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f35565g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35566h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f35567i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f35568j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f35569k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f35570l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f35571m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f35572n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f35573o;

    private a1(@NonNull ConstraintLayout rootView, @NonNull ImageView backImage, @NonNull ConstraintLayout clGameSelect, @NonNull TextView createEndGame, @NonNull View divider, @NonNull ImageView ivExpand, @NonNull RelativeLayout rlTitle, @NonNull RecyclerView rvGameSelect, @NonNull RecyclerView rvGameSelectTag, @NonNull View shadowMask, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull ViewPager2 viewpager, @NonNull ViewPager2 vpGameList) {
        this.f35560b = rootView;
        this.f35561c = backImage;
        this.f35562d = clGameSelect;
        this.f35563e = createEndGame;
        this.f35564f = divider;
        this.f35565g = ivExpand;
        this.f35566h = rlTitle;
        this.f35567i = rvGameSelect;
        this.f35568j = rvGameSelectTag;
        this.f35569k = shadowMask;
        this.f35570l = statubar;
        this.f35571m = titleTextview;
        this.f35572n = viewpager;
        this.f35573o = vpGameList;
    }

    @NonNull
    public static a1 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.clGameSelect;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.clGameSelect);
            if (constraintLayout != null) {
                i10 = R.id.createEndGame;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.createEndGame);
                if (textView != null) {
                    i10 = R.id.divider;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.ivExpand;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivExpand);
                        if (imageView2 != null) {
                            i10 = R.id.rlTitle;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlTitle);
                            if (relativeLayout != null) {
                                i10 = R.id.rvGameSelect;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvGameSelect);
                                if (recyclerView != null) {
                                    i10 = R.id.rvGameSelectTag;
                                    RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvGameSelectTag);
                                    if (recyclerView2 != null) {
                                        i10 = R.id.shadowMask;
                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.shadowMask);
                                        if (viewFindChildViewById2 != null) {
                                            i10 = R.id.statubar;
                                            View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                            if (viewFindChildViewById3 != null) {
                                                i10 = R.id.title_textview;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                                if (textView2 != null) {
                                                    i10 = R.id.viewpager;
                                                    ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.viewpager);
                                                    if (viewPager2 != null) {
                                                        i10 = R.id.vpGameList;
                                                        ViewPager2 viewPager3 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.vpGameList);
                                                        if (viewPager3 != null) {
                                                            return new a1((ConstraintLayout) rootView, imageView, constraintLayout, textView, viewFindChildViewById, imageView2, relativeLayout, recyclerView, recyclerView2, viewFindChildViewById2, viewFindChildViewById3, textView2, viewPager2, viewPager3);
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
    public static a1 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f35560b;
    }

    @NonNull
    public static a1 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_end_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
