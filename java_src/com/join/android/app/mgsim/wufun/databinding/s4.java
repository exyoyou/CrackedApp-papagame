package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ScrollTextViewLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class s4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f44623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f44624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final FrameLayout f44625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f44626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f44627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f44628g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ScrollTextViewLayout f44629h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f44630i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f44631j;

    private s4(@NonNull ConstraintLayout rootView, @NonNull ImageView backImage, @NonNull FrameLayout flSearch, @NonNull RelativeLayout headview, @NonNull ImageView ivSearchIcon, @NonNull RecyclerView recyclerview, @NonNull ScrollTextViewLayout scrollTextLayout, @NonNull TextView titleTextview, @NonNull TextView tvSearch) {
        this.f44623b = rootView;
        this.f44624c = backImage;
        this.f44625d = flSearch;
        this.f44626e = headview;
        this.f44627f = ivSearchIcon;
        this.f44628g = recyclerview;
        this.f44629h = scrollTextLayout;
        this.f44630i = titleTextview;
        this.f44631j = tvSearch;
    }

    @NonNull
    public static s4 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.flSearch;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.flSearch);
            if (frameLayout != null) {
                i10 = R.id.headview;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.headview);
                if (relativeLayout != null) {
                    i10 = R.id.ivSearchIcon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivSearchIcon);
                    if (imageView2 != null) {
                        i10 = R.id.recyclerview;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerview);
                        if (recyclerView != null) {
                            i10 = R.id.scroll_text_layout;
                            ScrollTextViewLayout scrollTextViewLayout = (ScrollTextViewLayout) ViewBindings.findChildViewById(rootView, R.id.scroll_text_layout);
                            if (scrollTextViewLayout != null) {
                                i10 = R.id.title_textview;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.title_textview);
                                if (textView != null) {
                                    i10 = R.id.tvSearch;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvSearch);
                                    if (textView2 != null) {
                                        return new s4((ConstraintLayout) rootView, imageView, frameLayout, relativeLayout, imageView2, recyclerView, scrollTextViewLayout, textView, textView2);
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
    public static s4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f44623b;
    }

    @NonNull
    public static s4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_simulator_fast_entry, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
