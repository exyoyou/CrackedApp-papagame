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
public final class ij0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39843c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f39844d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f39845e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39846f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39847g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39848h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39849i;

    private ij0(@NonNull LinearLayout rootView, @NonNull LinearLayout forumMore, @NonNull TextView forumMoreTitle, @NonNull View forumPostDivider, @NonNull LinearLayout forumsHotItemContainer, @NonNull ImageView imageViewMore, @NonNull LinearLayout layoutHotTitle, @NonNull TextView sectionTitle) {
        this.f39842b = rootView;
        this.f39843c = forumMore;
        this.f39844d = forumMoreTitle;
        this.f39845e = forumPostDivider;
        this.f39846f = forumsHotItemContainer;
        this.f39847g = imageViewMore;
        this.f39848h = layoutHotTitle;
        this.f39849i = sectionTitle;
    }

    @NonNull
    public static ij0 bind(@NonNull View rootView) {
        int i10 = R.id.forumMore;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forumMore);
        if (linearLayout != null) {
            i10 = R.id.forumMoreTitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forumMoreTitle);
            if (textView != null) {
                i10 = R.id.forum_post_divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.forum_post_divider);
                if (viewFindChildViewById != null) {
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
                                    return new ij0((LinearLayout) rootView, linearLayout, textView, viewFindChildViewById, linearLayout2, imageView, linearLayout3, textView2);
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
    public static ij0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39842b;
    }

    @NonNull
    public static ij0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_welcome_item_hot_forum_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
