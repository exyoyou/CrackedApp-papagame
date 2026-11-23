package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class cm implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f36989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SimpleDraweeView f36990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36991d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f36992e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final ImageView f36993f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f36994g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f36995h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f36996i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f36997j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final LinearLayout f36998k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f36999l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f37000m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f37001n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final RecyclerView f37002o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final ImageView f37003p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f37004q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f37005r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @NonNull
    public final TextView f37006s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @NonNull
    public final ImageView f37007t;

    private cm(@NonNull ConstraintLayout rootView, @NonNull SimpleDraweeView avatar, @NonNull ConstraintLayout bottom, @NonNull ConstraintLayout constraintLayout7, @NonNull ImageView icVip, @NonNull ImageView inviteFriend, @NonNull ImageView msg, @NonNull TextView msgCount, @NonNull TextView nickname, @NonNull LinearLayout noRecord, @NonNull TextView onlineState, @NonNull ImageView onlineStateArr, @NonNull ImageView qq, @NonNull RecyclerView recyclerView, @NonNull ImageView searchFriend, @NonNull TextView textView89, @NonNull TextView textView90, @NonNull TextView unlogin, @NonNull ImageView wechat) {
        this.f36989b = rootView;
        this.f36990c = avatar;
        this.f36991d = bottom;
        this.f36992e = constraintLayout7;
        this.f36993f = icVip;
        this.f36994g = inviteFriend;
        this.f36995h = msg;
        this.f36996i = msgCount;
        this.f36997j = nickname;
        this.f36998k = noRecord;
        this.f36999l = onlineState;
        this.f37000m = onlineStateArr;
        this.f37001n = qq;
        this.f37002o = recyclerView;
        this.f37003p = searchFriend;
        this.f37004q = textView89;
        this.f37005r = textView90;
        this.f37006s = unlogin;
        this.f37007t = wechat;
    }

    @NonNull
    public static cm bind(@NonNull View rootView) {
        int i10 = R.id.avatar;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(rootView, R.id.avatar);
        if (simpleDraweeView != null) {
            i10 = R.id.bottom;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.bottom);
            if (constraintLayout != null) {
                i10 = R.id.constraintLayout7;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, R.id.constraintLayout7);
                if (constraintLayout2 != null) {
                    i10 = R.id.icVip;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.icVip);
                    if (imageView != null) {
                        i10 = R.id.inviteFriend;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.inviteFriend);
                        if (imageView2 != null) {
                            i10 = R.id.msg;
                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.msg);
                            if (imageView3 != null) {
                                i10 = R.id.msgCount;
                                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.msgCount);
                                if (textView != null) {
                                    i10 = R.id.nickname;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nickname);
                                    if (textView2 != null) {
                                        i10 = R.id.noRecord;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.noRecord);
                                        if (linearLayout != null) {
                                            i10 = R.id.onlineState;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.onlineState);
                                            if (textView3 != null) {
                                                i10 = R.id.onlineStateArr;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.onlineStateArr);
                                                if (imageView4 != null) {
                                                    i10 = R.id.qq;
                                                    ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.qq);
                                                    if (imageView5 != null) {
                                                        i10 = R.id.recyclerView;
                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, R.id.recyclerView);
                                                        if (recyclerView != null) {
                                                            i10 = R.id.searchFriend;
                                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.searchFriend);
                                                            if (imageView6 != null) {
                                                                i10 = R.id.textView89;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView89);
                                                                if (textView4 != null) {
                                                                    i10 = R.id.textView90;
                                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView90);
                                                                    if (textView5 != null) {
                                                                        i10 = R.id.unlogin;
                                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.unlogin);
                                                                        if (textView6 != null) {
                                                                            i10 = R.id.wechat;
                                                                            ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.wechat);
                                                                            if (imageView7 != null) {
                                                                                return new cm((ConstraintLayout) rootView, simpleDraweeView, constraintLayout, constraintLayout2, imageView, imageView2, imageView3, textView, textView2, linearLayout, textView3, imageView4, imageView5, recyclerView, imageView6, textView4, textView5, textView6, imageView7);
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
    public static cm inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.f36989b;
    }

    @NonNull
    public static cm inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.fragment_friend_my, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
