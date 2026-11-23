package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class rl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f44382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f44383c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f44384d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f44385e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final XRecyclerView f44386f;

    private rl(@NonNull FrameLayout rootView, @NonNull TextView editText5, @NonNull ImageView imageView44, @NonNull LinearLayout llEmpty, @NonNull XRecyclerView recyclerView) {
        this.f44382b = rootView;
        this.f44383c = editText5;
        this.f44384d = imageView44;
        this.f44385e = llEmpty;
        this.f44386f = recyclerView;
    }

    @NonNull
    public static rl bind(@NonNull View rootView) {
        int i10 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
        if (textView != null) {
            i10 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView44);
            if (imageView != null) {
                i10 = R.id.ll_empty;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_empty);
                if (linearLayout != null) {
                    i10 = R.id.recyclerView;
                    XRecyclerView xRecyclerView = (XRecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                    if (xRecyclerView != null) {
                        return new rl((FrameLayout) rootView, textView, imageView, linearLayout, xRecyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static rl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f44382b;
    }

    @NonNull
    public static rl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_end_game_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
