package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class yg0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f47717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f47718c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f47719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f47720e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f47721f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final View f47722g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final View f47723h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final View f47724i;

    private yg0(@NonNull RelativeLayout rootView, @NonNull Button btnForumComment, @NonNull Button btnForumCommentCopy, @NonNull Button btnForumCommentDelete, @NonNull Button btnForumReport, @NonNull View divider2, @NonNull View dividerForumComment1, @NonNull View dividerForumComment2) {
        this.f47717b = rootView;
        this.f47718c = btnForumComment;
        this.f47719d = btnForumCommentCopy;
        this.f47720e = btnForumCommentDelete;
        this.f47721f = btnForumReport;
        this.f47722g = divider2;
        this.f47723h = dividerForumComment1;
        this.f47724i = dividerForumComment2;
    }

    @NonNull
    public static yg0 bind(@NonNull View rootView) {
        int i10 = R.id.btn_forum_comment;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_forum_comment);
        if (button != null) {
            i10 = R.id.btn_forum_comment_copy;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_forum_comment_copy);
            if (button2 != null) {
                i10 = R.id.btn_forum_comment_delete;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_forum_comment_delete);
                if (button3 != null) {
                    i10 = R.id.btn_forum_report;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.btn_forum_report);
                    if (button4 != null) {
                        i10 = R.id.divider_2;
                        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.divider_2);
                        if (viewFindChildViewById != null) {
                            i10 = R.id.divider_forum_comment_1;
                            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.divider_forum_comment_1);
                            if (viewFindChildViewById2 != null) {
                                i10 = R.id.divider_forum_comment_2;
                                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.divider_forum_comment_2);
                                if (viewFindChildViewById3 != null) {
                                    return new yg0((RelativeLayout) rootView, button, button2, button3, button4, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3);
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
    public static yg0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f47717b;
    }

    @NonNull
    public static yg0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mg_forum_popupwindow_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
