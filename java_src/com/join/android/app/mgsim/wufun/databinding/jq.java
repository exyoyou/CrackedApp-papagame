package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class jq implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final FrameLayout f40356c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f40357d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40358e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f40359f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final CheckBox f40360g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f40361h;

    private jq(@NonNull RelativeLayout rootView, @NonNull FrameLayout checkLayout, @NonNull SimpleDraweeView gameTransferItemGameIconImg, @NonNull TextView gameTransferItemGameNameTxt, @NonNull TextView gameTransferItemGameSizeTxt, @NonNull CheckBox gameTransferListItemTransferStatusChk, @NonNull TextView gameTransferListItemTransferStatusTxt) {
        this.f40355b = rootView;
        this.f40356c = checkLayout;
        this.f40357d = gameTransferItemGameIconImg;
        this.f40358e = gameTransferItemGameNameTxt;
        this.f40359f = gameTransferItemGameSizeTxt;
        this.f40360g = gameTransferListItemTransferStatusChk;
        this.f40361h = gameTransferListItemTransferStatusTxt;
    }

    @NonNull
    public static jq bind(@NonNull View rootView) {
        int i10 = R.id.checkLayout;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, R.id.checkLayout);
        if (frameLayout != null) {
            i10 = R.id.game_transfer_item_game_icon_img;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_item_game_icon_img);
            if (simpleDraweeView != null) {
                i10 = R.id.game_transfer_item_game_name_txt;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_item_game_name_txt);
                if (textView != null) {
                    i10 = R.id.game_transfer_item_game_size_txt;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_item_game_size_txt);
                    if (textView2 != null) {
                        i10 = R.id.game_transfer_list_item_transfer_status_chk;
                        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.game_transfer_list_item_transfer_status_chk);
                        if (checkBox != null) {
                            i10 = R.id.game_transfer_list_item_transfer_status_txt;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.game_transfer_list_item_transfer_status_txt);
                            if (textView3 != null) {
                                return new jq((RelativeLayout) rootView, frameLayout, simpleDraweeView, textView, textView2, checkBox, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static jq inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40355b;
    }

    @NonNull
    public static jq inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.game_transfer_list_item, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
