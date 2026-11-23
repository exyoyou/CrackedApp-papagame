package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.textview.MovementTextView;

/* JADX INFO: loaded from: classes4.dex */
public final class m30 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41696b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f41697c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final MovementTextView f41698d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final View f41699e;

    private m30(@NonNull LinearLayout rootView, @NonNull LinearLayout commentAllRootLl, @NonNull MovementTextView content, @NonNull View layoutTop) {
        this.f41696b = rootView;
        this.f41697c = commentAllRootLl;
        this.f41698d = content;
        this.f41699e = layoutTop;
    }

    @NonNull
    public static m30 bind(@NonNull View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i10 = R.id.content;
        MovementTextView movementTextView = (MovementTextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (movementTextView != null) {
            i10 = R.id.layoutTop;
            View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.layoutTop);
            if (viewFindChildViewById != null) {
                return new m30(linearLayout, linearLayout, movementTextView, viewFindChildViewById);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static m30 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f41696b;
    }

    @NonNull
    public static m30 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_introduction_commont_list_replay, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
