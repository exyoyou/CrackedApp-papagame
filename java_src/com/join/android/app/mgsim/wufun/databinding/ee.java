package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ee implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f37902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f37903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f37904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f37905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f37906f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RadioButton f37907g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RadioButton f37908h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37909i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final RadioButton f37910j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RadioButton f37911k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37912l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final RadioButton f37913m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final RadioButton f37914n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f37915o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f37916p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f37917q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f37918r;

    private ee(@NonNull RelativeLayout rootView, @NonNull TextView copyTv, @NonNull TextView finishButn, @NonNull ImageView ivArrowNetArchive, @NonNull LinearLayout ivClose, @NonNull RadioButton ivSwitchOnlook, @NonNull RadioButton ivSwitchOnlookN, @NonNull RelativeLayout rlNetArchive, @NonNull RadioButton rlSetNoPwd, @NonNull RadioButton rlSetPwd, @NonNull RelativeLayout rlTop, @NonNull RadioButton roomTypeAllLL, @NonNull RadioButton roomTypePhoneLL, @NonNull TextView roomxingzhiT, @NonNull TextView tvArchiveName, @NonNull TextView tvRoomNum, @NonNull TextView tvTitle) {
        this.f37902b = rootView;
        this.f37903c = copyTv;
        this.f37904d = finishButn;
        this.f37905e = ivArrowNetArchive;
        this.f37906f = ivClose;
        this.f37907g = ivSwitchOnlook;
        this.f37908h = ivSwitchOnlookN;
        this.f37909i = rlNetArchive;
        this.f37910j = rlSetNoPwd;
        this.f37911k = rlSetPwd;
        this.f37912l = rlTop;
        this.f37913m = roomTypeAllLL;
        this.f37914n = roomTypePhoneLL;
        this.f37915o = roomxingzhiT;
        this.f37916p = tvArchiveName;
        this.f37917q = tvRoomNum;
        this.f37918r = tvTitle;
    }

    @NonNull
    public static ee bind(@NonNull View rootView) {
        int i10 = R.id.copyTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.copyTv);
        if (textView != null) {
            i10 = R.id.finishButn;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.finishButn);
            if (textView2 != null) {
                i10 = R.id.iv_arrow_net_archive;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.iv_arrow_net_archive);
                if (imageView != null) {
                    i10 = R.id.iv_close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.iv_close);
                    if (linearLayout != null) {
                        i10 = R.id.iv_switch_onlook;
                        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.iv_switch_onlook);
                        if (radioButton != null) {
                            i10 = R.id.iv_switch_onlook_n;
                            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.iv_switch_onlook_n);
                            if (radioButton2 != null) {
                                i10 = R.id.rl_net_archive;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_net_archive);
                                if (relativeLayout != null) {
                                    i10 = R.id.rl_setNo_pwd;
                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rl_setNo_pwd);
                                    if (radioButton3 != null) {
                                        i10 = R.id.rl_set_pwd;
                                        RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.rl_set_pwd);
                                        if (radioButton4 != null) {
                                            i10 = R.id.rl_top;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.rl_top);
                                            if (relativeLayout2 != null) {
                                                i10 = R.id.roomTypeAllLL;
                                                RadioButton radioButton5 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.roomTypeAllLL);
                                                if (radioButton5 != null) {
                                                    i10 = R.id.roomTypePhoneLL;
                                                    RadioButton radioButton6 = (RadioButton) ViewBindings.findChildViewById(rootView, R.id.roomTypePhoneLL);
                                                    if (radioButton6 != null) {
                                                        i10 = R.id.roomxingzhiT;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.roomxingzhiT);
                                                        if (textView3 != null) {
                                                            i10 = R.id.tv_archive_name;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_archive_name);
                                                            if (textView4 != null) {
                                                                i10 = R.id.tv_roomNum;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_roomNum);
                                                                if (textView5 != null) {
                                                                    i10 = R.id.tv_title;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.tv_title);
                                                                    if (textView6 != null) {
                                                                        return new ee((RelativeLayout) rootView, textView, textView2, imageView, linearLayout, radioButton, radioButton2, relativeLayout, radioButton3, radioButton4, relativeLayout2, radioButton5, radioButton6, textView3, textView4, textView5, textView6);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ee inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f37902b;
    }

    @NonNull
    public static ee inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.dialog_arena_room_type, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
