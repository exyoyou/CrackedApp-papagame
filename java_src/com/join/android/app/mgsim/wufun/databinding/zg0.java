package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.donkingliang.consecutivescroller.ConsecutiveScrollerLayout;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CustomLoadingView;
import com.join.mgps.customview.ForumStickView;
import com.join.mgps.customview.KeyboardListenLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class zg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final KeyboardListenLayout f48221b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final aj0 f48222c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f48223d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConsecutiveScrollerLayout f48224e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ForumStickView f48225f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final tv f48226g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final CustomLoadingView f48227h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final XQuickRecyclerView f48228i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RecyclerView f48229j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final FrameLayout f48230k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final cx0 f48231l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final wx0 f48232m;

    private zg0(@NonNull KeyboardListenLayout rootView, @NonNull aj0 actionbarLayout, @NonNull View bottom, @NonNull ConsecutiveScrollerLayout cslView, @NonNull ForumStickView fsvStick, @NonNull tv layoutChatCellContainer, @NonNull CustomLoadingView loadingView, @NonNull XQuickRecyclerView rvCommentList, @NonNull RecyclerView rvHead, @NonNull FrameLayout videoContainer, @NonNull cx0 videoLayout, @NonNull wx0 viewEmpty) {
        this.f48221b = rootView;
        this.f48222c = actionbarLayout;
        this.f48223d = bottom;
        this.f48224e = cslView;
        this.f48225f = fsvStick;
        this.f48226g = layoutChatCellContainer;
        this.f48227h = loadingView;
        this.f48228i = rvCommentList;
        this.f48229j = rvHead;
        this.f48230k = videoContainer;
        this.f48231l = videoLayout;
        this.f48232m = viewEmpty;
    }

    @NonNull
    public static zg0 bind(@NonNull View rootView) {
        int i10 = R.id.actionbarLayout;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.actionbarLayout);
        if (viewFindChildViewById != null) {
            aj0 aj0VarBind = aj0.bind(viewFindChildViewById);
            i10 = R.id.bottom;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.bottom);
            if (viewFindChildViewById2 != null) {
                i10 = R.id.csl_view;
                ConsecutiveScrollerLayout consecutiveScrollerLayout = (ConsecutiveScrollerLayout) ViewBindings.findChildViewById(rootView, R.id.csl_view);
                if (consecutiveScrollerLayout != null) {
                    i10 = R.id.fsv_stick;
                    ForumStickView forumStickView = (ForumStickView) ViewBindings.findChildViewById(rootView, R.id.fsv_stick);
                    if (forumStickView != null) {
                        i10 = R.id.layout_chat_cell_container;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.layout_chat_cell_container);
                        if (viewFindChildViewById3 != null) {
                            tv tvVarBind = tv.bind(viewFindChildViewById3);
                            i10 = R.id.loadingView;
                            CustomLoadingView customLoadingView = (CustomLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                            if (customLoadingView != null) {
                                i10 = R.id.rv_comment_list;
                                XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_comment_list);
                                if (xQuickRecyclerView != null) {
                                    i10 = R.id.rv_head;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_head);
                                    if (recyclerView != null) {
                                        i10 = R.id.videoContainer;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.videoContainer);
                                        if (frameLayout != null) {
                                            i10 = R.id.videoLayout;
                                            View viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, R.id.videoLayout);
                                            if (viewFindChildViewById4 != null) {
                                                cx0 cx0VarBind = cx0.bind(viewFindChildViewById4);
                                                i10 = R.id.view_empty;
                                                View viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, R.id.view_empty);
                                                if (viewFindChildViewById5 != null) {
                                                    return new zg0((KeyboardListenLayout) rootView, aj0VarBind, viewFindChildViewById2, consecutiveScrollerLayout, forumStickView, tvVarBind, customLoadingView, xQuickRecyclerView, recyclerView, frameLayout, cx0VarBind, wx0.bind(viewFindChildViewById5));
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
    public static zg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public KeyboardListenLayout getRoot() {
        return this.f48221b;
    }

    @NonNull
    public static zg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_post_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
