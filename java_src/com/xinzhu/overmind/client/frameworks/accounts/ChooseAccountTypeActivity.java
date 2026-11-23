package com.xinzhu.overmind.client.frameworks.accounts;

import android.R;
import android.accounts.AccountManager;
import android.accounts.AuthenticatorDescription;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class ChooseAccountTypeActivity extends Activity {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f89228d = "AccountChooser";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, c> f89229b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<c> f89230c;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            ChooseAccountTypeActivity chooseAccountTypeActivity = ChooseAccountTypeActivity.this;
            chooseAccountTypeActivity.d(((c) chooseAccountTypeActivity.f89230c.get(i10)).f89234a.type);
        }
    }

    private static class b extends ArrayAdapter<c> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LayoutInflater f89232b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ArrayList<c> f89233c;

        public b(Context context, int i10, ArrayList<c> arrayList) {
            super(context, i10, arrayList);
            this.f89233c = arrayList;
            this.f89232b = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            d dVar;
            if (view == null) {
                view = this.f89232b.inflate(q9.a.b.j(), (ViewGroup) null);
                dVar = new d(null);
                dVar.f89238b = (TextView) view.findViewById(q9.a.C1238a.m());
                dVar.f89237a = (ImageView) view.findViewById(q9.a.C1238a.l());
                view.setTag(dVar);
            } else {
                dVar = (d) view.getTag();
            }
            dVar.f89238b.setText(this.f89233c.get(i10).f89235b);
            dVar.f89237a.setImageDrawable(this.f89233c.get(i10).f89236c);
            return view;
        }
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final AuthenticatorDescription f89234a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f89235b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Drawable f89236c;

        c(AuthenticatorDescription authenticatorDescription, String str, Drawable drawable) {
            this.f89234a = authenticatorDescription;
            this.f89235b = str;
            this.f89236c = drawable;
        }
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        ImageView f89237a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        TextView f89238b;

        private d() {
        }

        /* synthetic */ d(a aVar) {
            this();
        }
    }

    private void c() {
        Drawable drawable;
        String string;
        for (AuthenticatorDescription authenticatorDescription : AccountManager.get(this).getAuthenticatorTypes()) {
            try {
                Context contextCreatePackageContext = createPackageContext(authenticatorDescription.packageName, 0);
                drawable = contextCreatePackageContext.getDrawable(authenticatorDescription.iconId);
                try {
                    CharSequence text = contextCreatePackageContext.getResources().getText(authenticatorDescription.labelId);
                    if (text != null) {
                        text.toString();
                    }
                    string = text.toString();
                } catch (PackageManager.NameNotFoundException unused) {
                    if (Log.isLoggable(f89228d, 5)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("No icon name for account type ");
                        sb2.append(authenticatorDescription.type);
                    }
                    string = null;
                } catch (Resources.NotFoundException unused2) {
                    if (Log.isLoggable(f89228d, 5)) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("No icon resource for account type ");
                        sb3.append(authenticatorDescription.type);
                    }
                    string = null;
                }
            } catch (PackageManager.NameNotFoundException unused3) {
                drawable = null;
            } catch (Resources.NotFoundException unused4) {
                drawable = null;
            }
            this.f89229b.put(authenticatorDescription.type, new c(authenticatorDescription, string, drawable));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("accountType", str);
        setResult(-1, new Intent().putExtras(bundle));
        if (Log.isLoggable(f89228d, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ChooseAccountTypeActivity.setResultAndFinish: selected account type ");
            sb2.append(str);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        HashSet hashSet;
        super.onCreate(bundle);
        if (Log.isLoggable(f89228d, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ChooseAccountTypeActivity.onCreate(savedInstanceState=");
            sb2.append(bundle);
            sb2.append(")");
        }
        String[] stringArrayExtra = getIntent().getStringArrayExtra(ChooseTypeAndAccountActivity.f89241s);
        if (stringArrayExtra != null) {
            hashSet = new HashSet(stringArrayExtra.length);
            for (String str : stringArrayExtra) {
                hashSet.add(str);
            }
        } else {
            hashSet = null;
        }
        c();
        this.f89230c = new ArrayList<>(this.f89229b.size());
        for (Map.Entry<String, c> entry : this.f89229b.entrySet()) {
            String key = entry.getKey();
            c value = entry.getValue();
            if (hashSet == null || hashSet.contains(key)) {
                this.f89230c.add(value);
            }
        }
        if (this.f89230c.isEmpty()) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("errorMessage", "no allowable account types");
            setResult(-1, new Intent().putExtras(bundle2));
            finish();
            return;
        }
        if (this.f89230c.size() == 1) {
            d(this.f89230c.get(0).f89234a.type);
            return;
        }
        setContentView(q9.a.b.k());
        ListView listView = (ListView) findViewById(R.id.list);
        listView.setAdapter((ListAdapter) new b(this, R.layout.simple_list_item_1, this.f89230c));
        listView.setChoiceMode(0);
        listView.setTextFilterEnabled(false);
        listView.setOnItemClickListener(new a());
    }
}
