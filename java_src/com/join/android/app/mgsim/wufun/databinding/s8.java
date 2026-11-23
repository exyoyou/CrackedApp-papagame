package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.WrapContentGridView;

/* JADX INFO: loaded from: classes4.dex */
public final class s8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final WrapContentGridView f44673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final WrapContentGridView f44674c;

    private s8(@NonNull WrapContentGridView rootView, @NonNull WrapContentGridView gridView) {
        this.f44673b = rootView;
        this.f44674c = gridView;
    }

    @NonNull
    public static s8 bind(@NonNull View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        WrapContentGridView wrapContentGridView = (WrapContentGridView) rootView;
        return new s8(wrapContentGridView, wrapContentGridView);
    }

    @NonNull
    public static s8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WrapContentGridView getRoot() {
        return this.f44673b;
    }

    @NonNull
    public static s8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.chioce_item_game_classify_content, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
