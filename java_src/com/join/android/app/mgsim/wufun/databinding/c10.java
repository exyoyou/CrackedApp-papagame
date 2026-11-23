package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class c10 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36680b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f36681c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f36682d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f36683e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f36684f;

    private c10(@NonNull ConstraintLayout rootView, @NonNull View add, @NonNull ImageView icCollapse, @NonNull ImageView imageView78, @NonNull TextView onlineNum) {
        this.f36680b = rootView;
        this.f36681c = add;
        this.f36682d = icCollapse;
        this.f36683e = imageView78;
        this.f36684f = onlineNum;
    }

    @NonNull
    public static c10 bind(@NonNull View rootView) {
        int i10 = R.id.add;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.add);
        if (viewFindChildViewById != null) {
            i10 = R.id.icCollapse;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icCollapse);
            if (imageView != null) {
                i10 = R.id.imageView78;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView78);
                if (imageView2 != null) {
                    i10 = R.id.onlineNum;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.onlineNum);
                    if (textView != null) {
                        return new c10((ConstraintLayout) rootView, viewFindChildViewById, imageView, imageView2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static c10 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36680b;
    }

    @NonNull
    public static c10 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.item_friend_item_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
