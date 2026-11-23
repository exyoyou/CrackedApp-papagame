package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class hn implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f39407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f39411f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39412g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f39413h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39414i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f39415j;

    private hn(@NonNull ConstraintLayout rootView, @NonNull TextView count, @NonNull SimpleDraweeView icon1, @NonNull SimpleDraweeView icon2, @NonNull SimpleDraweeView icon3, @NonNull ImageView imageView60, @NonNull View line, @NonNull TextView textView87, @NonNull TextView textView88) {
        this.f39407b = rootView;
        this.f39408c = count;
        this.f39409d = icon1;
        this.f39410e = icon2;
        this.f39411f = icon3;
        this.f39412g = imageView60;
        this.f39413h = line;
        this.f39414i = textView87;
        this.f39415j = textView88;
    }

    @NonNull
    public static hn bind(@NonNull View rootView) {
        int i10 = R.id.count;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.count);
        if (textView != null) {
            i10 = R.id.icon1;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon1);
            if (simpleDraweeView != null) {
                i10 = R.id.icon2;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon2);
                if (simpleDraweeView2 != null) {
                    i10 = R.id.icon3;
                    SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.icon3);
                    if (simpleDraweeView3 != null) {
                        i10 = R.id.imageView60;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView60);
                        if (imageView != null) {
                            i10 = R.id.line;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.textView87;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView87);
                                if (textView2 != null) {
                                    i10 = R.id.textView88;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView88);
                                    if (textView3 != null) {
                                        return new hn((ConstraintLayout) rootView, textView, simpleDraweeView, simpleDraweeView2, simpleDraweeView3, imageView, viewFindChildViewById, textView2, textView3);
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
    public static hn inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f39407b;
    }

    @NonNull
    public static hn inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_my_game_item_guess_like, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
