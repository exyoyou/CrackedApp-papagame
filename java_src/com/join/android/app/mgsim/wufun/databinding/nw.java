package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class nw implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final CornersLinearLayout f42530b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f42531c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f42532d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f42533e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f42534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RecyclerView f42535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f42536h;

    private nw(@NonNull CornersLinearLayout rootView, @NonNull TextView editText5, @NonNull ImageView imageView44, @NonNull ImageView ivClose, @NonNull LinearLayout llEmpty, @NonNull RecyclerView rvListData, @NonNull TextView tvTitle) {
        this.f42530b = rootView;
        this.f42531c = editText5;
        this.f42532d = imageView44;
        this.f42533e = ivClose;
        this.f42534f = llEmpty;
        this.f42535g = rvListData;
        this.f42536h = tvTitle;
    }

    @NonNull
    public static nw bind(@NonNull View rootView) {
        int i10 = R.id.editText5;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.editText5);
        if (textView != null) {
            i10 = R.id.imageView44;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView44);
            if (imageView != null) {
                i10 = R.id.iv_close;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                if (imageView2 != null) {
                    i10 = R.id.ll_empty;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.ll_empty);
                    if (linearLayout != null) {
                        i10 = R.id.rv_list_data;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.rv_list_data);
                        if (recyclerView != null) {
                            i10 = R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                            if (textView2 != null) {
                                return new nw((CornersLinearLayout) rootView, textView, imageView, imageView2, linearLayout, recyclerView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static nw inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CornersLinearLayout getRoot() {
        return this.f42530b;
    }

    @NonNull
    public static nw inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.introduction_progress_fragment, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
