package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
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
public final class bj0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f36407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f36408c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f36409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f36410e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f36411f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f36412g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f36413h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36414i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36415j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f36416k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36417l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36418m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f36419n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f36420o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f36421p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final Button f36422q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f36423r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final ImageView f36424s;

    private bj0(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull TextView checkInFlag, @NonNull TextView checkInImage, @NonNull Button forumPost, @NonNull TextView forumTitleCenter, @NonNull TextView layoutTitle, @NonNull TextView layoutTitleRight, @NonNull RelativeLayout myProfileMessage, @NonNull TextView postFuncHost, @NonNull LinearLayout postFuncMore, @NonNull LinearLayout postFunction, @NonNull TextView profileMessageFlag, @NonNull TextView profileMessageFlagNoNum, @NonNull ImageView profileMessageImage, @NonNull Button release, @NonNull RelativeLayout search, @NonNull ImageView sreachImage) {
        this.f36407b = rootView;
        this.f36408c = backImage;
        this.f36409d = checkInFlag;
        this.f36410e = checkInImage;
        this.f36411f = forumPost;
        this.f36412g = forumTitleCenter;
        this.f36413h = layoutTitle;
        this.f36414i = layoutTitleRight;
        this.f36415j = myProfileMessage;
        this.f36416k = postFuncHost;
        this.f36417l = postFuncMore;
        this.f36418m = postFunction;
        this.f36419n = profileMessageFlag;
        this.f36420o = profileMessageFlagNoNum;
        this.f36421p = profileMessageImage;
        this.f36422q = release;
        this.f36423r = search;
        this.f36424s = sreachImage;
    }

    @NonNull
    public static bj0 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.checkInFlag;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.checkInFlag);
            if (textView != null) {
                i10 = R.id.checkInImage;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.checkInImage);
                if (textView2 != null) {
                    i10 = R.id.forum_post;
                    Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.forum_post);
                    if (button != null) {
                        i10 = R.id.forum_title_center;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_title_center);
                        if (textView3 != null) {
                            i10 = R.id.layout_title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.layout_title);
                            if (textView4 != null) {
                                i10 = R.id.layout_title_right;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.layout_title_right);
                                if (textView5 != null) {
                                    i10 = R.id.myProfileMessage;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.myProfileMessage);
                                    if (relativeLayout != null) {
                                        i10 = R.id.postFuncHost;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.postFuncHost);
                                        if (textView6 != null) {
                                            i10 = R.id.postFuncMore;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.postFuncMore);
                                            if (linearLayout != null) {
                                                i10 = R.id.postFunction;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.postFunction);
                                                if (linearLayout2 != null) {
                                                    i10 = R.id.profileMessageFlag;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.profileMessageFlag);
                                                    if (textView7 != null) {
                                                        i10 = R.id.profileMessageFlagNoNum;
                                                        TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.profileMessageFlagNoNum);
                                                        if (textView8 != null) {
                                                            i10 = R.id.profileMessageImage;
                                                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.profileMessageImage);
                                                            if (imageView2 != null) {
                                                                i10 = R.id.release;
                                                                Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.release);
                                                                if (button2 != null) {
                                                                    i10 = R.id.search;
                                                                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.search);
                                                                    if (relativeLayout2 != null) {
                                                                        i10 = R.id.sreach_image;
                                                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.sreach_image);
                                                                        if (imageView3 != null) {
                                                                            return new bj0((RelativeLayout) rootView, imageView, textView, textView2, button, textView3, textView4, textView5, relativeLayout, textView6, linearLayout, linearLayout2, textView7, textView8, imageView2, button2, relativeLayout2, imageView3);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static bj0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f36407b;
    }

    @NonNull
    public static bj0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_title_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
