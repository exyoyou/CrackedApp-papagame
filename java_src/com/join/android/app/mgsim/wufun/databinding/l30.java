package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.textview.MovementTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class l30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f41130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f41131c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MovementTextView f41132d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41133e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f41134f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f41135g;

    private l30(@NonNull RelativeLayout rootView, @NonNull RelativeLayout commentAllRootLl, @NonNull MovementTextView content, @NonNull View layoutTop, @NonNull SimpleDraweeView sivHead, @NonNull TextView userName) {
        this.f41130b = rootView;
        this.f41131c = commentAllRootLl;
        this.f41132d = content;
        this.f41133e = layoutTop;
        this.f41134f = sivHead;
        this.f41135g = userName;
    }

    @NonNull
    public static l30 bind(@NonNull View rootView) {
        RelativeLayout relativeLayout = (RelativeLayout) rootView;
        int i10 = R.id.content;
        MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (movementTextView != null) {
            i10 = R.id.layoutTop;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
            if (viewFindChildViewById != null) {
                i10 = R.id.siv_head;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.siv_head);
                if (simpleDraweeView != null) {
                    i10 = R.id.userName;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.userName);
                    if (textView != null) {
                        return new l30(relativeLayout, relativeLayout, movementTextView, viewFindChildViewById, simpleDraweeView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static l30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f41130b;
    }

    @NonNull
    public static l30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_introduction_commont_detial_replay, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
