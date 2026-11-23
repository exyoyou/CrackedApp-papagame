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
import androidx.constraintlayout.widget.Group;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class x0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Group f47026e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final RecyclerView f47027f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f47028g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47029h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ViewPager2 f47030i;

    private x0(@NonNull ConstraintLayout rootView, @NonNull ImageView backImage, @NonNull RelativeLayout headview, @NonNull Group main, @NonNull RecyclerView rvGame, @NonNull View statubar, @NonNull TextView titleTextview, @NonNull ViewPager2 vpRank) {
        this.f47023b = rootView;
        this.f47024c = backImage;
        this.f47025d = headview;
        this.f47026e = main;
        this.f47027f = rvGame;
        this.f47028g = statubar;
        this.f47029h = titleTextview;
        this.f47030i = vpRank;
    }

    @NonNull
    public static x0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.headview;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
            if (relativeLayout != null) {
                i10 = R.id.main;
                Group group = (Group) ViewBindings.findChildViewById(rootView, R.id.main);
                if (group != null) {
                    i10 = R.id.rvGame;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rvGame);
                    if (recyclerView != null) {
                        i10 = R.id.statubar;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.statubar);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.title_textview;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                            if (textView != null) {
                                i10 = R.id.vpRank;
                                ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(rootView, R.id.vpRank);
                                if (viewPager2 != null) {
                                    return new x0((ConstraintLayout) rootView, imageView, relativeLayout, group, recyclerView, viewFindChildViewById, textView, viewPager2);
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
    public static x0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47023b;
    }

    @NonNull
    public static x0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_discovery_paiwei, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
