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
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MainLabelHeaderView;
import com.join.mgps.customview.SlidingTabLayout6;
import ru.noties.scrollable.ScrollableLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class w2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f46565b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f46566c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f46567d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f46568e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f46569f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f46570g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f46571h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final LinearLayout f46572i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46573j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final MainLabelHeaderView f46574k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46575l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46576m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f46577n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final ScrollableLayout f46578o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final SlidingTabLayout6 f46579p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f46580q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f46581r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f46582s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final TextView f46583t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @NonNull
    public final ViewPager f46584u;

    private w2(@NonNull RelativeLayout rootView, @NonNull ImageView backImage, @NonNull TextView btnFocus, @NonNull Button btnSendPosts, @NonNull SimpleDraweeView ivLabelAdministratorAvatar, @NonNull ImageView ivOrder, @NonNull View line, @NonNull LinearLayout llLabelProperty, @NonNull RelativeLayout llMultiTypePosts, @NonNull MainLabelHeaderView mScrollableHeader, @NonNull RelativeLayout rlMain, @NonNull RelativeLayout rlOrderBy, @NonNull RelativeLayout rlTitle, @NonNull ScrollableLayout scrollableLayout, @NonNull SlidingTabLayout6 tabsLayout, @NonNull TextView tvAlreadyJoin, @NonNull TextView tvLabelAdministratorNickname, @NonNull TextView tvLabelNameHead, @NonNull TextView tvPostsCounts, @NonNull ViewPager viewPager) {
        this.f46565b = rootView;
        this.f46566c = backImage;
        this.f46567d = btnFocus;
        this.f46568e = btnSendPosts;
        this.f46569f = ivLabelAdministratorAvatar;
        this.f46570g = ivOrder;
        this.f46571h = line;
        this.f46572i = llLabelProperty;
        this.f46573j = llMultiTypePosts;
        this.f46574k = mScrollableHeader;
        this.f46575l = rlMain;
        this.f46576m = rlOrderBy;
        this.f46577n = rlTitle;
        this.f46578o = scrollableLayout;
        this.f46579p = tabsLayout;
        this.f46580q = tvAlreadyJoin;
        this.f46581r = tvLabelAdministratorNickname;
        this.f46582s = tvLabelNameHead;
        this.f46583t = tvPostsCounts;
        this.f46584u = viewPager;
    }

    @NonNull
    public static w2 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.btnFocus;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.btnFocus);
            if (textView != null) {
                i10 = R.id.btnSendPosts;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnSendPosts);
                if (button != null) {
                    i10 = R.id.iv_label_administrator_avatar;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.iv_label_administrator_avatar);
                    if (simpleDraweeView != null) {
                        i10 = R.id.iv_order;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_order);
                        if (imageView2 != null) {
                            i10 = R.id.line;
                            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.line);
                            if (viewFindChildViewById != null) {
                                i10 = R.id.ll_label_property;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_label_property);
                                if (linearLayout != null) {
                                    i10 = R.id.ll_multi_type_posts;
                                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.ll_multi_type_posts);
                                    if (relativeLayout != null) {
                                        i10 = R.id.mScrollableHeader;
                                        MainLabelHeaderView mainLabelHeaderView = (MainLabelHeaderView) ViewBindings.findChildViewById(rootView, R.id.mScrollableHeader);
                                        if (mainLabelHeaderView != null) {
                                            i10 = R.id.rl_main;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_main);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.rlOrderBy;
                                                RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rlOrderBy);
                                                if (relativeLayout3 != null) {
                                                    i10 = R.id.rl_title;
                                                    RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_title);
                                                    if (relativeLayout4 != null) {
                                                        i10 = R.id.scrollableLayout;
                                                        ScrollableLayout scrollableLayout = (ScrollableLayout) ViewBindings.findChildViewById(rootView, R.id.scrollableLayout);
                                                        if (scrollableLayout != null) {
                                                            i10 = R.id.tabsLayout;
                                                            SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(rootView, R.id.tabsLayout);
                                                            if (slidingTabLayout6 != null) {
                                                                i10 = R.id.tv_alreadyJoin;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_alreadyJoin);
                                                                if (textView2 != null) {
                                                                    i10 = R.id.tv_label_administrator_nickname;
                                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_administrator_nickname);
                                                                    if (textView3 != null) {
                                                                        i10 = R.id.tv_label_name_head;
                                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_label_name_head);
                                                                        if (textView4 != null) {
                                                                            i10 = R.id.tv_posts_counts;
                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_posts_counts);
                                                                            if (textView5 != null) {
                                                                                i10 = R.id.viewPager;
                                                                                ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(rootView, R.id.viewPager);
                                                                                if (viewPager != null) {
                                                                                    return new w2((RelativeLayout) rootView, imageView, textView, button, simpleDraweeView, imageView2, viewFindChildViewById, linearLayout, relativeLayout, mainLabelHeaderView, relativeLayout2, relativeLayout3, relativeLayout4, scrollableLayout, slidingTabLayout6, textView2, textView3, textView4, textView5, viewPager);
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

    @NonNull
    public static w2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f46565b;
    }

    @NonNull
    public static w2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_main_label, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
