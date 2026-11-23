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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jf0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40210b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40211c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f40213e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40214f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40215g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f40216h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f40217i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f40218j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f40219k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final ImageView f40220l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f40221m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f40222n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40223o;

    private jf0(@NonNull LinearLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull TextView commentCount, @NonNull View divider, @NonNull LinearLayout forumNameParent, @NonNull ImageView forumPostPraiseIcon, @NonNull LinearLayout forumPostPraiseParent, @NonNull TextView forumPostView, @NonNull TextView groupName, @NonNull TextView hostName, @NonNull ImageView imageView10, @NonNull ImageView imageView9, @NonNull ImageView indicator, @NonNull TextView likeCount) {
        this.f40210b = rootView;
        this.f40211c = avatar;
        this.f40212d = commentCount;
        this.f40213e = divider;
        this.f40214f = forumNameParent;
        this.f40215g = forumPostPraiseIcon;
        this.f40216h = forumPostPraiseParent;
        this.f40217i = forumPostView;
        this.f40218j = groupName;
        this.f40219k = hostName;
        this.f40220l = imageView10;
        this.f40221m = imageView9;
        this.f40222n = indicator;
        this.f40223o = likeCount;
    }

    @NonNull
    public static jf0 bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.commentCount;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.commentCount);
            if (textView != null) {
                i10 = R.id.divider;
                View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider);
                if (viewFindChildViewById != null) {
                    i10 = R.id.forum_name_parent;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_name_parent);
                    if (linearLayout != null) {
                        i10 = R.id.forum_post_praise_icon;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_icon);
                        if (imageView != null) {
                            i10 = R.id.forum_post_praise_parent;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.forum_post_praise_parent);
                            if (linearLayout2 != null) {
                                i10 = R.id.forum_post_view;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_view);
                                if (textView2 != null) {
                                    i10 = R.id.groupName;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.groupName);
                                    if (textView3 != null) {
                                        i10 = R.id.hostName;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.hostName);
                                        if (textView4 != null) {
                                            i10 = R.id.imageView10;
                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView10);
                                            if (imageView2 != null) {
                                                i10 = R.id.imageView9;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView9);
                                                if (imageView3 != null) {
                                                    i10 = R.id.indicator;
                                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.indicator);
                                                    if (imageView4 != null) {
                                                        i10 = R.id.likeCount;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.likeCount);
                                                        if (textView5 != null) {
                                                            return new jf0((LinearLayout) rootView, simpleDraweeView, textView, viewFindChildViewById, linearLayout, imageView, linearLayout2, textView2, textView3, textView4, imageView2, imageView3, imageView4, textView5);
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
    public static jf0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40210b;
    }

    @NonNull
    public static jf0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_f_item_post_footer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
