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
public final class lh0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f41312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f41314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f41315f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41316g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41317h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f41318i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f41319j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final ImageView f41320k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f41321l;

    private lh0(@NonNull LinearLayout rootView, @NonNull ImageView flagBestAnswer, @NonNull RelativeLayout forumExtFunc, @NonNull TextView forumPostAddTime, @NonNull TextView groupName, @NonNull LinearLayout groupParent, @NonNull LinearLayout layoutPostsTop, @NonNull ImageView locIcon, @NonNull ImageView moreFunc, @NonNull ImageView replyFunc, @NonNull TextView topMoneyTx) {
        this.f41311b = rootView;
        this.f41312c = flagBestAnswer;
        this.f41313d = forumExtFunc;
        this.f41314e = forumPostAddTime;
        this.f41315f = groupName;
        this.f41316g = groupParent;
        this.f41317h = layoutPostsTop;
        this.f41318i = locIcon;
        this.f41319j = moreFunc;
        this.f41320k = replyFunc;
        this.f41321l = topMoneyTx;
    }

    @NonNull
    public static lh0 bind(@NonNull View rootView) {
        int i10 = R.id.flagBestAnswer;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.flagBestAnswer);
        if (imageView != null) {
            i10 = R.id.forumExtFunc;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forumExtFunc);
            if (relativeLayout != null) {
                i10 = R.id.forum_post_add_time;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_post_add_time);
                if (textView != null) {
                    i10 = R.id.groupName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.groupName);
                    if (textView2 != null) {
                        i10 = R.id.groupParent;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.groupParent);
                        if (linearLayout != null) {
                            i10 = R.id.layout_posts_top;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.layout_posts_top);
                            if (linearLayout2 != null) {
                                i10 = R.id.locIcon;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.locIcon);
                                if (imageView2 != null) {
                                    i10 = R.id.moreFunc;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFunc);
                                    if (imageView3 != null) {
                                        i10 = R.id.replyFunc;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.replyFunc);
                                        if (imageView4 != null) {
                                            i10 = R.id.topMoneyTx;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.topMoneyTx);
                                            if (textView3 != null) {
                                                return new lh0((LinearLayout) rootView, imageView, relativeLayout, textView, textView2, linearLayout, linearLayout2, imageView2, imageView3, imageView4, textView3);
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
    public static lh0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41311b;
    }

    @NonNull
    public static lh0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity_item_post_header1, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
