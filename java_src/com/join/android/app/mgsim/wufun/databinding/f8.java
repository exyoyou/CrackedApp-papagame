package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class f8 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f38291b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final LinearLayout f38292c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f38293d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final EditText f38294e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f38295f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f38296g;

    private f8(@NonNull RelativeLayout rootView, @NonNull LinearLayout changeNickNameLayout, @NonNull ImageView close, @NonNull EditText nickName, @NonNull TextView nickNameBution, @NonNull SimpleDraweeView userIcon) {
        this.f38291b = rootView;
        this.f38292c = changeNickNameLayout;
        this.f38293d = close;
        this.f38294e = nickName;
        this.f38295f = nickNameBution;
        this.f38296g = userIcon;
    }

    @NonNull
    public static f8 bind(@NonNull View rootView) {
        int i10 = R.id.changeNickNameLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.changeNickNameLayout);
        if (linearLayout != null) {
            i10 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.close);
            if (imageView != null) {
                i10 = R.id.nickName;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, R.id.nickName);
                if (editText != null) {
                    i10 = R.id.nickNameBution;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickNameBution);
                    if (textView != null) {
                        i10 = R.id.userIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.userIcon);
                        if (simpleDraweeView != null) {
                            return new f8((RelativeLayout) rootView, linearLayout, imageView, editText, textView, simpleDraweeView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static f8 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f38291b;
    }

    @NonNull
    public static f8 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.change_account_nickname_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
