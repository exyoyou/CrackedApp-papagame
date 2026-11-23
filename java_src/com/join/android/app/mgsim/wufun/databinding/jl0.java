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
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;

/* JADX INFO: loaded from: classes4.dex */
public final class jl0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40285c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ViewPager f40286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final HListView f40288f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40289g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40290h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40291i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40292j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40293k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40294l;

    private jl0(@NonNull RelativeLayout rootView, @NonNull ImageView imageView5, @NonNull ViewPager interestingGallery, @NonNull LinearLayout intersetingMore, @NonNull HListView interstinglist, @NonNull TextView mgpapinterstingTitle, @NonNull TextView textView, @NonNull TextView textView11, @NonNull TextView textView2, @NonNull TextView textView6, @NonNull LinearLayout top) {
        this.f40284b = rootView;
        this.f40285c = imageView5;
        this.f40286d = interestingGallery;
        this.f40287e = intersetingMore;
        this.f40288f = interstinglist;
        this.f40289g = mgpapinterstingTitle;
        this.f40290h = textView;
        this.f40291i = textView11;
        this.f40292j = textView2;
        this.f40293k = textView6;
        this.f40294l = top;
    }

    @NonNull
    public static jl0 bind(@NonNull View rootView) {
        int i10 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
        if (imageView != null) {
            i10 = R.id.interestingGallery;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.interestingGallery);
            if (viewPager != null) {
                i10 = R.id.intersetingMore;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.intersetingMore);
                if (linearLayout != null) {
                    i10 = R.id.interstinglist;
                    HListView hListView = (HListView) ViewBindings.findChildViewById(rootView, R.id.interstinglist);
                    if (hListView != null) {
                        i10 = R.id.mgpapinterstingTitle;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.mgpapinterstingTitle);
                        if (textView != null) {
                            i10 = R.id.textView;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                            if (textView2 != null) {
                                i10 = R.id.textView11;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView11);
                                if (textView3 != null) {
                                    i10 = R.id.textView2;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                                    if (textView4 != null) {
                                        i10 = R.id.textView6;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView6);
                                        if (textView5 != null) {
                                            i10 = R.id.top;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.top);
                                            if (linearLayout2 != null) {
                                                return new jl0((RelativeLayout) rootView, imageView, viewPager, linearLayout, hListView, textView, textView2, textView3, textView4, textView5, linearLayout2);
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
    public static jl0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40284b;
    }

    @NonNull
    public static jl0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mgpapa_interesting_include, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
