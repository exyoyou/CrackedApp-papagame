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

/* JADX INFO: loaded from: classes4.dex */
public final class yr implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47897d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47898e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final View f47899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f47900g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47901h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47903j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47904k;

    private yr(@NonNull LinearLayout rootView, @NonNull LinearLayout backLayout, @NonNull ImageView icon, @NonNull ImageView imageView5, @NonNull View layoutTop, @NonNull View lineH, @NonNull LinearLayout lookOther, @NonNull TextView moreText, @NonNull TextView textView9, @NonNull TextView titleText) {
        this.f47895b = rootView;
        this.f47896c = backLayout;
        this.f47897d = icon;
        this.f47898e = imageView5;
        this.f47899f = layoutTop;
        this.f47900g = lineH;
        this.f47901h = lookOther;
        this.f47902i = moreText;
        this.f47903j = textView9;
        this.f47904k = titleText;
    }

    @NonNull
    public static yr bind(@NonNull View rootView) {
        int i10 = R.id.backLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.backLayout);
        if (linearLayout != null) {
            i10 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
            if (imageView != null) {
                i10 = R.id.imageView5;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                if (imageView2 != null) {
                    i10 = R.id.layoutTop;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
                    if (viewFindChildViewById != null) {
                        i10 = R.id.line_h;
                        View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.line_h);
                        if (viewFindChildViewById2 != null) {
                            i10 = R.id.look_other;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.look_other);
                            if (linearLayout2 != null) {
                                i10 = R.id.moreText;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreText);
                                if (textView != null) {
                                    i10 = R.id.textView9;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView9);
                                    if (textView2 != null) {
                                        i10 = R.id.titleText;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                                        if (textView3 != null) {
                                            return new yr((LinearLayout) rootView, linearLayout, imageView, imageView2, viewFindChildViewById, viewFindChildViewById2, linearLayout2, textView, textView2, textView3);
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
    public static yr inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47895b;
    }

    @NonNull
    public static yr inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.gamedetail_item_title_v1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
