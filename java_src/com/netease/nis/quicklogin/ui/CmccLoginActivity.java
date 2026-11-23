package com.netease.nis.quicklogin.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.cmic.gen.sdk.view.GenLoginAuthActivity;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.MaskNumberListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.g;
import com.netease.nis.quicklogin.utils.h;
import com.netease.nis.quicklogin.utils.i;
import com.netease.nis.quicklogin.view.FastClickButton;
import com.netease.nis.quicklogin.view.GifView;
import com.netease.nis.quicklogin.view.PlayerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class CmccLoginActivity extends GenLoginAuthActivity {
    private static QuickLoginTokenListener U;
    private RelativeLayout G;
    private RelativeLayout H;
    private RelativeLayout I;
    private PlayerView J;
    private ViewGroup K;
    private FastClickButton L;
    private EditText M;
    private CheckBox N;
    private TextView O;
    private TextView P;
    private WeakReference<CheckBox> Q;
    private String R;
    private UnifyUiConfig S;
    private h T;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f76073a;

        /* JADX INFO: renamed from: com.netease.nis.quicklogin.ui.CmccLoginActivity$a$a, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0981a implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0981a(a aVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        }

        class b implements DialogInterface.OnClickListener {
            b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                CmccLoginActivity.this.N.setChecked(true);
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                if (CmccLoginActivity.this.S.getPrivacyDialogAuto()) {
                    CmccLoginActivity.this.L.performClick();
                }
            }
        }

        a(ViewGroup viewGroup) {
            this.f76073a = viewGroup;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (CmccLoginActivity.this.N.isChecked()) {
                if (CmccLoginActivity.this.S.getLoadingVisible() && CmccLoginActivity.this.K != null) {
                    CmccLoginActivity.this.K.setVisibility(0);
                }
                CmccLoginActivity.this.a(4, 1);
                CmccLoginActivity.this.L.a(true);
                this.f76073a.performClick();
                return;
            }
            CmccLoginActivity.this.K.setVisibility(8);
            CmccLoginActivity.this.L.a(false);
            CmccLoginActivity.this.a(4, 0);
            LoginListener loginListener = CmccLoginActivity.this.S.getLoginListener();
            LinearLayout linearLayout = (LinearLayout) CmccLoginActivity.this.findViewById(R.id.yd_ll_protocol);
            TextView textView = linearLayout != null ? (TextView) linearLayout.findViewById(R.id.yd_tv_privacy) : null;
            if (textView == null) {
                Toast.makeText(CmccLoginActivity.this.getApplicationContext(), R.string.yd_privacy_agree, 1).show();
                return;
            }
            if (loginListener != null) {
                try {
                    if (loginListener.onDisagreePrivacy(textView, CmccLoginActivity.this.L)) {
                        return;
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                    return;
                }
            }
            AlertDialog alertDialogCreate = new AlertDialog.Builder(CmccLoginActivity.this).setMessage(TextUtils.isEmpty(CmccLoginActivity.this.S.getPrivacyDialogText()) ? com.netease.nis.quicklogin.utils.a.a(0, CmccLoginActivity.this.S, "请您仔细阅读", "，点击“确认”，表示您已经阅读并同意以上协议") : CmccLoginActivity.this.S.getPrivacyDialogText()).setPositiveButton("确认", new b()).setNegativeButton("取消", new DialogInterfaceOnClickListenerC0981a(this)).create();
            if (!CmccLoginActivity.this.isFinishing()) {
                alertDialogCreate.show();
            }
            Window window = alertDialogCreate.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = (int) (((double) i.a(CmccLoginActivity.this)) * 0.95d);
            attributes.gravity = 17;
            window.setAttributes(attributes);
            ((TextView) alertDialogCreate.findViewById(android.R.id.message)).setMovementMethod(LinkMovementMethod.getInstance());
            ((TextView) alertDialogCreate.findViewById(android.R.id.message)).setTextSize(2, CmccLoginActivity.this.S.getPrivacyDialogTextSize() != 0.0f ? CmccLoginActivity.this.S.getPrivacyDialogTextSize() : 13.0f);
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CmccLoginActivity.this.a(3, 0);
            if (CmccLoginActivity.U != null) {
                CmccLoginActivity.U.onCancelGetToken();
            }
            CmccLoginActivity.this.finish();
        }
    }

    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                CmccLoginActivity.this.a(2, 1);
                if (CmccLoginActivity.this.S.getCheckedImageDrawable() != null) {
                    CmccLoginActivity.this.N.setBackground(CmccLoginActivity.this.S.getCheckedImageDrawable());
                    return;
                } else {
                    if (TextUtils.isEmpty(CmccLoginActivity.this.S.getCheckedImageName())) {
                        return;
                    }
                    CmccLoginActivity.this.N.setBackgroundResource(CmccLoginActivity.this.T.c(CmccLoginActivity.this.S.getCheckedImageName()));
                    return;
                }
            }
            CmccLoginActivity.this.a(2, 0);
            if (CmccLoginActivity.this.S.getUnCheckedImageNameDrawable() != null) {
                CmccLoginActivity.this.N.setBackground(CmccLoginActivity.this.S.getUnCheckedImageNameDrawable());
            } else {
                if (TextUtils.isEmpty(CmccLoginActivity.this.S.getUnCheckedImageName())) {
                    return;
                }
                CmccLoginActivity.this.N.setBackgroundResource(CmccLoginActivity.this.T.c(CmccLoginActivity.this.S.getUnCheckedImageName()));
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CmccLoginActivity.this.a(1, 0);
        }
    }

    private static class e implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<CmccLoginActivity> f76079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LoginUiHelper.a f76080b;

        public e(CmccLoginActivity cmccLoginActivity, LoginUiHelper.a aVar) {
            this.f76079a = new WeakReference<>(cmccLoginActivity);
            this.f76080b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginUiHelper.CustomViewListener customViewListener = this.f76080b.f76133c;
            if (customViewListener != null) {
                try {
                    customViewListener.onClick(this.f76079a.get().getApplicationContext(), this.f76080b.f76131a);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private void o() {
        ArrayList<LoginUiHelper.a> customViewHolders = this.S.getCustomViewHolders();
        if (customViewHolders == null) {
            return;
        }
        for (LoginUiHelper.a aVar : customViewHolders) {
            if (aVar.f76131a != null) {
                a(aVar);
            }
        }
    }

    private void p() {
        this.G = (RelativeLayout) findViewById(R.id.yd_rl_root);
        this.H = (RelativeLayout) findViewById(R.id.yd_rl_navigation);
        this.I = (RelativeLayout) findViewById(R.id.yd_rl_body);
        if (this.S == null) {
            finish();
            return;
        }
        if (z()) {
            this.M = (EditText) findViewById(R.id.yd_et_number);
            this.P = (TextView) findViewById(R.id.yd_tv_brand);
            this.O = (TextView) findViewById(R.id.yd_tv_privacy);
            this.L = (FastClickButton) findViewById(R.id.yd_btn_oauth);
            this.N = (CheckBox) findViewById(R.id.yd_cb_privacy);
            LoginUiHelper.a().a(new f(this, this.N, this.G, this.H, this.I));
            if (this.S.isDialogMode()) {
                i.a(this, this.S.getDialogWidth(), this.S.getDialogHeight(), this.S.getDialogX(), this.S.getDialogY(), this.S.isBottomDialog());
            } else {
                i.a(this, this.S.isLandscape());
            }
            q();
            x();
            y();
            if (this.S.getBackgroundShadow() != null && this.J != null) {
                this.G.addView(this.S.getBackgroundShadow(), 1);
            }
            o();
        }
    }

    private void q() {
        String backgroundImage = this.S.getBackgroundImage();
        Drawable backgroundImageDrawable = this.S.getBackgroundImageDrawable();
        String backgroundGif = this.S.getBackgroundGif();
        Drawable backgroundGifDrawable = this.S.getBackgroundGifDrawable();
        if ((!TextUtils.isEmpty(backgroundImage) || backgroundImageDrawable != null) && TextUtils.isEmpty(backgroundGif) && backgroundGifDrawable == null) {
            View viewFindViewById = findViewById(R.id.yd_rl_root);
            viewFindViewById.setBackgroundColor(0);
            View view = (View) viewFindViewById.getParent();
            if (backgroundImageDrawable != null) {
                view.setBackground(backgroundImageDrawable);
            } else {
                view.setBackgroundResource(this.T.c(backgroundImage));
            }
        }
        String backgroundVideo = this.S.getBackgroundVideo();
        String backgroundVideoImage = this.S.getBackgroundVideoImage();
        Drawable backgroundVideoImageDrawable = this.S.getBackgroundVideoImageDrawable();
        if (!TextUtils.isEmpty(backgroundGif) || backgroundGifDrawable != null) {
            this.G.setFitsSystemWindows(false);
            GifView gifView = new GifView(this);
            if (backgroundGifDrawable != null) {
                gifView.setGifDrawable(backgroundGifDrawable);
            } else {
                gifView.setGifResId(this.T.c(backgroundGif));
            }
            gifView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.G.addView(gifView, 0);
            return;
        }
        if (TextUtils.isEmpty(backgroundVideo)) {
            return;
        }
        if (TextUtils.isEmpty(backgroundVideoImage) && backgroundVideoImageDrawable == null) {
            return;
        }
        this.G.setFitsSystemWindows(false);
        PlayerView playerView = new PlayerView(this);
        this.J = playerView;
        playerView.setVideoURI(Uri.parse(backgroundVideo));
        if (this.S.getBackgroundVideoImageDrawable() != null) {
            this.J.setLoadingImageResId(backgroundVideoImageDrawable);
        } else {
            this.J.setLoadingImageResId(this.T.c(backgroundVideoImage));
        }
        this.J.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.J.e();
        this.G.addView(this.J, 0);
    }

    private void r() {
        TextView textView = this.P;
        if (textView != null) {
            textView.setText(com.netease.nis.quicklogin.utils.e.f76139a);
            if (this.S.getSloganSize() != 0) {
                this.P.setTextSize(this.S.getSloganSize());
            } else if (this.S.getSloganDpSize() != 0) {
                this.P.setTextSize(1, this.S.getSloganDpSize());
            }
            if (this.S.getSloganColor() != 0) {
                this.P.setTextColor(this.S.getSloganColor());
            }
            if (this.S.getSloganTopYOffset() != 0) {
                i.d(this.P, this.S.getSloganTopYOffset());
            }
            if (this.S.getSloganBottomYOffset() != 0) {
                i.a(this.P, this.S.getSloganBottomYOffset());
            }
            if (this.S.getSloganXOffset() != 0) {
                i.e(this.P, this.S.getSloganXOffset());
            } else {
                i.b(this.P);
            }
        }
    }

    private void s() {
        FastClickButton fastClickButton = this.L;
        if (fastClickButton != null) {
            fastClickButton.setAllCaps(false);
            if (this.S.getLoginBtnWidth() != 0) {
                this.L.getLayoutParams().width = i.a(this, this.S.getLoginBtnWidth());
            }
            if (this.S.getLoginBtnHeight() != 0) {
                this.L.getLayoutParams().height = i.a(this, this.S.getLoginBtnHeight());
            }
            if (!TextUtils.isEmpty(this.S.getLoginBtnText())) {
                this.L.setText(this.S.getLoginBtnText());
            }
            if (this.S.getLoginBtnTextColor() != 0) {
                this.L.setTextColor(this.S.getLoginBtnTextColor());
            }
            if (this.S.getLoginBtnTextSize() != 0) {
                this.L.setTextSize(this.S.getLoginBtnTextSize());
            } else if (this.S.getLoginBtnTextDpSize() != 0) {
                this.L.setTextSize(1, this.S.getLoginBtnTextDpSize());
            }
            if (this.S.getLoginBtnTopYOffset() != 0) {
                i.d(this.L, this.S.getLoginBtnTopYOffset());
            }
            if (this.S.getLoginBtnBottomYOffset() != 0) {
                i.a(this.L, this.S.getLoginBtnBottomYOffset());
            }
            if (this.S.getLoginBtnXOffset() != 0) {
                i.e(this.L, this.S.getLoginBtnXOffset());
            } else {
                i.b(this.L);
            }
            if (this.S.getLoginBtnBackgroundDrawable() != null) {
                this.L.setBackground(this.S.getLoginBtnBackgroundDrawable());
            } else {
                if (TextUtils.isEmpty(this.S.getLoginBtnBackgroundRes())) {
                    return;
                }
                this.L.setBackground(this.T.b(this.S.getLoginBtnBackgroundRes()));
            }
        }
    }

    private void t() {
        RelativeLayout.LayoutParams layoutParams;
        ImageView imageView = (ImageView) findViewById(R.id.yd_iv_logo);
        if (imageView != null) {
            int logoWidth = this.S.getLogoWidth();
            int logoHeight = this.S.getLogoHeight();
            if (logoWidth != 0 || logoHeight != 0) {
                if (logoWidth == 0) {
                    layoutParams = new RelativeLayout.LayoutParams(i.a((Context) this, 70.0f), i.a(this, logoHeight));
                } else {
                    layoutParams = logoHeight == 0 ? new RelativeLayout.LayoutParams(i.a(this, logoWidth), i.a((Context) this, 70.0f)) : new RelativeLayout.LayoutParams(i.a(this, logoWidth), i.a(this, logoHeight));
                }
                imageView.setLayoutParams(layoutParams);
            }
            if (this.S.getLogoTopYOffset() != 0) {
                i.d(imageView, this.S.getLogoTopYOffset());
            }
            if (this.S.getLogoBottomYOffset() != 0) {
                i.a(imageView, this.S.getLogoBottomYOffset());
            }
            if (this.S.getLogoXOffset() != 0) {
                i.e(imageView, this.S.getLogoXOffset());
            } else {
                i.b(imageView);
            }
            if (this.S.getLogoIconDrawable() != null) {
                imageView.setImageDrawable(this.S.getLogoIconDrawable());
            } else if (!TextUtils.isEmpty(this.S.getLogoIconName())) {
                imageView.setImageResource(this.T.c(this.S.getLogoIconName()));
            }
            if (this.S.isHideLogo()) {
                imageView.setVisibility(4);
            }
        }
    }

    private void u() {
        if (this.M != null) {
            if (this.S.getMaskNumberSize() != 0) {
                this.M.setTextSize(this.S.getMaskNumberSize());
            } else if (this.S.getMaskNumberDpSize() != 0) {
                this.M.setTextSize(1, this.S.getMaskNumberDpSize());
            }
            if (this.S.getMaskNumberColor() != 0) {
                this.M.setTextColor(this.S.getMaskNumberColor());
            }
            if (this.S.getMaskNumberTypeface() != null) {
                this.M.setTypeface(this.S.getMaskNumberTypeface());
            }
            if (this.S.getMaskNumberTopYOffset() != 0) {
                i.d(this.M, this.S.getMaskNumberTopYOffset());
            }
            if (this.S.getMaskNumberBottomYOffset() != 0) {
                i.a(this.M, this.S.getMaskNumberBottomYOffset());
            }
            if (!TextUtils.isEmpty(this.S.getMaskNumberBackgroundRes())) {
                this.M.setBackground(this.T.b(this.S.getMaskNumberBackgroundRes()));
            }
            if (this.S.getMaskNumberXOffset() != 0) {
                i.e(this.M, this.S.getMaskNumberXOffset());
            } else {
                i.b(this.M);
            }
            if (this.S.getMaskNumberListener() != null) {
                try {
                    MaskNumberListener maskNumberListener = this.S.getMaskNumberListener();
                    EditText editText = this.M;
                    maskNumberListener.onGetMaskNumber(editText, editText.getText().toString());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private void v() {
        if (this.H != null) {
            if (this.S.getNavBackgroundColor() != 0) {
                this.H.setBackgroundColor(this.S.getNavBackgroundColor());
            }
            if (this.S.isHideNav()) {
                this.H.setVisibility(4);
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.H.getLayoutParams();
            layoutParams.height = i.a(this, this.S.getNavHeight());
            this.H.setLayoutParams(layoutParams);
        }
        ImageView imageView = (ImageView) findViewById(R.id.yd_iv_navigation);
        if (imageView != null) {
            if (this.S.isHideBackIcon()) {
                imageView.setVisibility(4);
            }
            if (this.S.getNavBackIconDrawable() != null) {
                imageView.setImageDrawable(this.S.getNavBackIconDrawable());
            } else if (!TextUtils.isEmpty(this.S.getNavBackIcon())) {
                imageView.setImageResource(this.T.c(this.S.getNavBackIcon()));
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams2.width = i.a(this, this.S.getNavBackIconWidth());
            layoutParams2.height = i.a(this, this.S.getNavBackIconHeight());
            if (this.S.getNavBackIconGravity() == 0 && this.S.isDialogMode()) {
                layoutParams2.addRule(11);
            } else {
                layoutParams2.addRule(this.S.getNavBackIconGravity() != 5 ? 9 : 11);
            }
            if (this.S.getNavBackIconMargin() != 0) {
                layoutParams2.setMargins(i.a(this, this.S.getNavBackIconMargin()), 0, 0, 0);
            }
            imageView.setLayoutParams(layoutParams2);
            imageView.setOnClickListener(new b());
        }
        TextView textView = (TextView) findViewById(R.id.yd_tv_navigation);
        if (textView != null) {
            if (!TextUtils.isEmpty(this.S.getNavTitle())) {
                textView.setText(this.S.getNavTitle());
            }
            if (this.S.getNavTitleColor() != 0) {
                textView.setTextColor(this.S.getNavTitleColor());
            }
            if (this.S.getNavTitleSize() != 0) {
                textView.setTextSize(this.S.getNavTitleSize());
            } else if (this.S.getNavTitleDpSize() != 0) {
                textView.setTextSize(1, this.S.getNavTitleDpSize());
            }
            if (this.S.isNavTitleBold()) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            }
            if (this.S.getNavTitleDrawable() != null) {
                textView.setCompoundDrawables(this.S.getNavTitleDrawable(), null, null, null);
                if (this.S.getNavTitleDrawablePadding() != 0) {
                    textView.setCompoundDrawablePadding(this.S.getNavTitleDrawablePadding());
                }
            }
        }
    }

    private void w() {
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.yd_ll_protocol);
        if (linearLayout != null) {
            RelativeLayout relativeLayout = (RelativeLayout) linearLayout.findViewById(R.id.yd_rl_privacy);
            if (this.S.isHidePrivacyCheckBox()) {
                if (relativeLayout != null) {
                    relativeLayout.setVisibility(8);
                }
            } else if (this.S.getCheckBoxGravity() != 0) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
                layoutParams.gravity = this.S.getCheckBoxGravity();
                relativeLayout.setLayoutParams(layoutParams);
            }
            if (this.S.getPrivacyCheckBoxWidth() != 0) {
                this.N.getLayoutParams().width = i.a(this, this.S.getPrivacyCheckBoxWidth());
            }
            if (this.S.getPrivacyCheckBoxHeight() != 0) {
                this.N.getLayoutParams().height = i.a(this, this.S.getPrivacyCheckBoxHeight());
            }
            if (com.netease.nis.quicklogin.utils.a.a(this.Q)) {
                this.Q.get().setChecked(true);
            }
            if (this.S.isPrivacyState()) {
                this.N.setChecked(true);
                if (this.S.getCheckedImageDrawable() != null) {
                    this.N.setBackground(this.S.getCheckedImageDrawable());
                } else if (!TextUtils.isEmpty(this.S.getCheckedImageName())) {
                    this.N.setBackgroundResource(this.T.c(this.S.getCheckedImageName()));
                }
            } else {
                this.N.setChecked(false);
                if (this.S.getUnCheckedImageNameDrawable() != null) {
                    this.N.setBackground(this.S.getUnCheckedImageNameDrawable());
                } else if (!TextUtils.isEmpty(this.S.getUnCheckedImageName())) {
                    this.N.setBackgroundResource(this.T.c(this.S.getUnCheckedImageName()));
                }
            }
            this.N.setOnCheckedChangeListener(new c());
            TextView textView = this.O;
            if (textView != null) {
                textView.setOnClickListener(new d());
                if (this.S.getPrivacyLineSpacingAdd() != 0.0f) {
                    this.O.setLineSpacing(i.a(this, this.S.getPrivacyLineSpacingAdd()), this.S.getPrivacyLineSpacingMul() > 0.0f ? this.S.getPrivacyLineSpacingMul() : 1.0f);
                }
                com.netease.nis.quicklogin.utils.a.a(0, this.S, this.O);
                if (this.S.getPrivacySize() != 0) {
                    this.O.setTextSize(this.S.getPrivacySize());
                } else if (this.S.getPrivacyDpSize() != 0) {
                    this.O.setTextSize(1, this.S.getPrivacyDpSize());
                }
                if (this.S.getPrivacyTextMarginLeft() != 0) {
                    i.b(this.O, this.S.getPrivacyTextMarginLeft());
                }
                if (this.S.getPrivacyTopYOffset() != 0 && this.S.getPrivacyBottomYOffset() == 0) {
                    i.d(linearLayout, this.S.getPrivacyTopYOffset() + i.c(this));
                }
                if (this.S.getPrivacyBottomYOffset() != 0) {
                    i.a(linearLayout, this.S.getPrivacyBottomYOffset());
                }
                if (this.S.getPrivacyMarginLeft() != 0) {
                    i.e(linearLayout, this.S.getPrivacyMarginLeft());
                } else {
                    i.c(linearLayout);
                }
                if (this.S.getPrivacyMarginRight() != 0) {
                    i.c(this.O, this.S.getPrivacyMarginRight());
                }
                if (this.S.isPrivacyTextGravityCenter()) {
                    this.O.setGravity(17);
                }
                if (this.S.getPrivacyTextLayoutGravity() != 0) {
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.O.getLayoutParams();
                    layoutParams2.gravity = this.S.getPrivacyTextLayoutGravity();
                    this.O.setLayoutParams(layoutParams2);
                }
            }
        }
    }

    private void x() {
        i.a((Activity) this, this.S.getStatusBarColor());
        i.b(this, this.S.isStatusBarDarkColor());
    }

    private void y() {
        ViewGroup viewGroup = (ViewGroup) ((ViewGroup) getWindow().getDecorView().findViewById(android.R.id.content)).getChildAt(0);
        String backgroundGif = this.S.getBackgroundGif();
        Drawable backgroundGifDrawable = this.S.getBackgroundGifDrawable();
        String backgroundVideo = this.S.getBackgroundVideo();
        if (!TextUtils.isEmpty(backgroundGif) || backgroundGifDrawable != null || !TextUtils.isEmpty(backgroundVideo)) {
            viewGroup.setFitsSystemWindows(false);
        }
        v();
        t();
        r();
        for (View view : i.a(viewGroup)) {
            if (view instanceof TextView) {
                String string = ((TextView) view).getText().toString();
                if (!TextUtils.isEmpty(string) && string.contains("****")) {
                    int id2 = view.getId();
                    int i10 = R.id.yd_et_number;
                    if (id2 != i10 && findViewById(i10) != null) {
                        ((EditText) findViewById(i10)).setText(string);
                        if (view.getParent() != null) {
                            ((ViewGroup) view.getParent()).setVisibility(8);
                        }
                    }
                }
            }
            if ((view instanceof CheckBox) && view.getId() != R.id.yd_cb_privacy) {
                CheckBox checkBox = (CheckBox) view;
                ViewGroup viewGroup2 = (ViewGroup) checkBox.getParent().getParent();
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(8);
                }
                this.Q = new WeakReference<>(checkBox);
            }
        }
        u();
        ViewGroup viewGroup3 = (viewGroup.getChildCount() < 3 || !(viewGroup.getChildAt(2) instanceof ViewGroup)) ? null : (ViewGroup) viewGroup.getChildAt(2);
        if ((viewGroup3 instanceof RelativeLayout) && viewGroup3.getChildCount() == 1) {
            viewGroup3.setVisibility(8);
            s();
            FastClickButton fastClickButton = this.L;
            if (fastClickButton != null) {
                fastClickButton.setOnClickListener(new a(viewGroup3));
            }
        }
        w();
    }

    private boolean z() {
        if (this.G == null) {
            QuickLoginTokenListener quickLoginTokenListener = U;
            if (quickLoginTokenListener != null) {
                quickLoginTokenListener.onGetMobileNumberError(this.R, "移动接口添加易盾布局文件失败");
            }
            g.c().a(-3, "移动添加易盾布局文件失败");
            g.c().d();
            finish();
            return false;
        }
        UnifyUiConfig unifyUiConfig = this.S;
        if (unifyUiConfig == null || unifyUiConfig.getLoadingView() == null) {
            this.K = (ViewGroup) findViewById(R.id.yd_rl_loading);
            return true;
        }
        ViewGroup loadingView = this.S.getLoadingView();
        this.K = loadingView;
        loadingView.bringToFront();
        try {
            this.G.addView(this.K);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.K.setVisibility(8);
        return true;
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        UnifyUiConfig unifyUiConfig = this.S;
        if (unifyUiConfig != null && (!TextUtils.isEmpty(unifyUiConfig.getActivityEnterAnimation()) || !TextUtils.isEmpty(this.S.getActivityExitAnimation()))) {
            h hVarA = h.a(getApplicationContext());
            overridePendingTransition(hVarA.a(this.S.getActivityEnterAnimation()), hVarA.a(this.S.getActivityExitAnimation()));
        }
        if (U != null) {
            U = null;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig == null || unifyUiConfig.getActivityResultCallbacks() == null) {
                return;
            }
            this.S.getActivityResultCallbacks().onActivityResult(i10, i11, intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.cmic.gen.sdk.view.GenLoginAuthActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.S = LoginUiHelper.a().c();
        U = LoginUiHelper.a().b();
        this.R = LoginUiHelper.a().d();
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.S.getActivityLifecycleCallbacks().onCreate(this);
            }
            this.T = h.a(getApplicationContext());
            p();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.cmic.gen.sdk.view.GenLoginAuthActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.S.getActivityLifecycleCallbacks().onDestroy(this);
            }
            RelativeLayout relativeLayout = this.G;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
            RelativeLayout relativeLayout2 = this.H;
            if (relativeLayout2 != null) {
                relativeLayout2.removeAllViews();
            }
            RelativeLayout relativeLayout3 = this.I;
            if (relativeLayout3 != null) {
                relativeLayout3.removeAllViews();
            }
            PlayerView playerView = this.J;
            if (playerView != null) {
                playerView.suspend();
                this.J.setOnErrorListener(null);
                this.J.setOnPreparedListener(null);
                this.J.setOnCompletionListener(null);
                this.J = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.cmic.gen.sdk.view.GenLoginAuthActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i10, KeyEvent keyEvent) {
        UnifyUiConfig unifyUiConfig;
        if (i10 != 4 || (unifyUiConfig = this.S) == null || unifyUiConfig.getBackPressedAvailable()) {
            return super.onKeyUp(i10, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.S.getActivityLifecycleCallbacks().onPause(this);
            }
            PlayerView playerView = this.J;
            if (playerView == null || !playerView.isPlaying()) {
                return;
            }
            this.J.pause();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.cmic.gen.sdk.view.GenLoginAuthActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.d("onePass [timeEnd]" + System.currentTimeMillis());
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.S.getActivityLifecycleCallbacks().onResume(this);
            }
            PlayerView playerView = this.J;
            if (playerView == null || playerView.isPlaying()) {
                return;
            }
            this.J.start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.S.getActivityLifecycleCallbacks().onStart(this);
            }
            PlayerView playerView = this.J;
            if (playerView == null || playerView.isPlaying()) {
                return;
            }
            this.J.e();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.S.getActivityLifecycleCallbacks().onStop(this);
            }
            PlayerView playerView = this.J;
            if (playerView != null) {
                playerView.stopPlayback();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static class f implements LoginUiHelper.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<CmccLoginActivity> f76081a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference<CheckBox> f76082b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final WeakReference<RelativeLayout> f76083c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final WeakReference<RelativeLayout> f76084d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final WeakReference<RelativeLayout> f76085e;

        public f(CmccLoginActivity cmccLoginActivity, CheckBox checkBox, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3) {
            this.f76081a = new WeakReference<>(cmccLoginActivity);
            this.f76082b = new WeakReference<>(checkBox);
            this.f76083c = new WeakReference<>(relativeLayout);
            this.f76084d = new WeakReference<>(relativeLayout2);
            this.f76085e = new WeakReference<>(relativeLayout3);
        }

        @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.b
        public void a() {
            if (this.f76081a.get() != null) {
                this.f76081a.get().finish();
            }
        }

        @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.b
        public void a(boolean z10) {
            if (this.f76082b.get() != null) {
                this.f76082b.get().setChecked(z10);
            }
        }

        @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.b
        public void a(int i10, View view) {
            if (i10 == 1) {
                if (this.f76084d.get() != null) {
                    this.f76084d.get().removeView(view);
                }
            } else if (i10 == 0) {
                if (this.f76085e.get() != null) {
                    this.f76085e.get().removeView(view);
                }
            } else if (this.f76083c.get() != null) {
                this.f76083c.get().removeView(view);
            }
        }
    }

    private void a(LoginUiHelper.a aVar) {
        if (aVar.f76131a.getParent() != null && (aVar.f76131a.getParent() instanceof ViewGroup)) {
            ((ViewGroup) aVar.f76131a.getParent()).removeView(aVar.f76131a);
        }
        int i10 = aVar.f76132b;
        if (i10 == 1) {
            this.H.addView(aVar.f76131a);
        } else if (i10 == 0) {
            this.I.addView(aVar.f76131a);
        } else if (i10 == 2) {
            this.G.addView(aVar.f76131a);
        }
        View view = aVar.f76131a;
        if (view != null) {
            view.setOnClickListener(new e(this, aVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11) {
        try {
            UnifyUiConfig unifyUiConfig = this.S;
            if (unifyUiConfig == null || unifyUiConfig.getClickEventListener() == null) {
                return;
            }
            this.S.getClickEventListener().onClick(i10, i11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
