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
public final class mj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41924c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f41925d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f41927f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41928g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f41929h;

    private mj0(@NonNull RelativeLayout rootView, @NonNull LinearLayout forumMore, @NonNull TextView forumMoreTitle, @NonNull LinearLayout forumsHotItemContainer, @NonNull ImageView imageViewMore, @NonNull LinearLayout layoutHotTitle, @NonNull TextView sectionTitle) {
        this.f41923b = rootView;
        this.f41924c = forumMore;
        this.f41925d = forumMoreTitle;
        this.f41926e = forumsHotItemContainer;
        this.f41927f = imageViewMore;
        this.f41928g = layoutHotTitle;
        this.f41929h = sectionTitle;
    }

    @NonNull
    public static mj0 bind(@NonNull View rootView) {
        int i10 = R.id.forumMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forumMore);
        if (linearLayout != null) {
            i10 = R.id.forumMoreTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forumMoreTitle);
            if (textView != null) {
                i10 = R.id.forums_hot_item_container;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forums_hot_item_container);
                if (linearLayout2 != null) {
                    i10 = R.id.imageViewMore;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageViewMore);
                    if (imageView != null) {
                        i10 = R.id.layout_hot_title;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_hot_title);
                        if (linearLayout3 != null) {
                            i10 = R.id.sectionTitle;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sectionTitle);
                            if (textView2 != null) {
                                return new mj0((RelativeLayout) rootView, linearLayout, textView, linearLayout2, imageView, linearLayout3, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static mj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41923b;
    }

    @NonNull
    public static mj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_my_forum_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
