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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class zb0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f48155b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f48156c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f48157d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f48158e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48159f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f48160g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48161h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f48162i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f48163j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f48164k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RecyclerView f48165l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f48166m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f48167n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f48168o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f48169p;

    private zb0(@NonNull ConstraintLayout rootView, @NonNull ImageView checkboxAgreement, @NonNull ImageView checkboxNoMore, @NonNull ImageView close, @NonNull ConstraintLayout constraintLayout, @NonNull TextView download, @NonNull LinearLayout llAgreement, @NonNull LinearLayout llNoMore, @NonNull ConstraintLayout outside, @NonNull TextView protocol, @NonNull RecyclerView recyclerView, @NonNull TextView subTitle, @NonNull TextView textView77, @NonNull TextView title, @NonNull TextView userProtocolTxt) {
        this.f48155b = rootView;
        this.f48156c = checkboxAgreement;
        this.f48157d = checkboxNoMore;
        this.f48158e = close;
        this.f48159f = constraintLayout;
        this.f48160g = download;
        this.f48161h = llAgreement;
        this.f48162i = llNoMore;
        this.f48163j = outside;
        this.f48164k = protocol;
        this.f48165l = recyclerView;
        this.f48166m = subTitle;
        this.f48167n = textView77;
        this.f48168o = title;
        this.f48169p = userProtocolTxt;
    }

    @NonNull
    public static zb0 bind(@NonNull View rootView) {
        int i10 = R.id.checkboxAgreement;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkboxAgreement);
        if (imageView != null) {
            i10 = R.id.checkboxNoMore;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.checkboxNoMore);
            if (imageView2 != null) {
                i10 = R.id.close;
                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
                if (imageView3 != null) {
                    i10 = R.id.constraintLayout;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout);
                    if (constraintLayout != null) {
                        i10 = R.id.download;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.download);
                        if (textView != null) {
                            i10 = R.id.llAgreement;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llAgreement);
                            if (linearLayout != null) {
                                i10 = R.id.llNoMore;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llNoMore);
                                if (linearLayout2 != null) {
                                    i10 = R.id.outside;
                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.outside);
                                    if (constraintLayout2 != null) {
                                        i10 = R.id.protocol;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.protocol);
                                        if (textView2 != null) {
                                            i10 = R.id.recyclerView;
                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                                            if (recyclerView != null) {
                                                i10 = R.id.subTitle;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.subTitle);
                                                if (textView3 != null) {
                                                    i10 = R.id.textView77;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView77);
                                                    if (textView4 != null) {
                                                        i10 = R.id.title;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                        if (textView5 != null) {
                                                            i10 = R.id.userProtocolTxt;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.userProtocolTxt);
                                                            if (textView6 != null) {
                                                                return new zb0((ConstraintLayout) rootView, imageView, imageView2, imageView3, constraintLayout, textView, linearLayout, linearLayout2, constraintLayout2, textView2, recyclerView, textView3, textView4, textView5, textView6);
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
    public static zb0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f48155b;
    }

    @NonNull
    public static zb0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.layout_sheet_game_resource, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
