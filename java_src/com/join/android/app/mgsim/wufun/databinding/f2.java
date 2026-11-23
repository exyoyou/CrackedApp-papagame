package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;

/* JADX INFO: loaded from: classes4.dex */
public final class f2 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f38222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f38223c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final EditText f38224d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final XListView2 f38225e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final jw0 f38226f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f38227g;

    private f2(@NonNull LinearLayout rootView, @NonNull ImageView backImage, @NonNull EditText etSearch, @NonNull XListView2 mListView, @NonNull jw0 rlNormal, @NonNull RelativeLayout rlSearch) {
        this.f38222b = rootView;
        this.f38223c = backImage;
        this.f38224d = etSearch;
        this.f38225e = mListView;
        this.f38226f = rlNormal;
        this.f38227g = rlSearch;
    }

    @NonNull
    public static f2 bind(@NonNull View rootView) {
        int i10 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.back_image);
        if (imageView != null) {
            i10 = R.id.et_search;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.et_search);
            if (editText != null) {
                i10 = R.id.mListView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(rootView, R.id.mListView);
                if (xListView2 != null) {
                    i10 = R.id.rl_normal;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.rl_normal);
                    if (viewFindChildViewById != null) {
                        jw0 jw0VarBind = jw0.bind(viewFindChildViewById);
                        i10 = R.id.rl_search;
                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_search);
                        if (relativeLayout != null) {
                            return new f2((LinearLayout) rootView, imageView, editText, xListView2, jw0VarBind, relativeLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static f2 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f38222b;
    }

    @NonNull
    public static f2 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.activity_game_search_favorite, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
