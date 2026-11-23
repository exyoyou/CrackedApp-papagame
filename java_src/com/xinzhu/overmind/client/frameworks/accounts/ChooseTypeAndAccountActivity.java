package com.xinzhu.overmind.client.frameworks.accounts;

import android.R;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import android.accounts.AuthenticatorDescription;
import android.accounts.AuthenticatorException;
import android.accounts.OperationCanceledException;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.haima.hmcp.Constants;
import com.xinzhu.overmind.server.accounts.MindAccountManagerService;
import com.xinzhu.overmind.server.am.f;
import com.xinzhu.overmind.server.user.MindUserHandle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes8.dex */
public class ChooseTypeAndAccountActivity extends Activity implements AccountManagerCallback<Bundle> {
    public static final int A = 1;
    public static final int B = 2;
    private static final String C = "pendingRequest";
    private static final String D = "existingAccounts";
    private static final String E = "selectedAccountName";
    private static final String F = "selectedAddAccount";
    private static final String G = "accountsList";
    private static final String H = "visibilityList";
    private static final int I = -1;
    private static final ComponentName J = ComponentName.unflattenFromString(Resources.getSystem().getString(q9.a.c.e()));

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f89239q = "AccountChooser";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f89240r = "allowableAccounts";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f89241s = "allowableAccountTypes";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f89242t = "addAccountOptions";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f89243u = "addAccountRequiredFeatures";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f89244v = "authTokenType";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f89245w = "selectedAccount";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Deprecated
    public static final String f89246x = "alwaysPromptForAccount";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f89247y = "descriptionTextOverride";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f89248z = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Set<Account> f89249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set<String> f89250c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f89253f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private LinkedHashMap<Account, Integer> f89254g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ArrayList<Account> f89255h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f89258k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Button f89259l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f89260m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f89261n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f89262o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f89263p;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f89251d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f89252e = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f89256i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Parcelable[] f89257j = null;

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            ChooseTypeAndAccountActivity.this.f89258k = i10;
            ChooseTypeAndAccountActivity.this.f89259l.setEnabled(true);
        }
    }

    private LinkedHashMap<Account, Integer> c(com.xinzhu.overmind.client.frameworks.accounts.a aVar) {
        Set<String> set;
        Map accountsAndVisibilityForPackage = aVar.getAccountsAndVisibilityForPackage(this.f89261n, null);
        Account[] accountsAsUser = aVar.getAccountsAsUser(null, MindUserHandle.x(1000), null);
        LinkedHashMap<Account, Integer> linkedHashMap = new LinkedHashMap<>(accountsAndVisibilityForPackage.size());
        for (Account account : accountsAsUser) {
            Set<Account> set2 = this.f89249b;
            if ((set2 == null || set2.contains(account)) && (((set = this.f89250c) == null || set.contains(account.type)) && accountsAndVisibilityForPackage.get(account) != null)) {
                linkedHashMap.put(account, (Integer) accountsAndVisibilityForPackage.get(account));
            }
        }
        return linkedHashMap;
    }

    private Set<Account> d(Intent intent) {
        ArrayList parcelableArrayListExtra = intent.getParcelableArrayListExtra(f89240r);
        if (parcelableArrayListExtra == null) {
            return null;
        }
        HashSet hashSet = new HashSet(parcelableArrayListExtra.size());
        Iterator it2 = parcelableArrayListExtra.iterator();
        while (it2.hasNext()) {
            hashSet.add((Account) ((Parcelable) it2.next()));
        }
        return hashSet;
    }

    private int e(ArrayList<Account> arrayList, String str, boolean z10) {
        if (z10) {
            return arrayList.size();
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            if (arrayList.get(i10).name.equals(str)) {
                return i10;
            }
        }
        return -1;
    }

    private String[] f(ArrayList<Account> arrayList) {
        String[] strArr = new String[arrayList.size() + (!this.f89262o ? 1 : 0)];
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            strArr[i10] = arrayList.get(i10).name;
        }
        if (!this.f89262o) {
            strArr[arrayList.size()] = getResources().getString(q9.a.c.d());
        }
        return strArr;
    }

    private Set<String> g(Intent intent) {
        String[] stringArrayExtra = intent.getStringArrayExtra(f89241s);
        AuthenticatorDescription[] authenticatorTypes = AccountManager.get(this).getAuthenticatorTypes();
        HashSet hashSet = new HashSet(authenticatorTypes.length);
        for (AuthenticatorDescription authenticatorDescription : authenticatorTypes) {
            hashSet.add(authenticatorDescription.type);
        }
        if (stringArrayExtra == null) {
            return hashSet;
        }
        HashSet hashSet2 = new HashSet(Arrays.asList(stringArrayExtra));
        hashSet2.retainAll(hashSet);
        return hashSet2;
    }

    public static boolean h(Intent intent) {
        return J.equals(intent.getComponent());
    }

    private void i(Account account) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("selected account ");
        sb2.append(account);
        n(account.name, account.type);
    }

    private void j(String str) {
        TextView textView = (TextView) findViewById(q9.a.C1238a.r());
        if (TextUtils.isEmpty(str)) {
            textView.setVisibility(8);
        } else {
            textView.setText(str);
        }
    }

    private final void k(String[] strArr) {
        ListView listView = (ListView) findViewById(R.id.list);
        listView.setAdapter((ListAdapter) new ArrayAdapter(this, R.layout.simple_list_item_single_choice, strArr));
        listView.setChoiceMode(1);
        listView.setItemsCanFocus(false);
        listView.setOnItemClickListener(new a());
        int i10 = this.f89258k;
        if (i10 != -1) {
            listView.setItemChecked(i10, true);
            if (Log.isLoggable(f89239q, 2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("List item ");
                sb2.append(this.f89258k);
                sb2.append(" should be selected");
            }
        }
    }

    private void m(Bundle bundle) {
        setTheme(q9.a.d.b());
        super.onCreate(bundle);
    }

    private void n(String str, String str2) {
        Account account = new Account(str, str2);
        Integer numValueOf = Integer.valueOf(MindAccountManagerService.get().getAccountVisibility(account, this.f89261n));
        if (numValueOf != null && numValueOf.intValue() == 4) {
            MindAccountManagerService.get().setAccountVisibility(account, this.f89261n, 2);
        }
        if (numValueOf != null && numValueOf.intValue() == 3) {
            setResult(0);
            finish();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("authAccount", str);
        bundle.putString("accountType", str2);
        setResult(-1, new Intent().putExtras(bundle));
        if (Log.isLoggable(f89239q, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ChooseTypeAndAccountActivity.setResultAndFinish: selected account ");
            sb2.append(str);
            sb2.append(", ");
            sb2.append(str2);
        }
        finish();
    }

    private void o() {
        Intent intent = new Intent(this, (Class<?>) ChooseAccountTypeActivity.class);
        intent.setFlags(524288);
        intent.putExtra(f89241s, getIntent().getStringArrayExtra(f89241s));
        intent.putExtra(f89242t, getIntent().getBundleExtra(f89242t));
        intent.putExtra(f89243u, getIntent().getStringArrayExtra(f89243u));
        intent.putExtra("authTokenType", getIntent().getStringExtra("authTokenType"));
        startActivityForResult(intent, 1);
        this.f89256i = 1;
    }

    protected void l(String str) {
        if (Log.isLoggable(f89239q, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("runAddAccountForAuthenticator: ");
            sb2.append(str);
        }
        Bundle bundleExtra = getIntent().getBundleExtra(f89242t);
        String[] stringArrayExtra = getIntent().getStringArrayExtra(f89243u);
        AccountManager.get(this).addAccount(str, getIntent().getStringExtra("authTokenType"), stringArrayExtra, bundleExtra, null, this, null);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        String stringExtra;
        String stringExtra2;
        String stringExtra3 = null;
        if (Log.isLoggable(f89239q, 2)) {
            if (intent != null && intent.getExtras() != null) {
                intent.getExtras().keySet();
            }
            Bundle extras = intent != null ? intent.getExtras() : null;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ChooseTypeAndAccountActivity.onActivityResult(reqCode=");
            sb2.append(i10);
            sb2.append(", resCode=");
            sb2.append(i11);
            sb2.append(", extras=");
            sb2.append(extras);
            sb2.append(")");
        }
        this.f89256i = 0;
        if (i11 == 0) {
            if (this.f89255h.isEmpty()) {
                setResult(0);
                finish();
                return;
            }
            return;
        }
        if (i11 == -1) {
            if (i10 == 1) {
                if (intent != null && (stringExtra2 = intent.getStringExtra("accountType")) != null) {
                    l(stringExtra2);
                    return;
                }
            } else if (i10 == 2) {
                if (intent != null) {
                    stringExtra3 = intent.getStringExtra("authAccount");
                    stringExtra = intent.getStringExtra("accountType");
                } else {
                    stringExtra = null;
                }
                if (stringExtra3 == null || stringExtra == null) {
                    MindAccountManagerService mindAccountManagerService = MindAccountManagerService.get();
                    String str = this.f89261n;
                    Account[] accountsForPackage = mindAccountManagerService.getAccountsForPackage(str, this.f89260m, str);
                    HashSet hashSet = new HashSet();
                    for (Parcelable parcelable : this.f89257j) {
                        hashSet.add((Account) parcelable);
                    }
                    for (Account account : accountsForPackage) {
                        if (!hashSet.contains(account)) {
                            stringExtra3 = account.name;
                            stringExtra = account.type;
                            break;
                        }
                    }
                }
                if (stringExtra3 != null || stringExtra != null) {
                    n(stringExtra3, stringExtra);
                    return;
                }
            }
        }
        setResult(0);
        finish();
    }

    public void onCancelButtonClicked(View view) {
        onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        if (Log.isLoggable(f89239q, 2)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("ChooseTypeAndAccountActivity.onCreate(savedInstanceState=");
            sb2.append(bundle);
            sb2.append(")");
        }
        try {
            IBinder iBinderG = new com.xinzhu.haunted.android.app.a(this).g();
            this.f89260m = f.get().getLaunchedFromUid(iBinderG);
            String launchedFromPackage = f.get().getLaunchedFromPackage(iBinderG);
            this.f89261n = launchedFromPackage;
            if (this.f89260m != 0 && launchedFromPackage != null) {
                this.f89262o = false;
            }
        } catch (RemoteException e10) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Unable to get caller identity \n");
            sb3.append(e10);
        }
        Intent intent = getIntent();
        this.f89249b = d(intent);
        this.f89250c = g(intent);
        this.f89253f = intent.getStringExtra(f89247y);
        if (bundle != null) {
            this.f89256i = bundle.getInt(C);
            this.f89257j = bundle.getParcelableArray(D);
            this.f89251d = bundle.getString(E);
            this.f89252e = bundle.getBoolean(F, false);
            Parcelable[] parcelableArray = bundle.getParcelableArray(G);
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(H);
            this.f89254g = new LinkedHashMap<>();
            for (int i10 = 0; i10 < parcelableArray.length; i10++) {
                this.f89254g.put((Account) parcelableArray[i10], integerArrayList.get(i10));
            }
        } else {
            this.f89256i = 0;
            this.f89257j = null;
            Account account = (Account) intent.getParcelableExtra(f89245w);
            if (account != null) {
                this.f89251d = account.name;
            }
            this.f89254g = c(com.xinzhu.overmind.client.frameworks.accounts.a.get());
        }
        if (Log.isLoggable(f89239q, 2)) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("selected account name is ");
            sb4.append(this.f89251d);
        }
        this.f89255h = new ArrayList<>(this.f89254g.size());
        for (Map.Entry<Account, Integer> entry : this.f89254g.entrySet()) {
            if (3 != entry.getValue().intValue()) {
                this.f89255h.add(entry.getKey());
            }
        }
        if (this.f89255h.isEmpty() && this.f89262o) {
            requestWindowFeature(1);
            setContentView(q9.a.b.h());
            this.f89263p = true;
        }
        if (this.f89263p) {
            super.onCreate(bundle);
            return;
        }
        if (this.f89256i == 0 && this.f89255h.isEmpty()) {
            m(bundle);
            if (this.f89250c.size() == 1) {
                l(this.f89250c.iterator().next());
            } else {
                o();
            }
        }
        String[] strArrF = f(this.f89255h);
        this.f89258k = e(this.f89255h, this.f89251d, this.f89252e);
        super.onCreate(bundle);
        setContentView(q9.a.b.l());
        j(this.f89253f);
        k(strArrF);
        Button button = (Button) findViewById(R.id.button2);
        this.f89259l = button;
        button.setEnabled(this.f89258k != -1);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    public void onOkButtonClicked(View view) {
        if (this.f89258k == this.f89255h.size()) {
            o();
            return;
        }
        int i10 = this.f89258k;
        if (i10 != -1) {
            i(this.f89255h.get(i10));
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(C, this.f89256i);
        if (this.f89256i == 2) {
            bundle.putParcelableArray(D, this.f89257j);
        }
        int i10 = this.f89258k;
        int i11 = 0;
        if (i10 != -1) {
            if (i10 == this.f89255h.size()) {
                bundle.putBoolean(F, true);
            } else {
                bundle.putBoolean(F, false);
                bundle.putString(E, this.f89255h.get(this.f89258k).name);
            }
        }
        Parcelable[] parcelableArr = new Parcelable[this.f89254g.size()];
        ArrayList<Integer> arrayList = new ArrayList<>(this.f89254g.size());
        for (Map.Entry<Account, Integer> entry : this.f89254g.entrySet()) {
            parcelableArr[i11] = entry.getKey();
            arrayList.add(entry.getValue());
            i11++;
        }
        bundle.putParcelableArray(G, parcelableArr);
        bundle.putIntegerArrayList(H, arrayList);
    }

    @Override // android.accounts.AccountManagerCallback
    public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
        try {
            Intent intent = (Intent) accountManagerFuture.getResult().getParcelable(Constants.WS_MESSAGE_TYPE_INTENT);
            if (intent != null) {
                this.f89256i = 2;
                MindAccountManagerService mindAccountManagerService = MindAccountManagerService.get();
                String str = this.f89261n;
                this.f89257j = mindAccountManagerService.getAccountsForPackage(str, this.f89260m, str);
                intent.setFlags(intent.getFlags() & (-268435457));
                startActivityForResult(intent, 2);
                return;
            }
        } catch (AuthenticatorException | IOException unused) {
        } catch (OperationCanceledException unused2) {
            setResult(0);
            finish();
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("errorMessage", "error communicating with server");
        setResult(-1, new Intent().putExtras(bundle));
        finish();
    }
}
