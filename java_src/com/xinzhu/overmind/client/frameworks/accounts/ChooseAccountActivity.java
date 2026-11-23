package com.xinzhu.overmind.client.frameworks.accounts;

import android.R;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.xinzhu.overmind.server.accounts.AccountManagerResponse;
import com.xinzhu.overmind.server.am.f;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.util.HashMap;

/* JADX INFO: loaded from: classes8.dex */
public class ChooseAccountActivity extends Activity {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f89214h = "AccountManager";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bundle f89217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f89218e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f89219f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Parcelable[] f89215b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AccountManagerResponse f89216c = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private HashMap<String, AuthenticatorDescription> f89220g = new HashMap<>();

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            ChooseAccountActivity.this.c((ListView) adapterView, view, i10, j10);
        }
    }

    private static class b extends ArrayAdapter<c> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LayoutInflater f89222b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private c[] f89223c;

        public b(Context context, int i10, c[] cVarArr) {
            super(context, i10, cVarArr);
            this.f89223c = cVarArr;
            this.f89222b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            d dVar;
            if (view == null) {
                view = this.f89222b.inflate(q9.a.b.j(), (ViewGroup) null);
                dVar = new d(null);
                dVar.f89227b = (TextView) view.findViewById(q9.a.C1238a.m());
                dVar.f89226a = (ImageView) view.findViewById(q9.a.C1238a.l());
                view.setTag(dVar);
            } else {
                dVar = (d) view.getTag();
            }
            dVar.f89227b.setText(this.f89223c[i10].f89224a);
            dVar.f89226a.setImageDrawable(this.f89223c[i10].f89225b);
            return view;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f89224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Drawable f89225b;

        c(String str, Drawable drawable) {
            this.f89224a = str;
            this.f89225b = drawable;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f89226a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f89227b;

        private d() {
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private void a() {
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            this.f89220g.put(authenticatorDescription.type, authenticatorDescription);
        }
    }

    private Drawable b(String str) {
        if (this.f89220g.containsKey(str)) {
            try {
                AuthenticatorDescription authenticatorDescription = this.f89220g.get(str);
                return createPackageContext(authenticatorDescription.packageName, 0).getDrawable(authenticatorDescription.iconId);
            } catch (PackageManager.NameNotFoundException unused) {
                if (Log.isLoggable(f89214h, 5)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("No icon name for account type ");
                    sb2.append(str);
                }
            } catch (Resources.NotFoundException unused2) {
                if (Log.isLoggable(f89214h, 5)) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("No icon resource for account type ");
                    sb3.append(str);
                }
            }
        }
        return null;
    }

    protected void c(ListView listView, View view, int i10, long j10) {
        Account account = (Account) this.f89215b[i10];
        com.xinzhu.overmind.client.frameworks.accounts.a aVar = com.xinzhu.overmind.client.frameworks.accounts.a.get();
        Integer numValueOf = Integer.valueOf(aVar.getAccountVisibility(account, this.f89219f));
        if (numValueOf != null && numValueOf.intValue() == 4) {
            aVar.setAccountVisibility(account, this.f89219f, 2);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("selected account ");
        sb2.append(account);
        Bundle bundle = new Bundle();
        bundle.putString("authAccount", account.name);
        bundle.putString("accountType", account.type);
        this.f89217d = bundle;
        finish();
    }

    @Override // android.app.Activity
    public void finish() {
        AccountManagerResponse accountManagerResponse = this.f89216c;
        if (accountManagerResponse != null) {
            Bundle bundle = this.f89217d;
            if (bundle != null) {
                accountManagerResponse.b(bundle);
            } else {
                accountManagerResponse.a(4, "canceled");
            }
        }
        super.finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        c[] cVarArr;
        super.onCreate(bundle);
        this.f89215b = getIntent().getParcelableArrayExtra("accounts");
        this.f89216c = (AccountManagerResponse) getIntent().getParcelableExtra("accountManagerResponse");
        int i10 = 0;
        if (this.f89215b == null) {
            setResult(0);
            finish();
            return;
        }
        try {
            IBinder iBinderG = new com.xinzhu.haunted.android.app.a(this).g();
            this.f89218e = f.get().getLaunchedFromUid(iBinderG);
            this.f89219f = f.get().getLaunchedFromPackage(iBinderG);
            while (true) {
                Parcelable[] parcelableArr = this.f89215b;
                if (i10 >= parcelableArr.length) {
                    setContentView(q9.a.b.i());
                    ListView listView = (ListView) findViewById(R.id.list);
                    listView.setAdapter((ListAdapter) new b(this, R.layout.simple_list_item_1, cVarArr));
                    listView.setChoiceMode(1);
                    listView.setTextFilterEnabled(true);
                    listView.setOnItemClickListener(new a());
                    return;
                }
                Parcelable parcelable = parcelableArr[i10];
                cVarArr[i10] = new c(((Account) parcelable).name, b(((Account) parcelable).type));
                i10++;
            }
        } catch (RemoteException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unable to get caller identity \n");
            sb2.append(e10);
        }
        if (MindUserHandle.B(this.f89218e, 1000) && getIntent().getStringExtra("androidPackageName") != null) {
            this.f89219f = getIntent().getStringExtra("androidPackageName");
        }
        if (!MindUserHandle.B(this.f89218e, 1000) && getIntent().getStringExtra("androidPackageName") != null) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Non-system Uid: ");
            sb3.append(this.f89218e);
            sb3.append(" tried to override packageName \n");
        }
        a();
        cVarArr = new c[this.f89215b.length];
    }
}
