package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.TextViewWithHyperlink;

/* JADX INFO: loaded from: classes4.dex */
public final class qb implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f43738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextViewWithHyperlink f43739c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43740d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f43741e;

    private qb(@NonNull LinearLayout rootView, @NonNull TextViewWithHyperlink commentReplyContent, @NonNull TextView commentReplyMore, @NonNull TextView tvReplyName) {
        this.f43738b = rootView;
        this.f43739c = commentReplyContent;
        this.f43740d = commentReplyMore;
        this.f43741e = tvReplyName;
    }

    @NonNull
    public static qb bind(@NonNull View rootView) {
        int i10 = R.id.comment_reply_content;
        TextViewWithHyperlink textViewWithHyperlink = (TextViewWithHyperlink) ViewBindings.findChildViewById(rootView, R.id.comment_reply_content);
        if (textViewWithHyperlink != null) {
            i10 = R.id.comment_reply_more;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.comment_reply_more);
            if (textView != null) {
                i10 = R.id.tvReplyName;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tvReplyName);
                if (textView2 != null) {
                    return new qb((LinearLayout) rootView, textViewWithHyperlink, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qb inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f43738b;
    }

    @NonNull
    public static qb inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.comment_reply_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
