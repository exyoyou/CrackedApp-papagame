package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class kj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f40804b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40805c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f40806d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f40807e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final gw0 f40808f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageView f40809g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final ImageView f40810h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageView f40811i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final ImageView f40812j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40813k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f40814l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f40815m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextView f40816n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f40817o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f40818p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f40819q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f40820r;

    private kj(@NonNull RelativeLayout rootView, @NonNull RelativeLayout faceTransferDeclareRlayout, @NonNull TextView faceTransferDeclareTxt, @NonNull TextView faceTransferDeclareTxtBottom, @NonNull gw0 faceTransferHomepageTitle, @NonNull ImageView faceTransferImgCreateHotspot, @NonNull ImageView faceTransferImgJoinHotspot, @NonNull ImageView faceTransferLeftImg, @NonNull ImageView faceTransferMidImg, @NonNull RelativeLayout faceTransferRelCreateHotspot, @NonNull RelativeLayout faceTransferRelJoinHotspot, @NonNull ImageView faceTransferRightImg, @NonNull TextView faceTransferTextCreateHotspot, @NonNull TextView faceTransferTextJoinHotspot, @NonNull TextView faceTransferTextPhone1, @NonNull TextView faceTransferTextPhone2, @NonNull TextView nopapaTip) {
        this.f40804b = rootView;
        this.f40805c = faceTransferDeclareRlayout;
        this.f40806d = faceTransferDeclareTxt;
        this.f40807e = faceTransferDeclareTxtBottom;
        this.f40808f = faceTransferHomepageTitle;
        this.f40809g = faceTransferImgCreateHotspot;
        this.f40810h = faceTransferImgJoinHotspot;
        this.f40811i = faceTransferLeftImg;
        this.f40812j = faceTransferMidImg;
        this.f40813k = faceTransferRelCreateHotspot;
        this.f40814l = faceTransferRelJoinHotspot;
        this.f40815m = faceTransferRightImg;
        this.f40816n = faceTransferTextCreateHotspot;
        this.f40817o = faceTransferTextJoinHotspot;
        this.f40818p = faceTransferTextPhone1;
        this.f40819q = faceTransferTextPhone2;
        this.f40820r = nopapaTip;
    }

    @NonNull
    public static kj bind(@NonNull View rootView) {
        int i10 = R.id.face_transfer_declare_rlayout;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.face_transfer_declare_rlayout);
        if (relativeLayout != null) {
            i10 = R.id.face_transfer_declare_txt;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_declare_txt);
            if (textView != null) {
                i10 = R.id.face_transfer_declare_txt_bottom;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_declare_txt_bottom);
                if (textView2 != null) {
                    i10 = R.id.face_transfer_homepage_title;
                    View viewFindChildViewById = ViewBindings.findChildViewById(rootView, R.id.face_transfer_homepage_title);
                    if (viewFindChildViewById != null) {
                        gw0 gw0VarBind = gw0.bind(viewFindChildViewById);
                        i10 = R.id.face_transfer_img_create_hotspot;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_img_create_hotspot);
                        if (imageView != null) {
                            i10 = R.id.face_transfer_img_join_hotspot;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_img_join_hotspot);
                            if (imageView2 != null) {
                                i10 = R.id.face_transfer_left_img;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_left_img);
                                if (imageView3 != null) {
                                    i10 = R.id.face_transfer_mid_img;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_mid_img);
                                    if (imageView4 != null) {
                                        i10 = R.id.face_transfer_rel_create_hotspot;
                                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.face_transfer_rel_create_hotspot);
                                        if (relativeLayout2 != null) {
                                            i10 = R.id.face_transfer_rel_join_hotspot;
                                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.face_transfer_rel_join_hotspot);
                                            if (relativeLayout3 != null) {
                                                i10 = R.id.face_transfer_right_img;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_right_img);
                                                if (imageView5 != null) {
                                                    i10 = R.id.face_transfer_text_create_hotspot;
                                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_text_create_hotspot);
                                                    if (textView3 != null) {
                                                        i10 = R.id.face_transfer_text_join_hotspot;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_text_join_hotspot);
                                                        if (textView4 != null) {
                                                            i10 = R.id.face_transfer_text_phone1;
                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_text_phone1);
                                                            if (textView5 != null) {
                                                                i10 = R.id.face_transfer_text_phone2;
                                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, R.id.face_transfer_text_phone2);
                                                                if (textView6 != null) {
                                                                    i10 = R.id.nopapaTip;
                                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, R.id.nopapaTip);
                                                                    if (textView7 != null) {
                                                                        return new kj((RelativeLayout) rootView, relativeLayout, textView, textView2, gw0VarBind, imageView, imageView2, imageView3, imageView4, relativeLayout2, relativeLayout3, imageView5, textView3, textView4, textView5, textView6, textView7);
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
    public static kj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f40804b;
    }

    @NonNull
    public static kj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.face_transfer_homepage_activity, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
