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
import com.kwad.components.offline.api.tk.model.report.TKDownloadReason;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.helper.UnifyUiConfig;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.MaskNumberListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.h;
import com.netease.nis.quicklogin.utils.i;
import com.netease.nis.quicklogin.view.FastClickButton;
import com.netease.nis.quicklogin.view.GifView;
import com.netease.nis.quicklogin.view.PlayerView;
import com.sdk.base.api.ToolUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class YDQuickLoginActivity extends Activity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private EditText f76091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CheckBox f76092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f76093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f76094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private PlayerView f76095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewGroup f76096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private FastClickButton f76097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RelativeLayout f76098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private RelativeLayout f76099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private RelativeLayout f76100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private QuickLoginTokenListener f76101k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private UnifyUiConfig f76102l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f76103m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f76104n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f76105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f76106p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f76107q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f76108r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private h f76109s;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            YDQuickLoginActivity.this.a(3, 0);
            if (YDQuickLoginActivity.this.f76101k != null) {
                YDQuickLoginActivity.this.f76101k.onCancelGetToken();
            }
            YDQuickLoginActivity.this.finish();
        }
    }

    class b implements View.OnClickListener {

        class a implements DialogInterface.OnClickListener {
            a(b bVar) {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
            }
        }

        /* JADX INFO: renamed from: com.netease.nis.quicklogin.ui.YDQuickLoginActivity$b$b, reason: collision with other inner class name */
        class DialogInterfaceOnClickListenerC0982b implements DialogInterface.OnClickListener {
            DialogInterfaceOnClickListenerC0982b() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                YDQuickLoginActivity.this.f76092b.setChecked(true);
                if (dialogInterface != null) {
                    dialogInterface.dismiss();
                }
                if (YDQuickLoginActivity.this.f76102l.getPrivacyDialogAuto()) {
                    YDQuickLoginActivity.this.f76097g.performClick();
                }
            }
        }

        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CharSequence privacyDialogText;
            int i10 = 1;
            if (YDQuickLoginActivity.this.f76092b.isChecked()) {
                if (YDQuickLoginActivity.this.f76102l.getLoadingVisible()) {
                    YDQuickLoginActivity.this.f76096f.setVisibility(0);
                }
                YDQuickLoginActivity.this.f76097g.a(true);
                YDQuickLoginActivity.this.a(4, 1);
                YDQuickLoginActivity.this.b();
                return;
            }
            YDQuickLoginActivity.this.f76096f.setVisibility(8);
            YDQuickLoginActivity.this.f76097g.a(false);
            YDQuickLoginActivity.this.a(4, 0);
            try {
                if (YDQuickLoginActivity.this.f76102l == null) {
                    Toast.makeText(YDQuickLoginActivity.this.getApplicationContext(), R.string.yd_privacy_agree, 0).show();
                    return;
                }
                LoginListener loginListener = YDQuickLoginActivity.this.f76102l.getLoginListener();
                if (loginListener == null || !loginListener.onDisagreePrivacy(YDQuickLoginActivity.this.f76093c, YDQuickLoginActivity.this.f76097g)) {
                    AlertDialog.Builder builder = new AlertDialog.Builder(YDQuickLoginActivity.this);
                    if (TextUtils.isEmpty(YDQuickLoginActivity.this.f76102l.getPrivacyDialogText())) {
                        YDQuickLoginActivity yDQuickLoginActivity = YDQuickLoginActivity.this;
                        if (!yDQuickLoginActivity.f76108r) {
                            i10 = 2;
                        }
                        privacyDialogText = com.netease.nis.quicklogin.utils.a.a(i10, yDQuickLoginActivity.f76102l, "请您仔细阅读", "，点击“确认”，表示您已经阅读并同意以上协议");
                    } else {
                        privacyDialogText = YDQuickLoginActivity.this.f76102l.getPrivacyDialogText();
                    }
                    AlertDialog alertDialogCreate = builder.setMessage(privacyDialogText).setPositiveButton("确认", new DialogInterfaceOnClickListenerC0982b()).setNegativeButton("取消", new a(this)).create();
                    if (!YDQuickLoginActivity.this.isFinishing()) {
                        alertDialogCreate.show();
                    }
                    Window window = alertDialogCreate.getWindow();
                    WindowManager.LayoutParams attributes = window.getAttributes();
                    attributes.width = (int) (((double) i.a(YDQuickLoginActivity.this)) * 0.95d);
                    attributes.gravity = 17;
                    window.setAttributes(attributes);
                    ((TextView) alertDialogCreate.findViewById(android.R.id.message)).setMovementMethod(LinkMovementMethod.getInstance());
                    ((TextView) alertDialogCreate.findViewById(android.R.id.message)).setTextSize(2, YDQuickLoginActivity.this.f76102l.getPrivacyDialogTextSize() != 0.0f ? YDQuickLoginActivity.this.f76102l.getPrivacyDialogTextSize() : 13.0f);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class c implements CompoundButton.OnCheckedChangeListener {
        c() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (z10) {
                YDQuickLoginActivity.this.a(2, 1);
                if (YDQuickLoginActivity.this.f76102l.getCheckedImageDrawable() != null) {
                    YDQuickLoginActivity.this.f76092b.setBackground(YDQuickLoginActivity.this.f76102l.getCheckedImageDrawable());
                    return;
                } else {
                    if (TextUtils.isEmpty(YDQuickLoginActivity.this.f76102l.getCheckedImageName())) {
                        return;
                    }
                    YDQuickLoginActivity.this.f76092b.setBackgroundResource(YDQuickLoginActivity.this.f76109s.c(YDQuickLoginActivity.this.f76102l.getCheckedImageName()));
                    return;
                }
            }
            YDQuickLoginActivity.this.a(2, 0);
            if (YDQuickLoginActivity.this.f76102l.getUnCheckedImageNameDrawable() != null) {
                YDQuickLoginActivity.this.f76092b.setBackground(YDQuickLoginActivity.this.f76102l.getUnCheckedImageNameDrawable());
            } else {
                if (TextUtils.isEmpty(YDQuickLoginActivity.this.f76102l.getUnCheckedImageName())) {
                    return;
                }
                YDQuickLoginActivity.this.f76092b.setBackgroundResource(YDQuickLoginActivity.this.f76109s.c(YDQuickLoginActivity.this.f76102l.getUnCheckedImageName()));
            }
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            YDQuickLoginActivity.this.a(1, 0);
        }
    }

    private static class e implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<YDQuickLoginActivity> f76115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final LoginUiHelper.a f76116b;

        public e(YDQuickLoginActivity yDQuickLoginActivity, LoginUiHelper.a aVar) {
            this.f76115a = new WeakReference<>(yDQuickLoginActivity);
            this.f76116b = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            LoginUiHelper.CustomViewListener customViewListener = this.f76116b.f76133c;
            if (customViewListener != null) {
                try {
                    customViewListener.onClick(this.f76115a.get().getApplicationContext(), this.f76116b.f76131a);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private void i() {
        if (this.f76091a != null) {
            if (this.f76102l.getMaskNumberSize() != 0) {
                this.f76091a.setTextSize(this.f76102l.getMaskNumberSize());
            } else if (this.f76102l.getMaskNumberDpSize() != 0) {
                this.f76091a.setTextSize(1, this.f76102l.getMaskNumberDpSize());
            }
            if (this.f76102l.getMaskNumberColor() != 0) {
                this.f76091a.setTextColor(this.f76102l.getMaskNumberColor());
            }
            if (this.f76102l.getMaskNumberTypeface() != null) {
                this.f76091a.setTypeface(this.f76102l.getMaskNumberTypeface());
            }
            if (this.f76102l.getMaskNumberTopYOffset() != 0) {
                i.d(this.f76091a, this.f76102l.getMaskNumberTopYOffset());
            }
            if (this.f76102l.getMaskNumberBottomYOffset() != 0) {
                i.a(this.f76091a, this.f76102l.getMaskNumberBottomYOffset());
            }
            if (!TextUtils.isEmpty(this.f76102l.getMaskNumberBackgroundRes())) {
                this.f76091a.setBackground(this.f76109s.b(this.f76102l.getMaskNumberBackgroundRes()));
            }
            if (this.f76102l.getMaskNumberXOffset() != 0) {
                i.e(this.f76091a, this.f76102l.getMaskNumberXOffset());
            } else {
                i.b(this.f76091a);
            }
            if (this.f76102l.getMaskNumberListener() != null) {
                try {
                    MaskNumberListener maskNumberListener = this.f76102l.getMaskNumberListener();
                    EditText editText = this.f76091a;
                    maskNumberListener.onGetMaskNumber(editText, editText.getText().toString());
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private void j() {
        if (this.f76098h != null) {
            if (this.f76102l.getNavBackgroundColor() != 0) {
                this.f76098h.setBackgroundColor(this.f76102l.getNavBackgroundColor());
            }
            if (this.f76102l.isHideNav()) {
                this.f76098h.setVisibility(4);
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f76098h.getLayoutParams();
            layoutParams.height = i.a(this, this.f76102l.getNavHeight());
            this.f76098h.setLayoutParams(layoutParams);
        }
        ImageView imageView = (ImageView) findViewById(R.id.yd_iv_navigation);
        if (imageView != null) {
            if (this.f76102l.isHideBackIcon()) {
                imageView.setVisibility(4);
            }
            if (this.f76102l.getNavBackIconDrawable() != null) {
                imageView.setImageDrawable(this.f76102l.getNavBackIconDrawable());
            } else if (!TextUtils.isEmpty(this.f76102l.getNavBackIcon())) {
                imageView.setImageResource(this.f76109s.c(this.f76102l.getNavBackIcon()));
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams2.width = i.a(this, this.f76102l.getNavBackIconWidth());
            layoutParams2.height = i.a(this, this.f76102l.getNavBackIconHeight());
            if (this.f76102l.getNavBackIconGravity() == 0 && this.f76102l.isDialogMode()) {
                layoutParams2.addRule(11);
            } else {
                layoutParams2.addRule(this.f76102l.getNavBackIconGravity() != 5 ? 9 : 11);
            }
            if (this.f76102l.getNavBackIconMargin() != 0) {
                layoutParams2.setMargins(i.a(this, this.f76102l.getNavBackIconMargin()), 0, 0, 0);
            }
            imageView.setLayoutParams(layoutParams2);
            imageView.setOnClickListener(new a());
        }
        TextView textView = (TextView) findViewById(R.id.yd_tv_navigation);
        if (textView != null) {
            if (!TextUtils.isEmpty(this.f76102l.getNavTitle())) {
                textView.setText(this.f76102l.getNavTitle());
            }
            if (this.f76102l.getNavTitleColor() != 0) {
                textView.setTextColor(this.f76102l.getNavTitleColor());
            }
            if (this.f76102l.getNavTitleSize() != 0) {
                textView.setTextSize(this.f76102l.getNavTitleSize());
            } else if (this.f76102l.getNavTitleDpSize() != 0) {
                textView.setTextSize(1, this.f76102l.getNavTitleDpSize());
            }
            if (this.f76102l.isNavTitleBold()) {
                textView.setTypeface(Typeface.defaultFromStyle(1));
            }
            if (this.f76102l.getNavTitleDrawable() != null) {
                textView.setCompoundDrawables(this.f76102l.getNavTitleDrawable(), null, null, null);
                if (this.f76102l.getNavTitleDrawablePadding() != 0) {
                    textView.setCompoundDrawablePadding(this.f76102l.getNavTitleDrawablePadding());
                }
            }
        }
    }

    private void k() {
        i.a((Activity) this, this.f76102l.getStatusBarColor());
        i.b(this, this.f76102l.isStatusBarDarkColor());
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        UnifyUiConfig unifyUiConfig = this.f76102l;
        if (unifyUiConfig != null && this.f76109s != null && (!TextUtils.isEmpty(unifyUiConfig.getActivityEnterAnimation()) || !TextUtils.isEmpty(this.f76102l.getActivityExitAnimation()))) {
            overridePendingTransition(this.f76109s.a(this.f76102l.getActivityEnterAnimation()), this.f76109s.a(this.f76102l.getActivityExitAnimation()));
        }
        if (this.f76101k != null) {
            this.f76101k = null;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig == null || unifyUiConfig.getActivityResultCallbacks() == null) {
                return;
            }
            this.f76102l.getActivityResultCallbacks().onActivityResult(i10, i11, intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        UnifyUiConfig unifyUiConfig = this.f76102l;
        if (unifyUiConfig == null || !unifyUiConfig.getBackPressedAvailable()) {
            return;
        }
        QuickLoginTokenListener quickLoginTokenListener = this.f76101k;
        if (quickLoginTokenListener != null) {
            try {
                quickLoginTokenListener.onCancelGetToken();
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
            }
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.yd_activity_quick_login);
        this.f76102l = LoginUiHelper.a().c();
        this.f76101k = LoginUiHelper.a().b();
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.f76102l.getActivityLifecycleCallbacks().onCreate(this);
            }
            this.f76109s = h.a(getApplicationContext());
            c();
            Intent intent = getIntent();
            if (intent != null) {
                a(intent);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.f76102l.getActivityLifecycleCallbacks().onDestroy(this);
            }
            RelativeLayout relativeLayout = this.f76100j;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
            RelativeLayout relativeLayout2 = this.f76098h;
            if (relativeLayout2 != null) {
                relativeLayout2.removeAllViews();
            }
            RelativeLayout relativeLayout3 = this.f76099i;
            if (relativeLayout3 != null) {
                relativeLayout3.removeAllViews();
            }
            PlayerView playerView = this.f76095e;
            if (playerView != null) {
                playerView.suspend();
                this.f76095e.setOnErrorListener(null);
                this.f76095e.setOnPreparedListener(null);
                this.f76095e.setOnCompletionListener(null);
                this.f76095e = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.f76102l.getActivityLifecycleCallbacks().onPause(this);
            }
            PlayerView playerView = this.f76095e;
            if (playerView == null || !playerView.isPlaying()) {
                return;
            }
            this.f76095e.pause();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        Logger.d("onePass [timeEnd]" + System.currentTimeMillis());
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.f76102l.getActivityLifecycleCallbacks().onResume(this);
            }
            PlayerView playerView = this.f76095e;
            if (playerView == null || playerView.isPlaying()) {
                return;
            }
            this.f76095e.start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.f76102l.getActivityLifecycleCallbacks().onStart(this);
            }
            PlayerView playerView = this.f76095e;
            if (playerView == null || playerView.isPlaying()) {
                return;
            }
            this.f76095e.e();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig != null && unifyUiConfig.getActivityLifecycleCallbacks() != null) {
                this.f76102l.getActivityLifecycleCallbacks().onStop(this);
            }
            PlayerView playerView = this.f76095e;
            if (playerView != null) {
                playerView.stopPlayback();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private static class f implements LoginUiHelper.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final WeakReference<YDQuickLoginActivity> f76117a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final WeakReference<CheckBox> f76118b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final WeakReference<RelativeLayout> f76119c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final WeakReference<RelativeLayout> f76120d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final WeakReference<RelativeLayout> f76121e;

        public f(YDQuickLoginActivity yDQuickLoginActivity, CheckBox checkBox, RelativeLayout relativeLayout, RelativeLayout relativeLayout2, RelativeLayout relativeLayout3) {
            this.f76117a = new WeakReference<>(yDQuickLoginActivity);
            this.f76118b = new WeakReference<>(checkBox);
            this.f76119c = new WeakReference<>(relativeLayout);
            this.f76120d = new WeakReference<>(relativeLayout2);
            this.f76121e = new WeakReference<>(relativeLayout3);
        }

        @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.b
        public void a() {
            if (this.f76117a.get() != null) {
                this.f76117a.get().finish();
            }
        }

        @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.b
        public void a(boolean z10) {
            if (this.f76118b.get() != null) {
                this.f76118b.get().setChecked(z10);
            }
        }

        @Override // com.netease.nis.quicklogin.utils.LoginUiHelper.b
        public void a(int i10, View view) {
            if (i10 == 1) {
                if (this.f76120d.get() != null) {
                    this.f76120d.get().removeView(view);
                }
            } else if (i10 == 0) {
                if (this.f76121e.get() != null) {
                    this.f76121e.get().removeView(view);
                }
            } else if (this.f76119c.get() != null) {
                this.f76119c.get().removeView(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        String strA;
        try {
            strA = com.netease.nis.quicklogin.utils.d.a(this);
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
            strA = null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f76108r) {
                jSONObject.put("accessToken", this.f76103m);
                jSONObject.put("version", "v2");
                jSONObject.put(TKDownloadReason.KSAD_TK_MD5, ToolUtils.getAppMd5(getApplicationContext()));
            } else {
                jSONObject.put("accessToken", this.f76103m);
                jSONObject.put("gwAuth", this.f76105o);
            }
            if (this.f76101k != null) {
                com.netease.nis.quicklogin.utils.f.a(this, "timeend", 0L);
                ToolUtils.clearCache(this);
                if (com.netease.nis.quicklogin.b.a.f75955a == 1) {
                    this.f76101k.onGetTokenSuccess(this.f76106p, a(com.netease.nis.quicklogin.utils.a.a(jSONObject.toString()), strA));
                } else {
                    this.f76101k.onGetTokenSuccess(this.f76106p, com.netease.nis.quicklogin.utils.a.a(jSONObject.toString()));
                }
            }
        } catch (Exception e11) {
            Logger.e(e11.getMessage());
            QuickLoginTokenListener quickLoginTokenListener = this.f76101k;
            if (quickLoginTokenListener != null) {
                try {
                    quickLoginTokenListener.onGetTokenError(this.f76106p, e11.toString());
                } catch (Exception e12) {
                    Logger.e(e12.getMessage());
                }
            }
        }
    }

    private void c() {
        this.f76100j = (RelativeLayout) findViewById(R.id.yd_rl_root);
        this.f76098h = (RelativeLayout) findViewById(R.id.yd_rl_navigation);
        this.f76099i = (RelativeLayout) findViewById(R.id.yd_rl_body);
        this.f76091a = (EditText) findViewById(R.id.yd_et_number);
        this.f76094d = (TextView) findViewById(R.id.yd_tv_brand);
        this.f76093c = (TextView) findViewById(R.id.yd_tv_privacy);
        this.f76097g = (FastClickButton) findViewById(R.id.yd_btn_oauth);
        this.f76092b = (CheckBox) findViewById(R.id.yd_cb_privacy);
        if (this.f76102l == null) {
            finish();
            return;
        }
        LoginUiHelper.a().a(new f(this, this.f76092b, this.f76100j, this.f76098h, this.f76099i));
        if (this.f76102l.isDialogMode()) {
            i.a(this, this.f76102l.getDialogWidth(), this.f76102l.getDialogHeight(), this.f76102l.getDialogX(), this.f76102l.getDialogY(), this.f76102l.isBottomDialog());
        } else {
            i.a(this, this.f76102l.isLandscape());
        }
        d();
        k();
        e();
        j();
        h();
        i();
        f();
        g();
        if (this.f76102l.getBackgroundShadow() != null && this.f76095e != null) {
            this.f76100j.addView(this.f76102l.getBackgroundShadow(), 1);
        }
        a();
        if (this.f76102l.getLoadingView() == null) {
            this.f76096f = (ViewGroup) findViewById(R.id.yd_rl_loading);
            return;
        }
        ViewGroup loadingView = this.f76102l.getLoadingView();
        this.f76096f = loadingView;
        loadingView.bringToFront();
        try {
            if (this.f76096f.getParent() != null) {
                ((ViewGroup) this.f76096f.getParent()).removeView(this.f76096f);
            }
            this.f76100j.addView(this.f76096f);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f76096f.setVisibility(8);
    }

    private void d() {
        String backgroundImage = this.f76102l.getBackgroundImage();
        Drawable backgroundImageDrawable = this.f76102l.getBackgroundImageDrawable();
        String backgroundGif = this.f76102l.getBackgroundGif();
        Drawable backgroundGifDrawable = this.f76102l.getBackgroundGifDrawable();
        if ((!TextUtils.isEmpty(backgroundImage) || backgroundImageDrawable != null) && TextUtils.isEmpty(backgroundGif) && backgroundGifDrawable == null) {
            if (backgroundImageDrawable != null) {
                this.f76100j.setBackground(backgroundImageDrawable);
            } else {
                this.f76100j.setBackgroundResource(this.f76109s.c(backgroundImage));
            }
        }
        String backgroundVideo = this.f76102l.getBackgroundVideo();
        String backgroundVideoImage = this.f76102l.getBackgroundVideoImage();
        Drawable backgroundVideoImageDrawable = this.f76102l.getBackgroundVideoImageDrawable();
        if (!TextUtils.isEmpty(backgroundGif) || backgroundGifDrawable != null) {
            this.f76100j.setFitsSystemWindows(false);
            GifView gifView = new GifView(this);
            if (backgroundGifDrawable != null) {
                gifView.setGifDrawable(backgroundGifDrawable);
            } else {
                gifView.setGifResId(this.f76109s.c(backgroundGif));
            }
            gifView.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f76100j.addView(gifView, 0);
            return;
        }
        if (TextUtils.isEmpty(backgroundVideo)) {
            return;
        }
        if (TextUtils.isEmpty(backgroundVideoImage) && backgroundVideoImageDrawable == null) {
            return;
        }
        this.f76100j.setFitsSystemWindows(false);
        PlayerView playerView = new PlayerView(this);
        this.f76095e = playerView;
        playerView.setVideoURI(Uri.parse(backgroundVideo));
        if (this.f76102l.getBackgroundVideoImageDrawable() != null) {
            this.f76095e.setLoadingImageResId(backgroundVideoImageDrawable);
        } else {
            this.f76095e.setLoadingImageResId(this.f76109s.c(backgroundVideoImage));
        }
        this.f76095e.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f76095e.e();
        this.f76100j.addView(this.f76095e, 0);
    }

    private void e() {
        if (TextUtils.isEmpty(this.f76102l.getActivityEnterAnimation()) && TextUtils.isEmpty(this.f76102l.getActivityExitAnimation())) {
            return;
        }
        overridePendingTransition(!TextUtils.isEmpty(this.f76102l.getActivityEnterAnimation()) ? this.f76109s.a(this.f76102l.getActivityEnterAnimation()) : 0, TextUtils.isEmpty(this.f76102l.getActivityExitAnimation()) ? 0 : this.f76109s.a(this.f76102l.getActivityExitAnimation()));
    }

    private void f() {
        if (this.f76094d != null) {
            if (this.f76102l.getSloganSize() != 0) {
                this.f76094d.setTextSize(this.f76102l.getSloganSize());
            } else if (this.f76102l.getSloganDpSize() != 0) {
                this.f76094d.setTextSize(1, this.f76102l.getSloganDpSize());
            }
            if (this.f76102l.getSloganColor() != 0) {
                this.f76094d.setTextColor(this.f76102l.getSloganColor());
            }
            if (this.f76102l.getSloganTopYOffset() != 0) {
                i.d(this.f76094d, this.f76102l.getSloganTopYOffset());
            }
            if (this.f76102l.getSloganBottomYOffset() != 0) {
                i.a(this.f76094d, this.f76102l.getSloganBottomYOffset());
            }
            if (this.f76102l.getSloganXOffset() != 0) {
                i.e(this.f76094d, this.f76102l.getSloganXOffset());
            } else {
                i.b(this.f76094d);
            }
        }
    }

    private void g() {
        FastClickButton fastClickButton = this.f76097g;
        if (fastClickButton != null) {
            fastClickButton.setAllCaps(false);
            if (this.f76102l.getLoginBtnWidth() != 0) {
                this.f76097g.getLayoutParams().width = i.a(this, this.f76102l.getLoginBtnWidth());
            }
            if (this.f76102l.getLoginBtnHeight() != 0) {
                this.f76097g.getLayoutParams().height = i.a(this, this.f76102l.getLoginBtnHeight());
            }
            if (!TextUtils.isEmpty(this.f76102l.getLoginBtnText())) {
                this.f76097g.setText(this.f76102l.getLoginBtnText());
            }
            if (this.f76102l.getLoginBtnTextColor() != 0) {
                this.f76097g.setTextColor(this.f76102l.getLoginBtnTextColor());
            }
            if (this.f76102l.getLoginBtnTextSize() != 0) {
                this.f76097g.setTextSize(this.f76102l.getLoginBtnTextSize());
            } else if (this.f76102l.getLoginBtnTextDpSize() != 0) {
                this.f76097g.setTextSize(1, this.f76102l.getLoginBtnTextDpSize());
            }
            if (this.f76102l.getLoginBtnTopYOffset() != 0) {
                i.d(this.f76097g, this.f76102l.getLoginBtnTopYOffset());
            }
            if (this.f76102l.getLoginBtnBottomYOffset() != 0) {
                i.a(this.f76097g, this.f76102l.getLoginBtnBottomYOffset());
            }
            if (this.f76102l.getLoginBtnXOffset() != 0) {
                i.e(this.f76097g, this.f76102l.getLoginBtnXOffset());
            } else {
                i.b(this.f76097g);
            }
            if (this.f76102l.getLoginBtnBackgroundDrawable() != null) {
                this.f76097g.setBackground(this.f76102l.getLoginBtnBackgroundDrawable());
            } else if (!TextUtils.isEmpty(this.f76102l.getLoginBtnBackgroundRes())) {
                this.f76097g.setBackground(this.f76109s.b(this.f76102l.getLoginBtnBackgroundRes()));
            }
            this.f76097g.setOnClickListener(new b());
        }
    }

    private void h() {
        RelativeLayout.LayoutParams layoutParams;
        ImageView imageView = (ImageView) findViewById(R.id.yd_iv_logo);
        if (imageView != null) {
            int logoWidth = this.f76102l.getLogoWidth();
            int logoHeight = this.f76102l.getLogoHeight();
            if (logoWidth != 0 || logoHeight != 0) {
                if (logoWidth == 0) {
                    layoutParams = new RelativeLayout.LayoutParams(i.a((Context) this, 70.0f), i.a(this, logoHeight));
                } else {
                    layoutParams = logoHeight == 0 ? new RelativeLayout.LayoutParams(i.a(this, logoWidth), i.a((Context) this, 70.0f)) : new RelativeLayout.LayoutParams(i.a(this, logoWidth), i.a(this, logoHeight));
                }
                imageView.setLayoutParams(layoutParams);
            }
            if (this.f76102l.getLogoTopYOffset() != 0) {
                i.d(imageView, this.f76102l.getLogoTopYOffset());
            }
            if (this.f76102l.getLogoBottomYOffset() != 0) {
                i.a(imageView, this.f76102l.getLogoBottomYOffset());
            }
            if (this.f76102l.getLogoXOffset() != 0) {
                i.e(imageView, this.f76102l.getLogoXOffset());
            } else {
                i.b(imageView);
            }
            if (this.f76102l.getLogoIconDrawable() != null) {
                imageView.setImageDrawable(this.f76102l.getLogoIconDrawable());
            } else if (!TextUtils.isEmpty(this.f76102l.getLogoIconName())) {
                imageView.setImageResource(this.f76109s.c(this.f76102l.getLogoIconName()));
            }
            if (this.f76102l.isHideLogo()) {
                imageView.setVisibility(4);
            }
        }
    }

    private void a(Intent intent) {
        if ("cu".equals(intent.getStringExtra("operatorType"))) {
            this.f76108r = true;
        }
        if (this.f76108r) {
            TextView textView = this.f76094d;
            if (textView != null) {
                textView.setText(com.netease.nis.quicklogin.utils.e.f76142d);
            }
            a(1);
        } else {
            TextView textView2 = this.f76094d;
            if (textView2 != null) {
                textView2.setText(com.netease.nis.quicklogin.utils.e.f76145g);
            }
            a(2);
        }
        String stringExtra = intent.getStringExtra("maskNumber");
        this.f76104n = stringExtra;
        EditText editText = this.f76091a;
        if (editText != null && stringExtra != null) {
            editText.setText(stringExtra);
        }
        this.f76103m = intent.getStringExtra("accessToken");
        this.f76105o = intent.getStringExtra("gwAuth");
        this.f76106p = intent.getStringExtra("ydToken");
        this.f76107q = intent.getStringExtra("appKey");
    }

    private String a(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("accessToken", str);
            jSONObject.put("phone", this.f76104n);
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("randomId", str2);
            }
            if (TextUtils.isEmpty(this.f76107q)) {
                return str;
            }
            if (this.f76107q.length() >= 16) {
                return com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), this.f76107q.substring(0, 16), this.f76107q.substring(0, 12));
            }
            StringBuilder sb2 = new StringBuilder(this.f76107q);
            for (int i10 = 0; i10 < 16 - this.f76107q.length(); i10++) {
                sb2.append("a");
            }
            return com.netease.nis.quicklogin.utils.c.b(jSONObject.toString(), sb2.toString(), sb2.substring(0, 12));
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11) {
        try {
            UnifyUiConfig unifyUiConfig = this.f76102l;
            if (unifyUiConfig == null || unifyUiConfig.getClickEventListener() == null) {
                return;
            }
            this.f76102l.getClickEventListener().onClick(i10, i11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(int i10) {
        LinearLayout linearLayout;
        if (this.f76102l == null || (linearLayout = (LinearLayout) findViewById(R.id.yd_ll_protocol)) == null) {
            return;
        }
        RelativeLayout relativeLayout = (RelativeLayout) linearLayout.findViewById(R.id.yd_rl_privacy);
        if (this.f76102l.isHidePrivacyCheckBox()) {
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
        } else if (this.f76102l.getCheckBoxGravity() != 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) relativeLayout.getLayoutParams();
            layoutParams.gravity = this.f76102l.getCheckBoxGravity();
            relativeLayout.setLayoutParams(layoutParams);
        }
        if (this.f76102l.getPrivacyCheckBoxWidth() != 0) {
            this.f76092b.getLayoutParams().width = i.a(this, this.f76102l.getPrivacyCheckBoxWidth());
        }
        if (this.f76102l.getPrivacyCheckBoxHeight() != 0) {
            this.f76092b.getLayoutParams().height = i.a(this, this.f76102l.getPrivacyCheckBoxHeight());
        }
        if (this.f76102l.isPrivacyState()) {
            this.f76092b.setChecked(true);
            if (this.f76102l.getCheckedImageDrawable() != null) {
                this.f76092b.setBackground(this.f76102l.getCheckedImageDrawable());
            } else if (!TextUtils.isEmpty(this.f76102l.getCheckedImageName())) {
                this.f76092b.setBackgroundResource(this.f76109s.c(this.f76102l.getCheckedImageName()));
            }
        } else {
            this.f76092b.setChecked(false);
            if (this.f76102l.getUnCheckedImageNameDrawable() != null) {
                this.f76092b.setBackground(this.f76102l.getUnCheckedImageNameDrawable());
            } else if (!TextUtils.isEmpty(this.f76102l.getUnCheckedImageName())) {
                this.f76092b.setBackgroundResource(this.f76109s.c(this.f76102l.getUnCheckedImageName()));
            }
        }
        this.f76092b.setOnCheckedChangeListener(new c());
        TextView textView = this.f76093c;
        if (textView != null) {
            textView.setOnClickListener(new d());
            if (this.f76102l.getPrivacyLineSpacingAdd() != 0.0f) {
                this.f76093c.setLineSpacing(i.a(this, this.f76102l.getPrivacyLineSpacingAdd()), this.f76102l.getPrivacyLineSpacingMul() > 0.0f ? this.f76102l.getPrivacyLineSpacingMul() : 1.0f);
            }
            com.netease.nis.quicklogin.utils.a.a(i10, this.f76102l, this.f76093c);
            if (this.f76102l.getPrivacySize() != 0) {
                this.f76093c.setTextSize(this.f76102l.getPrivacySize());
            } else if (this.f76102l.getPrivacyDpSize() != 0) {
                this.f76093c.setTextSize(1, this.f76102l.getPrivacyDpSize());
            }
            if (this.f76102l.getPrivacyTextMarginLeft() != 0) {
                i.b(this.f76093c, this.f76102l.getPrivacyTextMarginLeft());
            }
            if (this.f76102l.getPrivacyTopYOffset() != 0 && this.f76102l.getPrivacyBottomYOffset() == 0) {
                i.d(linearLayout, this.f76102l.getPrivacyTopYOffset() + i.c(this));
            }
            if (this.f76102l.getPrivacyBottomYOffset() != 0) {
                i.a(linearLayout, this.f76102l.getPrivacyBottomYOffset());
            }
            if (this.f76102l.getPrivacyMarginLeft() != 0) {
                i.e(linearLayout, this.f76102l.getPrivacyMarginLeft());
            } else {
                i.c(linearLayout);
            }
            if (this.f76102l.getPrivacyMarginRight() != 0) {
                i.c(this.f76093c, this.f76102l.getPrivacyMarginRight());
            }
            if (this.f76102l.isPrivacyTextGravityCenter()) {
                this.f76093c.setGravity(17);
            }
            if (this.f76102l.getPrivacyTextLayoutGravity() != 0) {
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f76093c.getLayoutParams();
                layoutParams2.gravity = this.f76102l.getPrivacyTextLayoutGravity();
                this.f76093c.setLayoutParams(layoutParams2);
            }
        }
    }

    private void a() {
        ArrayList<LoginUiHelper.a> customViewHolders = this.f76102l.getCustomViewHolders();
        if (customViewHolders == null) {
            return;
        }
        for (LoginUiHelper.a aVar : customViewHolders) {
            if (aVar.f76131a != null) {
                a(aVar);
            }
        }
    }

    private void a(LoginUiHelper.a aVar) {
        if (aVar.f76131a.getParent() != null && (aVar.f76131a.getParent() instanceof ViewGroup)) {
            ((ViewGroup) aVar.f76131a.getParent()).removeView(aVar.f76131a);
        }
        int i10 = aVar.f76132b;
        if (i10 == 1) {
            this.f76098h.addView(aVar.f76131a);
        } else if (i10 == 0) {
            this.f76099i.addView(aVar.f76131a);
        } else if (i10 == 2) {
            this.f76100j.addView(aVar.f76131a);
        }
        View view = aVar.f76131a;
        if (view != null) {
            view.setOnClickListener(new e(this, aVar));
        }
    }
}
