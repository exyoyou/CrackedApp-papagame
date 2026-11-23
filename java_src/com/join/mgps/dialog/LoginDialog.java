package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes3.dex */
public class LoginDialog extends Dialog {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f67334i = 1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f67335j = 2;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f67336k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f67337l = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f67338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f67339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f67340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f67341e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f67342f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private d f67343g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private c f67344h;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StyleType {
    }

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LoginDialog.this.f67344h != null) {
                LoginDialog.this.f67344h.a(LoginDialog.this, 0);
            } else {
                LoginDialog.this.dismiss();
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (LoginDialog.this.f67343g != null) {
                LoginDialog.this.f67343g.a(LoginDialog.this, 1);
            } else {
                LoginDialog.this.dismiss();
                IntentUtil.getInstance().goMyAccountLoginActivity(view.getContext());
            }
        }
    }

    public interface c {
        void a(LoginDialog dialog, int flag);
    }

    public interface d {
        void a(LoginDialog dialog, int flag);
    }

    public LoginDialog(@NonNull Context context) {
        super(context, R.style.PapaTheme_Dialog);
        this.f67341e = 1;
        this.f67342f = false;
    }

    public static LoginDialog e(@NonNull Context context) {
        return new LoginDialog(context);
    }

    public LoginDialog c(boolean cancelable) {
        this.f67342f = cancelable;
        return this;
    }

    public LoginDialog d(c l10) {
        this.f67344h = l10;
        return this;
    }

    public LoginDialog f(d l10) {
        this.f67343g = l10;
        return this;
    }

    public LoginDialog g(int style) {
        this.f67341e = style;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(this.f67342f);
        setContentView(R.layout.mg_dialog_login);
        this.f67338b = findViewById(R.id.main);
        this.f67339c = findViewById(R.id.vOK);
        this.f67340d = findViewById(R.id.vCancel);
        int i10 = this.f67341e;
        if (i10 == 1) {
            this.f67338b.setBackgroundResource(R.drawable.bg_login_normal);
        } else if (i10 == 2) {
            this.f67338b.setBackgroundResource(R.drawable.bg_login_battle);
        } else if (i10 == 3) {
            this.f67338b.setBackgroundResource(R.drawable.bg_login_interactive);
        } else if (i10 == 4) {
            this.f67338b.setBackgroundResource(R.drawable.bg_login_net_game);
        }
        this.f67340d.setOnClickListener(new a());
        this.f67339c.setOnClickListener(new b());
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getAction() == 0 && this.f67342f) {
            dismiss();
        }
        return super.onKeyDown(keyCode, event);
    }
}
