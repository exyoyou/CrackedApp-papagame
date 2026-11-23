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
public final class ih0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f39816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39817d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f39818e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f39819f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f39820g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f39821h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f39822i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f39823j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f39824k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final View f39825l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f39826m;

    private ih0(@NonNull LinearLayout rootView, @NonNull TextView forumName, @NonNull LinearLayout forumNameParent, @NonNull TextView forumPostCommit, @NonNull TextView forumPostPraise, @NonNull ImageView forumPostPraiseIcon, @NonNull LinearLayout forumPostPraiseParent, @NonNull TextView forumPostView, @NonNull ImageView imageView10, @NonNull ImageView imageView9, @NonNull View postFooterDivider, @NonNull TextView textView19) {
        this.f39815b = rootView;
        this.f39816c = forumName;
        this.f39817d = forumNameParent;
        this.f39818e = forumPostCommit;
        this.f39819f = forumPostPraise;
        this.f39820g = forumPostPraiseIcon;
        this.f39821h = forumPostPraiseParent;
        this.f39822i = forumPostView;
        this.f39823j = imageView10;
        this.f39824k = imageView9;
        this.f39825l = postFooterDivider;
        this.f39826m = textView19;
    }

    @NonNull
    public static ih0 bind(@NonNull View rootView) {
        int i10 = R.id.forum_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_name);
        if (textView != null) {
            i10 = R.id.forum_name_parent;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_name_parent);
            if (linearLayout != null) {
                i10 = R.id.forum_post_commit;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_commit);
                if (textView2 != null) {
                    i10 = R.id.forum_post_praise;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise);
                    if (textView3 != null) {
                        i10 = R.id.forum_post_praise_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_icon);
                        if (imageView != null) {
                            i10 = R.id.forum_post_praise_parent;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_parent);
                            if (linearLayout2 != null) {
                                i10 = R.id.forum_post_view;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_view);
                                if (textView4 != null) {
                                    i10 = R.id.imageView10;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView10);
                                    if (imageView2 != null) {
                                        i10 = R.id.imageView9;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView9);
                                        if (imageView3 != null) {
                                            i10 = R.id.post_footer_divider;
                                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.post_footer_divider);
                                            if (viewFindChildViewById != null) {
                                                i10 = R.id.textView19;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView19);
                                                if (textView5 != null) {
                                                    return new ih0((LinearLayout) rootView, textView, linearLayout, textView2, textView3, imageView, linearLayout2, textView4, imageView2, imageView3, viewFindChildViewById, textView5);
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
    public static ih0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39815b;
    }

    @NonNull
    public static ih0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
