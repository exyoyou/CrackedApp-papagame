package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.KeyboardListenLayout;

/* JADX INFO: loaded from: classes4.dex */
public final class xl implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final KeyboardListenLayout f47281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final View f47282c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f47283d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f47284e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f47285f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f47286g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final KeyboardListenLayout f47287h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RecyclerView f47288i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f47289j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f47290k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f47291l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f47292m;

    private xl(@NonNull KeyboardListenLayout rootView, @NonNull View close, @NonNull TextView hint, @NonNull EditText input, @NonNull ImageView iv1, @NonNull ImageView ivNoData, @NonNull KeyboardListenLayout keyboardLayout, @NonNull RecyclerView recyclerView, @NonNull TextView search, @NonNull TextView textView40, @NonNull TextView textView48, @NonNull TextView tvNoData) {
        this.f47281b = rootView;
        this.f47282c = close;
        this.f47283d = hint;
        this.f47284e = input;
        this.f47285f = iv1;
        this.f47286g = ivNoData;
        this.f47287h = keyboardLayout;
        this.f47288i = recyclerView;
        this.f47289j = search;
        this.f47290k = textView40;
        this.f47291l = textView48;
        this.f47292m = tvNoData;
    }

    @NonNull
    public static xl bind(@NonNull View rootView) {
        int i10 = R.id.close;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.close);
        if (viewFindChildViewById != null) {
            i10 = R.id.hint;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.hint);
            if (textView != null) {
                i10 = R.id.input;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.input);
                if (editText != null) {
                    i10 = R.id.iv1;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv1);
                    if (imageView != null) {
                        i10 = R.id.iv_no_data;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_no_data);
                        if (imageView2 != null) {
                            KeyboardListenLayout keyboardListenLayout = (KeyboardListenLayout) rootView;
                            i10 = R.id.recyclerView;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                            if (recyclerView != null) {
                                i10 = R.id.search;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.search);
                                if (textView2 != null) {
                                    i10 = R.id.textView40;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView40);
                                    if (textView3 != null) {
                                        i10 = R.id.textView48;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView48);
                                        if (textView4 != null) {
                                            i10 = R.id.tv_no_data;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_no_data);
                                            if (textView5 != null) {
                                                return new xl(keyboardListenLayout, viewFindChildViewById, textView, editText, imageView, imageView2, keyboardListenLayout, recyclerView, textView2, textView3, textView4, textView5);
                                            }
                                        }
                                    }
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
    public static xl inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public KeyboardListenLayout getRoot() {
        return this.f47281b;
    }

    @NonNull
    public static xl inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_friend_add, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
