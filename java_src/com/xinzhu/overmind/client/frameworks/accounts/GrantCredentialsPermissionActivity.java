package com.xinzhu.overmind.client.frameworks.accounts;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import java.io.IOException;
import l8.c;

/* JADX INFO: loaded from: classes8.dex */
public class GrantCredentialsPermissionActivity extends Activity implements View.OnClickListener {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f89265g = "account";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f89266h = "authTokenType";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f89267i = "response";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f89268j = "uid";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Account f89269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f89270c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f89271d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Bundle f89272e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected LayoutInflater f89273f;

    class a implements AccountManagerCallback<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f89274b;

        /* JADX INFO: renamed from: com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity$a$a, reason: collision with other inner class name */
        class RunnableC1099a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f89276b;

            RunnableC1099a(String str) {
                this.f89276b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (GrantCredentialsPermissionActivity.this.isFinishing()) {
                    return;
                }
                a.this.f89274b.setText(this.f89276b);
                a.this.f89274b.setVisibility(0);
            }
        }

        a(TextView textView) {
            this.f89274b = textView;
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture<String> accountManagerFuture) {
            try {
                String result = accountManagerFuture.getResult();
                if (TextUtils.isEmpty(result)) {
                    return;
                }
                GrantCredentialsPermissionActivity.this.runOnUiThread(new RunnableC1099a(result));
            } catch (AuthenticatorException | OperationCanceledException | IOException unused) {
            }
        }
    }

    private String a(Account account) {
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            if (authenticatorDescription.type.equals(account.type)) {
                try {
                    return createPackageContext(authenticatorDescription.packageName, 0).getString(authenticatorDescription.labelId);
                } catch (PackageManager.NameNotFoundException unused) {
                    return account.type;
                } catch (Resources.NotFoundException unused2) {
                    return account.type;
                }
            }
        }
        return account.type;
    }

    private View b(String str) {
        View viewInflate = this.f89273f.inflate(q9.a.b.n(), (ViewGroup) null);
        ((TextView) viewInflate.findViewById(q9.a.C1238a.s())).setText(str);
        return viewInflate;
    }

    public final void c(Bundle bundle) {
        this.f89272e = bundle;
    }

    @Override // android.app.Activity
    public void finish() {
        AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) getIntent().getParcelableExtra(f89267i);
        if (accountAuthenticatorResponse != null) {
            Bundle bundle = this.f89272e;
            if (bundle != null) {
                accountAuthenticatorResponse.onResult(bundle);
            } else {
                accountAuthenticatorResponse.onError(4, "canceled");
            }
        }
        super.finish();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == q9.a.C1238a.o()) {
            MindAccountManagerService.get().updateAppPermission(this.f89269b, this.f89270c, this.f89271d, true);
            Intent intent = new Intent();
            intent.putExtra("retry", true);
            setResult(-1, intent);
            c(intent.getExtras());
        } else if (view.getId() == q9.a.C1238a.q()) {
            MindAccountManagerService.get().updateAppPermission(this.f89269b, this.f89270c, this.f89271d, false);
            setResult(0);
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(q9.a.b.m());
        setTitle(q9.a.c.f());
        this.f89273f = (LayoutInflater) getSystemService("layout_inflater");
        Bundle extras = getIntent().getExtras();
        if (extras == null) {
            setResult(0);
            finish();
            return;
        }
        this.f89269b = (Account) extras.getParcelable(f89265g);
        this.f89270c = extras.getString("authTokenType");
        this.f89271d = extras.getInt("uid");
        PackageManager packageManager = getPackageManager();
        String[] packagesForUid = packageManager.getPackagesForUid(this.f89271d);
        Account account = this.f89269b;
        if (account == null || this.f89270c == null || packagesForUid == null) {
            setResult(0);
            finish();
            return;
        }
        try {
            String strA = a(account);
            TextView textView = (TextView) findViewById(q9.a.C1238a.p());
            textView.setVisibility(8);
            new c(AccountManager.get(this)).f(this.f89269b.type, this.f89270c, new a(textView), null);
            findViewById(q9.a.C1238a.o()).setOnClickListener(this);
            findViewById(q9.a.C1238a.q()).setOnClickListener(this);
            LinearLayout linearLayout = (LinearLayout) findViewById(q9.a.C1238a.t());
            for (String string : packagesForUid) {
                try {
                    string = packageManager.getApplicationLabel(packageManager.getApplicationInfo(string, 0)).toString();
                } catch (PackageManager.NameNotFoundException unused) {
                }
                linearLayout.addView(b(string));
            }
            ((TextView) findViewById(q9.a.C1238a.k())).setText(this.f89269b.name);
            ((TextView) findViewById(q9.a.C1238a.n())).setText(strA);
        } catch (IllegalArgumentException unused2) {
            setResult(0);
            finish();
        }
    }
}
