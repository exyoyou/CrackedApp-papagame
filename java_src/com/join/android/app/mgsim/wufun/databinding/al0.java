package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MyFlowLayout;
import com.join.mgps.customview.ViewPagerWithADs;
import com.join.mgps.customview.WrapContentListView;

/* JADX INFO: loaded from: classes4.dex */
public final class al0 implements ViewBinding {

    @NonNull
    public final WrapContentListView A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f35884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ViewPagerWithADs f35885c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MyFlowLayout f35886d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35887e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f35888f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f35889g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f35890h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f35891i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35892j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35893k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35894l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35895m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f35896n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f35897o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35898p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35899q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final LinearLayout f35900r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35901s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f35902t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final TextView f35903u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @NonNull
    public final TextView f35904v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @NonNull
    public final TextView f35905w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NonNull
    public final TextView f35906x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NonNull
    public final TextView f35907y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NonNull
    public final TextView f35908z;

    private al0(@NonNull View rootView, @NonNull ViewPagerWithADs adViewpager, @NonNull MyFlowLayout flowLayout, @NonNull RelativeLayout forumExtFunc, @NonNull TextView forumMore, @NonNull TextView forumRecomm, @NonNull ImageView imageView5, @NonNull ImageView ivRefresh, @NonNull LinearLayout llForumMore, @NonNull LinearLayout llGroupAll, @NonNull LinearLayout llMyForum, @NonNull LinearLayout more, @NonNull ImageView moreFunc, @NonNull TextView moreTv, @NonNull RelativeLayout refreshTag, @NonNull LinearLayout rlTagFollow, @NonNull LinearLayout rlTagFollowB, @NonNull RelativeLayout rlTagTip, @NonNull RelativeLayout sectionFollow, @NonNull TextView textView, @NonNull TextView textView64, @NonNull TextView textView66, @NonNull TextView textView67, @NonNull TextView textView68, @NonNull TextView title, @NonNull WrapContentListView wrapListView) {
        this.f35884b = rootView;
        this.f35885c = adViewpager;
        this.f35886d = flowLayout;
        this.f35887e = forumExtFunc;
        this.f35888f = forumMore;
        this.f35889g = forumRecomm;
        this.f35890h = imageView5;
        this.f35891i = ivRefresh;
        this.f35892j = llForumMore;
        this.f35893k = llGroupAll;
        this.f35894l = llMyForum;
        this.f35895m = more;
        this.f35896n = moreFunc;
        this.f35897o = moreTv;
        this.f35898p = refreshTag;
        this.f35899q = rlTagFollow;
        this.f35900r = rlTagFollowB;
        this.f35901s = rlTagTip;
        this.f35902t = sectionFollow;
        this.f35903u = textView;
        this.f35904v = textView64;
        this.f35905w = textView66;
        this.f35906x = textView67;
        this.f35907y = textView68;
        this.f35908z = title;
        this.A = wrapListView;
    }

    @NonNull
    public static al0 a(@NonNull LayoutInflater inflater, @NonNull ViewGroup parent) {
        if (parent == null) {
            throw new NullPointerException("parent");
        }
        inflater.inflate(R.layout.mg_view_forum_index_header, parent);
        return bind(parent);
    }

    @NonNull
    public static al0 bind(@NonNull View rootView) {
        int i10 = R.id.ad_viewpager;
        ViewPagerWithADs viewPagerWithADs = (ViewPagerWithADs) ViewBindings.findChildViewById(rootView, R.id.ad_viewpager);
        if (viewPagerWithADs != null) {
            i10 = R.id.flowLayout;
            MyFlowLayout myFlowLayout = (MyFlowLayout) ViewBindings.findChildViewById(rootView, R.id.flowLayout);
            if (myFlowLayout != null) {
                i10 = R.id.forumExtFunc;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.forumExtFunc);
                if (relativeLayout != null) {
                    i10 = R.id.forum_more;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.forum_more);
                    if (textView != null) {
                        i10 = R.id.forumRecomm;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.forumRecomm);
                        if (textView2 != null) {
                            i10 = R.id.imageView5;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView5);
                            if (imageView != null) {
                                i10 = R.id.ivRefresh;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ivRefresh);
                                if (imageView2 != null) {
                                    i10 = R.id.llForumMore;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llForumMore);
                                    if (linearLayout != null) {
                                        i10 = R.id.llGroupAll;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llGroupAll);
                                        if (linearLayout2 != null) {
                                            i10 = R.id.llMyForum;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.llMyForum);
                                            if (linearLayout3 != null) {
                                                i10 = R.id.more;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.more);
                                                if (linearLayout4 != null) {
                                                    i10 = R.id.moreFunc;
                                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.moreFunc);
                                                    if (imageView3 != null) {
                                                        i10 = R.id.moreTv;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.moreTv);
                                                        if (textView3 != null) {
                                                            i10 = R.id.refreshTag;
                                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.refreshTag);
                                                            if (relativeLayout2 != null) {
                                                                i10 = R.id.rlTagFollow;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rlTagFollow);
                                                                if (linearLayout5 != null) {
                                                                    i10 = R.id.rlTagFollowB;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.rlTagFollowB);
                                                                    if (linearLayout6 != null) {
                                                                        i10 = R.id.rlTagTip;
                                                                        RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlTagTip);
                                                                        if (relativeLayout3 != null) {
                                                                            i10 = R.id.section_follow;
                                                                            RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.section_follow);
                                                                            if (relativeLayout4 != null) {
                                                                                i10 = R.id.textView;
                                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                                                                                if (textView4 != null) {
                                                                                    i10 = R.id.textView64;
                                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView64);
                                                                                    if (textView5 != null) {
                                                                                        i10 = R.id.textView66;
                                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView66);
                                                                                        if (textView6 != null) {
                                                                                            i10 = R.id.textView67;
                                                                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView67);
                                                                                            if (textView7 != null) {
                                                                                                i10 = R.id.textView68;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView68);
                                                                                                if (textView8 != null) {
                                                                                                    i10 = R.id.title;
                                                                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                                                                                                    if (textView9 != null) {
                                                                                                        i10 = R.id.wrapListView;
                                                                                                        WrapContentListView wrapContentListView = (WrapContentListView) ViewBindings.findChildViewById(rootView, R.id.wrapListView);
                                                                                                        if (wrapContentListView != null) {
                                                                                                            return new al0(rootView, viewPagerWithADs, myFlowLayout, relativeLayout, textView, textView2, imageView, imageView2, linearLayout, linearLayout2, linearLayout3, linearLayout4, imageView3, textView3, relativeLayout2, linearLayout5, linearLayout6, relativeLayout3, relativeLayout4, textView4, textView5, textView6, textView7, textView8, textView9, wrapContentListView);
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

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f35884b;
    }
}
