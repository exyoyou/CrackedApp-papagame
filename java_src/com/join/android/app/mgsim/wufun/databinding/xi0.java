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
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xi0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f47252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f47253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f47255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f47258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f47259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final View f47260j;

    private xi0(@NonNull ConstraintLayout rootView, @NonNull ConstraintLayout clRoot, @NonNull TextView forumPostCommit, @NonNull TextView forumPostPraise, @NonNull ImageView forumPostPraiseIcon, @NonNull TextView forumPostView, @NonNull ImageView imageView10, @NonNull ImageView imageView9, @NonNull View postFooterDivider) {
        this.f47252b = rootView;
        this.f47253c = clRoot;
        this.f47254d = forumPostCommit;
        this.f47255e = forumPostPraise;
        this.f47256f = forumPostPraiseIcon;
        this.f47257g = forumPostView;
        this.f47258h = imageView10;
        this.f47259i = imageView9;
        this.f47260j = postFooterDivider;
    }

    @NonNull
    public static xi0 bind(@NonNull View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i10 = R.id.forum_post_commit;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_commit);
        if (textView != null) {
            i10 = R.id.forum_post_praise;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise);
            if (textView2 != null) {
                i10 = R.id.forum_post_praise_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_icon);
                if (imageView != null) {
                    i10 = R.id.forum_post_view;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_view);
                    if (textView3 != null) {
                        i10 = R.id.imageView10;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView10);
                        if (imageView2 != null) {
                            i10 = R.id.imageView9;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView9);
                            if (imageView3 != null) {
                                i10 = R.id.post_footer_divider;
                                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.post_footer_divider);
                                if (viewFindChildViewById != null) {
                                    return new xi0(constraintLayout, constraintLayout, textView, textView2, imageView, textView3, imageView2, imageView3, viewFindChildViewById);
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
    public static xi0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f47252b;
    }

    @NonNull
    public static xi0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_list_item_post_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
