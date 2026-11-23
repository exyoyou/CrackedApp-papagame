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
public final class ti0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45252b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45253c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f45254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f45255e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f45256f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45257g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f45258h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f45259i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f45260j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final View f45261k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f45262l;

    private ti0(@NonNull LinearLayout rootView, @NonNull LinearLayout commentParent, @NonNull TextView forumPostCommit, @NonNull TextView forumPostPraise, @NonNull ImageView forumPostPraiseIcon, @NonNull LinearLayout forumPostPraiseParent, @NonNull TextView forumPostView, @NonNull ImageView imageView10, @NonNull ImageView imageView9, @NonNull View postFooterDivider, @NonNull LinearLayout viewParent) {
        this.f45252b = rootView;
        this.f45253c = commentParent;
        this.f45254d = forumPostCommit;
        this.f45255e = forumPostPraise;
        this.f45256f = forumPostPraiseIcon;
        this.f45257g = forumPostPraiseParent;
        this.f45258h = forumPostView;
        this.f45259i = imageView10;
        this.f45260j = imageView9;
        this.f45261k = postFooterDivider;
        this.f45262l = viewParent;
    }

    @NonNull
    public static ti0 bind(@NonNull View rootView) {
        int i10 = R.id.commentParent;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.commentParent);
        if (linearLayout != null) {
            i10 = R.id.forum_post_commit;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_commit);
            if (textView != null) {
                i10 = R.id.forum_post_praise;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise);
                if (textView2 != null) {
                    i10 = R.id.forum_post_praise_icon;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_icon);
                    if (imageView != null) {
                        i10 = R.id.forum_post_praise_parent;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_parent);
                        if (linearLayout2 != null) {
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
                                            i10 = R.id.viewParent;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.viewParent);
                                            if (linearLayout3 != null) {
                                                return new ti0((LinearLayout) rootView, linearLayout, textView, textView2, imageView, linearLayout2, textView3, imageView2, imageView3, viewFindChildViewById, linearLayout3);
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
    public static ti0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45252b;
    }

    @NonNull
    public static ti0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_search_item_post_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
