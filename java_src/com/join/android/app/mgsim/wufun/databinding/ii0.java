package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.ForumLoadingView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView;

/* JADX INFO: loaded from: classes4.dex */
public final class ii0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final KeyboardListenLayout f39834b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final uv f39835c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final bj0 f39836d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ForumLoadingView f39837e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XListView f39838f;

    private ii0(@NonNull KeyboardListenLayout rootView, @NonNull uv layoutChatCellContainer, @NonNull bj0 layoutForumPostsTitle, @NonNull ForumLoadingView loadingView, @NonNull XListView mgForumProfileMessageList) {
        this.f39834b = rootView;
        this.f39835c = layoutChatCellContainer;
        this.f39836d = layoutForumPostsTitle;
        this.f39837e = loadingView;
        this.f39838f = mgForumProfileMessageList;
    }

    @NonNull
    public static ii0 bind(@NonNull View rootView) {
        int i10 = R.id.layout_chat_cell_container;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layout_chat_cell_container);
        if (viewFindChildViewById != null) {
            uv uvVarBind = uv.bind(viewFindChildViewById);
            i10 = R.id.layout_forum_posts_title;
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.layout_forum_posts_title);
            if (viewFindChildViewById2 != null) {
                bj0 bj0VarBind = bj0.bind(viewFindChildViewById2);
                i10 = R.id.loadingView;
                ForumLoadingView forumLoadingView = (ForumLoadingView) ViewBindings.findChildViewById(rootView, R.id.loadingView);
                if (forumLoadingView != null) {
                    i10 = R.id.mg_forum_profile_message_list;
                    XListView xListView = (XListView) ViewBindings.findChildViewById(rootView, R.id.mg_forum_profile_message_list);
                    if (xListView != null) {
                        return new ii0((KeyboardListenLayout) rootView, uvVarBind, bj0VarBind, forumLoadingView, xListView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ii0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public KeyboardListenLayout getRoot() {
        return this.f39834b;
    }

    @NonNull
    public static ii0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_profile_message_reply_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
