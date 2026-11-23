package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class iy0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f39986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f39987c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f39988d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f39989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Button f39990f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f39991g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final Button f39992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f39993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final Button f39994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final Button f39995k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final Button f39996l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final Button f39997m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final Button f39998n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final Button f39999o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final Button f40000p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final Button f40001q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final Button f40002r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final Button f40003s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final Button f40004t;

    private iy0(@NonNull LinearLayout rootView, @NonNull Button battleStatus, @NonNull Button findMobilePass, @NonNull Button getCheckToken, @NonNull Button globalData, @NonNull Button info, @NonNull Button lastWorshipMessage, @NonNull Button login, @NonNull Button logout, @NonNull Button messageList, @NonNull Button modifyUserInfo, @NonNull Button readMessage, @NonNull Button register, @NonNull Button sendSMS, @NonNull Button thirdWayLogin, @NonNull Button trophyList, @NonNull Button userInfo, @NonNull Button verifySMS, @NonNull Button worship) {
        this.f39986b = rootView;
        this.f39987c = battleStatus;
        this.f39988d = findMobilePass;
        this.f39989e = getCheckToken;
        this.f39990f = globalData;
        this.f39991g = info;
        this.f39992h = lastWorshipMessage;
        this.f39993i = login;
        this.f39994j = logout;
        this.f39995k = messageList;
        this.f39996l = modifyUserInfo;
        this.f39997m = readMessage;
        this.f39998n = register;
        this.f39999o = sendSMS;
        this.f40000p = thirdWayLogin;
        this.f40001q = trophyList;
        this.f40002r = userInfo;
        this.f40003s = verifySMS;
        this.f40004t = worship;
    }

    @NonNull
    public static iy0 bind(@NonNull View rootView) {
        int i10 = R.id.battleStatus;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.battleStatus);
        if (button != null) {
            i10 = R.id.find_mobile_pass;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.find_mobile_pass);
            if (button2 != null) {
                i10 = R.id.getCheckToken;
                Button button3 = (Button) ViewBindings.findChildViewById(rootView, R.id.getCheckToken);
                if (button3 != null) {
                    i10 = R.id.globalData;
                    Button button4 = (Button) ViewBindings.findChildViewById(rootView, R.id.globalData);
                    if (button4 != null) {
                        i10 = R.id.info;
                        Button button5 = (Button) ViewBindings.findChildViewById(rootView, R.id.info);
                        if (button5 != null) {
                            i10 = R.id.lastWorshipMessage;
                            Button button6 = (Button) ViewBindings.findChildViewById(rootView, R.id.lastWorshipMessage);
                            if (button6 != null) {
                                i10 = R.id.login;
                                Button button7 = (Button) ViewBindings.findChildViewById(rootView, R.id.login);
                                if (button7 != null) {
                                    i10 = R.id.logout;
                                    Button button8 = (Button) ViewBindings.findChildViewById(rootView, R.id.logout);
                                    if (button8 != null) {
                                        i10 = R.id.messageList;
                                        Button button9 = (Button) ViewBindings.findChildViewById(rootView, R.id.messageList);
                                        if (button9 != null) {
                                            i10 = R.id.modifyUserInfo;
                                            Button button10 = (Button) ViewBindings.findChildViewById(rootView, R.id.modifyUserInfo);
                                            if (button10 != null) {
                                                i10 = R.id.readMessage;
                                                Button button11 = (Button) ViewBindings.findChildViewById(rootView, R.id.readMessage);
                                                if (button11 != null) {
                                                    i10 = R.id.register;
                                                    Button button12 = (Button) ViewBindings.findChildViewById(rootView, R.id.register);
                                                    if (button12 != null) {
                                                        i10 = R.id.sendSMS;
                                                        Button button13 = (Button) ViewBindings.findChildViewById(rootView, R.id.sendSMS);
                                                        if (button13 != null) {
                                                            i10 = R.id.thirdWayLogin;
                                                            Button button14 = (Button) ViewBindings.findChildViewById(rootView, R.id.thirdWayLogin);
                                                            if (button14 != null) {
                                                                i10 = R.id.trophyList;
                                                                Button button15 = (Button) ViewBindings.findChildViewById(rootView, R.id.trophyList);
                                                                if (button15 != null) {
                                                                    i10 = R.id.userInfo;
                                                                    Button button16 = (Button) ViewBindings.findChildViewById(rootView, R.id.userInfo);
                                                                    if (button16 != null) {
                                                                        i10 = R.id.verifySMS;
                                                                        Button button17 = (Button) ViewBindings.findChildViewById(rootView, R.id.verifySMS);
                                                                        if (button17 != null) {
                                                                            i10 = R.id.worship;
                                                                            Button button18 = (Button) ViewBindings.findChildViewById(rootView, R.id.worship);
                                                                            if (button18 != null) {
                                                                                return new iy0((LinearLayout) rootView, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static iy0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f39986b;
    }

    @NonNull
    public static iy0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.world_interface_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
