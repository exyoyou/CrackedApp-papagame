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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f47211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f47212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f47213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f47215g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47216h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f47217i;

    private xg0(@NonNull LinearLayout rootView, @NonNull ImageView arrow, @NonNull View divider, @NonNull View divider1, @NonNull ImageView icon, @NonNull RelativeLayout llComment, @NonNull TextView state, @NonNull TextView title) {
        this.f47210b = rootView;
        this.f47211c = arrow;
        this.f47212d = divider;
        this.f47213e = divider1;
        this.f47214f = icon;
        this.f47215g = llComment;
        this.f47216h = state;
        this.f47217i = title;
    }

    @NonNull
    public static xg0 bind(@NonNull View rootView) {
        int i10 = R.id.arrow;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.arrow);
        if (imageView != null) {
            i10 = R.id.divider;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
            if (viewFindChildViewById != null) {
                i10 = R.id.divider1;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.divider1);
                if (viewFindChildViewById2 != null) {
                    i10 = R.id.icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icon);
                    if (imageView2 != null) {
                        i10 = R.id.llComment;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.llComment);
                        if (relativeLayout != null) {
                            i10 = R.id.state;
                            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.state);
                            if (textView != null) {
                                i10 = R.id.title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                if (textView2 != null) {
                                    return new xg0((LinearLayout) rootView, imageView, viewFindChildViewById, viewFindChildViewById2, imageView2, relativeLayout, textView, textView2);
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
    public static xg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47210b;
    }

    @NonNull
    public static xg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_my_item_ex_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
