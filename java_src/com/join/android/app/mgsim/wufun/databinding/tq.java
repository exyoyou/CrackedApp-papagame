package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ExpandLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class tq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45385c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ExpandLayout f45386d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45387e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f45388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f45389g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45390h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45391i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f45392j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f45393k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f45394l;

    private tq(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull ExpandLayout elView, @NonNull ImageView imageView5, @NonNull View layoutTop, @NonNull View lineH, @NonNull LinearLayout llContainer, @NonNull LinearLayout lookOther, @NonNull TextView moreText, @NonNull TextView titleText, @NonNull TextView tvView) {
        this.f45384b = rootView;
        this.f45385c = backLayout;
        this.f45386d = elView;
        this.f45387e = imageView5;
        this.f45388f = layoutTop;
        this.f45389g = lineH;
        this.f45390h = llContainer;
        this.f45391i = lookOther;
        this.f45392j = moreText;
        this.f45393k = titleText;
        this.f45394l = tvView;
    }

    @NonNull
    public static tq bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.el_view;
            ExpandLayout expandLayout = (ExpandLayout) ViewBindings.findChildViewById(rootView, R.id.el_view);
            if (expandLayout != null) {
                i10 = R.id.imageView5;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                if (imageView != null) {
                    i10 = R.id.layoutTop;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.line_h;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line_h);
                        if (viewFindChildViewById2 != null) {
                            i10 = R.id.ll_container;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_container);
                            if (linearLayout2 != null) {
                                i10 = R.id.look_other;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                                if (linearLayout3 != null) {
                                    i10 = R.id.moreText;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                    if (textView != null) {
                                        i10 = R.id.titleText;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                        if (textView2 != null) {
                                            i10 = R.id.tv_view;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_view);
                                            if (textView3 != null) {
                                                return new tq((LinearLayout) rootView, linearLayout, expandLayout, imageView, viewFindChildViewById, viewFindChildViewById2, linearLayout2, linearLayout3, textView, textView2, textView3);
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
    public static tq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45384b;
    }

    @NonNull
    public static tq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_edit_recommend, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
