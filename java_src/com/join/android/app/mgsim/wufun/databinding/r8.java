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

/* JADX INFO: loaded from: classes4.dex */
public final class r8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f44255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final i9 f44256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final i9 f44257d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final i9 f44258e;

    private r8(@NonNull LinearLayout rootView, @NonNull i9 item1, @NonNull i9 item2, @NonNull i9 item3) {
        this.f44255b = rootView;
        this.f44256c = item1;
        this.f44257d = item2;
        this.f44258e = item3;
    }

    @NonNull
    public static r8 bind(@NonNull View rootView) {
        int i10 = R.id.item1;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.item1);
        if (viewFindChildViewById != null) {
            i9 i9VarBind = i9.bind(viewFindChildViewById);
            View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, R.id.item2);
            if (viewFindChildViewById2 != null) {
                i9 i9VarBind2 = i9.bind(viewFindChildViewById2);
                View viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, R.id.item3);
                if (viewFindChildViewById3 != null) {
                    return new r8((LinearLayout) rootView, i9VarBind, i9VarBind2, i9.bind(viewFindChildViewById3));
                }
                i10 = R.id.item3;
            } else {
                i10 = R.id.item2;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static r8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f44255b;
    }

    @NonNull
    public static r8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.chioce_item_game_classify, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
