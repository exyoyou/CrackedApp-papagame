package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;

/* JADX INFO: loaded from: classes4.dex */
public final class e8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f37823b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout6 f37824c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37825d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f37826e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37827f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f37828g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f37831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f37832k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f37833l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37834m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f37835n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final jw0 f37836o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37837p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37838q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final ViewPager f37839r;

    private e8(@NonNull ConstraintLayout rootView, @NonNull SlidingTabLayout6 featureLayout, @NonNull TextView featureTypeText, @NonNull TextView filter, @NonNull TextView gameTypeText, @NonNull View line, @NonNull TextView modelTypeText, @NonNull LinearLayout moretag, @NonNull TextView okButn, @NonNull TextView playTypeText, @NonNull TextView resetButn, @NonNull RecyclerView tabRecyclerview, @NonNull TextView themeTypeText, @NonNull jw0 titleLayout, @NonNull LinearLayout typeMainLayout, @NonNull RecyclerView typeRecyclerview, @NonNull ViewPager viewPager) {
        this.f37823b = rootView;
        this.f37824c = featureLayout;
        this.f37825d = featureTypeText;
        this.f37826e = filter;
        this.f37827f = gameTypeText;
        this.f37828g = line;
        this.f37829h = modelTypeText;
        this.f37830i = moretag;
        this.f37831j = okButn;
        this.f37832k = playTypeText;
        this.f37833l = resetButn;
        this.f37834m = tabRecyclerview;
        this.f37835n = themeTypeText;
        this.f37836o = titleLayout;
        this.f37837p = typeMainLayout;
        this.f37838q = typeRecyclerview;
        this.f37839r = viewPager;
    }

    @NonNull
    public static e8 bind(@NonNull View rootView) {
        int i10 = R.id.featureLayout;
        SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(rootView, R.id.featureLayout);
        if (slidingTabLayout6 != null) {
            i10 = R.id.featureTypeText;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.featureTypeText);
            if (textView != null) {
                i10 = R.id.filter;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.filter);
                if (textView2 != null) {
                    i10 = R.id.gameTypeText;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.gameTypeText);
                    if (textView3 != null) {
                        i10 = R.id.line;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.modelTypeText;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.modelTypeText);
                            if (textView4 != null) {
                                i10 = R.id.moretag;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.moretag);
                                if (linearLayout != null) {
                                    i10 = R.id.okButn;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.okButn);
                                    if (textView5 != null) {
                                        i10 = R.id.playTypeText;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.playTypeText);
                                        if (textView6 != null) {
                                            i10 = R.id.resetButn;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.resetButn);
                                            if (textView7 != null) {
                                                i10 = R.id.tabRecyclerview;
                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.tabRecyclerview);
                                                if (recyclerView != null) {
                                                    i10 = R.id.themeTypeText;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.themeTypeText);
                                                    if (textView8 != null) {
                                                        i10 = R.id.titleLayout;
                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.titleLayout);
                                                        if (viewFindChildViewById2 != null) {
                                                            jw0 jw0VarBind = jw0.bind(viewFindChildViewById2);
                                                            i10 = R.id.typeMainLayout;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.typeMainLayout);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.typeRecyclerview;
                                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.typeRecyclerview);
                                                                if (recyclerView2 != null) {
                                                                    i10 = R.id.viewPager;
                                                                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                    if (viewPager != null) {
                                                                        return new e8((ConstraintLayout) rootView, slidingTabLayout6, textView, textView2, textView3, viewFindChildViewById, textView4, linearLayout, textView5, textView6, textView7, recyclerView, textView8, jw0VarBind, linearLayout2, recyclerView2, viewPager);
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
    public static e8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f37823b;
    }

    @NonNull
    public static e8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.categroy_gamelist_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
