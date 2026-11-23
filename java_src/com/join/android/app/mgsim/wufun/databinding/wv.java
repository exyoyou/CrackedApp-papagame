package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class wv implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final KeyboardListenLayout f46982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f46983c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final bj0 f46984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final PtrClassicFrameLayout f46985e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final KeyboardListenLayout f46986f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final XListView2 f46987g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f46988h;

    private wv(@NonNull KeyboardListenLayout rootView, @NonNull FrameLayout layoutForumPostsMain, @NonNull bj0 layoutForumPostsTitle, @NonNull PtrClassicFrameLayout mPtrFrame, @NonNull KeyboardListenLayout main, @NonNull XListView2 mgForumPostCommentList, @NonNull TextView noMessage) {
        this.f46982b = rootView;
        this.f46983c = layoutForumPostsMain;
        this.f46984d = layoutForumPostsTitle;
        this.f46985e = mPtrFrame;
        this.f46986f = main;
        this.f46987g = mgForumPostCommentList;
        this.f46988h = noMessage;
    }

    @NonNull
    public static wv bind(@NonNull View rootView) {
        int i10 = R.id.layout_forum_posts_main;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.layout_forum_posts_main);
        if (frameLayout != null) {
            i10 = R.id.layout_forum_posts_title;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layout_forum_posts_title);
            if (viewFindChildViewById != null) {
                bj0 bj0VarBind = bj0.bind(viewFindChildViewById);
                i10 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(rootView, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    KeyboardListenLayout keyboardListenLayout = (KeyboardListenLayout) rootView;
                    i10 = R.id.mg_forum_post_comment_list;
                    XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.mg_forum_post_comment_list);
                    if (xListView2 != null) {
                        i10 = R.id.noMessage;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.noMessage);
                        if (textView != null) {
                            return new wv(keyboardListenLayout, frameLayout, bj0VarBind, ptrClassicFrameLayout, keyboardListenLayout, xListView2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static wv inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public KeyboardListenLayout getRoot() {
        return this.f46982b;
    }

    @NonNull
    public static wv inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.information_comment_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
