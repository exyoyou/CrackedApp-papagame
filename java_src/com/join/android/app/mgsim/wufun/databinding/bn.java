package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class bn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36466b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36467c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f36469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36471g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36472h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f36473i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36474j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36475k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f36476l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f36477m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final View f36478n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TabLayout f36479o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f36480p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f36481q;

    private bn(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout appbar, @NonNull ImageView back, @NonNull View filter, @NonNull TextView filterArr, @NonNull TextView plugProgress, @NonNull TextView plugType, @NonNull ImageView plugs, @NonNull LinearLayout plugsDownloadTip, @NonNull ConstraintLayout root, @NonNull ImageView search, @NonNull ImageView settings, @NonNull View statubar, @NonNull TabLayout tabs, @NonNull TextView title, @NonNull ViewPager2 vp) {
        this.f36466b = rootView;
        this.f36467c = appbar;
        this.f36468d = back;
        this.f36469e = filter;
        this.f36470f = filterArr;
        this.f36471g = plugProgress;
        this.f36472h = plugType;
        this.f36473i = plugs;
        this.f36474j = plugsDownloadTip;
        this.f36475k = root;
        this.f36476l = search;
        this.f36477m = settings;
        this.f36478n = statubar;
        this.f36479o = tabs;
        this.f36480p = title;
        this.f36481q = vp;
    }

    @NonNull
    public static bn bind(@NonNull View rootView) {
        int i10 = R.id.appbar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.appbar);
        if (constraintLayout != null) {
            i10 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back);
            if (imageView != null) {
                i10 = R.id.filter;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.filter);
                if (viewFindChildViewById != null) {
                    i10 = R.id.filterArr;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.filterArr);
                    if (textView != null) {
                        i10 = R.id.plugProgress;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plugProgress);
                        if (textView2 != null) {
                            i10 = R.id.plugType;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.plugType);
                            if (textView3 != null) {
                                i10 = R.id.plugs;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.plugs);
                                if (imageView2 != null) {
                                    i10 = R.id.plugsDownloadTip;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.plugsDownloadTip);
                                    if (linearLayout != null) {
                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) rootView;
                                        i10 = R.id.search;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.search);
                                        if (imageView3 != null) {
                                            i10 = R.id.settings;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.settings);
                                            if (imageView4 != null) {
                                                i10 = R.id.statubar;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.statubar);
                                                if (viewFindChildViewById2 != null) {
                                                    i10 = R.id.tabs;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(rootView, R.id.tabs);
                                                    if (tabLayout != null) {
                                                        i10 = R.id.title;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                        if (textView4 != null) {
                                                            i10 = R.id.vp;
                                                            ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.vp);
                                                            if (viewPager2 != null) {
                                                                return new bn(constraintLayout2, constraintLayout, imageView, viewFindChildViewById, textView, textView2, textView3, imageView2, linearLayout, constraintLayout2, imageView3, imageView4, viewFindChildViewById2, tabLayout, textView4, viewPager2);
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
    public static bn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36466b;
    }

    @NonNull
    public static bn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
