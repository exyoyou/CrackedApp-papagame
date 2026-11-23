package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class k4 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f40588b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f40589c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f40590d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f40591e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ListView f40592f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f40593g;

    private k4(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull EditText etSearch, @NonNull ImageView icClear, @NonNull ListView mListView, @NonNull TextView tvNodata) {
        this.f40588b = rootView;
        this.f40589c = backImage;
        this.f40590d = etSearch;
        this.f40591e = icClear;
        this.f40592f = mListView;
        this.f40593g = tvNodata;
    }

    @NonNull
    public static k4 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.et_search;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_search);
            if (editText != null) {
                i10 = R.id.ic_clear;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.ic_clear);
                if (imageView2 != null) {
                    i10 = R.id.mListView;
                    ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.mListView);
                    if (listView != null) {
                        i10 = R.id.tv_nodata;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_nodata);
                        if (textView != null) {
                            return new k4((LinearLayout) rootView, imageView, editText, imageView2, listView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static k4 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f40588b;
    }

    @NonNull
    public static k4 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_search_label, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
