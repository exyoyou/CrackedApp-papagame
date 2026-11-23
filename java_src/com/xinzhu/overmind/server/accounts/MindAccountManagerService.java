package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.accounts.AccountAuthenticatorResponse;
import android.accounts.AuthenticatorDescription;
import android.accounts.IAccountAuthenticator;
import android.accounts.IAccountAuthenticatorResponse;
import android.accounts.IAccountManagerResponse;
import android.app.NotificationManager;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.ServiceConnection;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallback;
import android.os.RemoteException;
import android.os.SystemClock;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.AtomicFile;
import android.util.Pair;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.accounts.ChooseAccountActivity;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import com.xinzhu.overmind.os.BinderHelper;
import com.xinzhu.overmind.server.pm.MindPackageManagerService;
import com.xinzhu.overmind.server.pm.RegisteredServicesCache;
import com.xinzhu.overmind.server.user.MindUserHandle;
import com.xinzhu.overmind.server.user.MindUserInfo;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public class MindAccountManagerService extends com.xinzhu.overmind.server.accounts.e.b implements com.xinzhu.overmind.server.g {
    private static final String ACCOUNTS_FILE_AUTH_TOKEN = "authtoken.db";
    private static final String ACCOUNTS_FILE_DATA = "accounts.db";
    private static final String ACCOUNTS_FILE_PREVIOUS_NAME = "previous.db";
    private static final String ACCOUNTS_FILE_UID_GRANT = "grant.db";
    private static final String ACCOUNTS_FILE_USER_DATA = "userdata.db";
    private static final String ACCOUNTS_FILE_VISIBILITY = "visibility.db";
    public static final String ACCOUNT_ACCESS_TOKEN_TYPE = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE";
    public static final String ACTION_ACCOUNT_REMOVED = "android.accounts.action.ACCOUNT_REMOVED";
    public static final String ACTION_VISIBLE_ACCOUNTS_CHANGED = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED";
    public static final int ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE = 101;
    public static final int ERROR_CODE_USER_RESTRICTED = 100;
    public static final String KEY_ACCOUNT_ACCESS_ID = "accountAccessId";
    public static final String KEY_ACCOUNT_SESSION_BUNDLE = "accountSessionBundle";
    public static final String KEY_CUSTOM_TOKEN_EXPIRY = "android.accounts.expiry";
    public static final String KEY_LAST_AUTHENTICATED_TIME = "lastAuthenticatedTime";
    public static final String KEY_NOTIFY_ON_FAILURE = "notifyOnAuthFailure";
    private static final int MESSAGE_COPY_SHARED_ACCOUNT = 4;
    private static final int MESSAGE_TIMED_OUT = 3;
    public static final String PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE = "android:accounts:key_legacy_not_visible";
    public static final String PACKAGE_NAME_KEY_LEGACY_VISIBLE = "android:accounts:key_legacy_visible";
    private static final int SIGNATURE_CHECK_MATCH = 1;
    private static final int SIGNATURE_CHECK_MISMATCH = 0;
    private static final int SIGNATURE_CHECK_UID_MATCH = 2;
    private static final String TAG = "MAccountManagerService";
    public static final int VISIBILITY_NOT_VISIBLE = 3;
    public static final int VISIBILITY_UNDEFINED = 0;
    public static final int VISIBILITY_USER_MANAGED_NOT_VISIBLE = 4;
    public static final int VISIBILITY_USER_MANAGED_VISIBLE = 2;
    public static final int VISIBILITY_VISIBLE = 1;
    private final com.xinzhu.overmind.server.accounts.d mAuthenticatorCache;
    final t mHandler;
    private final com.xinzhu.overmind.server.pm.r mPackageMonitor;
    private final com.xinzhu.overmind.server.user.b mUserListener;
    private static final MindAccountManagerService sService = new MindAccountManagerService();
    private static final Account[] EMPTY_ACCOUNT_ARRAY = new Account[0];
    private static final byte[] ACCOUNTS_FILE_DATA_MAGIC = {65, 67, 67, 84};
    private static final byte[] ACCOUNTS_FILE_USER_DATA_MAGIC = {65, 67, 67, 85};
    private static final byte[] ACCOUNTS_FILE_AUTH_TOKEN_MAGIC = {65, 67, 67, 86};
    private static final byte[] ACCOUNTS_FILE_VISIBILITY_MAGIC = {65, 67, 67, 87};
    private static final byte[] ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC = {65, 67, 67, com.sigmob.sdk.archives.tar.e.S};
    private static final byte[] ACCOUNTS_FILE_UID_GRANT_MAGIC = {65, 67, 67, 89};
    private static final Intent ACCOUNTS_CHANGED_INTENT = new Intent("android.accounts.LOGIN_ACCOUNTS_CHANGED");
    private ma.i mUserManager = null;
    private Context mContext = Overmind.getContext();
    private final LinkedHashMap<String, x> mSessions = new LinkedHashMap<>();
    private final CopyOnWriteArrayList<v> mAppPermissionChangeListeners = new CopyOnWriteArrayList<>();
    private final SparseArray<a0> mUsers = new SparseArray<>();

    class a extends x {
        final /* synthetic */ String val$accountType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, String str3) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, z10, z11, str2, z12);
            this.val$accountType = str3;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.editProperties(this, this.mAccountType);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", editProperties, accountType " + this.val$accountType;
        }
    }

    static class a0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f89542a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f89543b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Map<Account, MindAccount> f89544c = new HashMap();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final HashMap<Pair<Pair<Account, String>, Integer>, u> f89545d = new HashMap<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final HashMap<Account, u> f89546e = new HashMap<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final HashMap<String, Account[]> f89547f = new LinkedHashMap();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Map<Account, Map<String, String>> f89548g = new HashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final Map<Account, Map<String, String>> f89549h = new HashMap();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final com.xinzhu.overmind.server.accounts.i f89550i = new com.xinzhu.overmind.server.accounts.i();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final Map<Account, Map<String, Integer>> f89551j = new HashMap();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final Map<String, Map<String, Integer>> f89552k = new HashMap();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final Map<Account, AtomicReference<String>> f89553l = new HashMap();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final List<UidGrant> f89554m = new LinkedList();

        a0(int i10) {
            this.f89542a = i10;
        }

        void l(Account account, String str, int i10) {
            synchronized (this.f89543b) {
                ListIterator<UidGrant> listIterator = this.f89554m.listIterator();
                while (listIterator.hasNext()) {
                    UidGrant next = listIterator.next();
                    if (next.f89539b == i10 && next.f89540c.equals(str) && next.f89541d.equals(account)) {
                        listIterator.remove();
                    }
                }
            }
        }

        void m(int i10) {
            synchronized (this.f89543b) {
                ListIterator<UidGrant> listIterator = this.f89554m.listIterator();
                while (listIterator.hasNext()) {
                    if (listIterator.next().f89539b == i10) {
                        listIterator.remove();
                    }
                }
            }
        }

        List<Integer> n() {
            LinkedList linkedList = new LinkedList();
            synchronized (this.f89543b) {
                Iterator<UidGrant> it2 = this.f89554m.iterator();
                while (it2.hasNext()) {
                    linkedList.add(Integer.valueOf(it2.next().f89539b));
                }
            }
            return linkedList;
        }

        long o(int i10, String str, Account account) {
            long j10;
            synchronized (this.f89543b) {
                j10 = 0;
                for (UidGrant uidGrant : this.f89554m) {
                    if (uidGrant.f89539b == i10 && uidGrant.f89540c.equals(str) && uidGrant.f89541d.equals(account)) {
                        j10++;
                    }
                }
            }
            return j10;
        }

        long p(int i10, Account account) {
            long j10;
            synchronized (this.f89543b) {
                j10 = 0;
                for (UidGrant uidGrant : this.f89554m) {
                    if (uidGrant.f89539b == i10 && uidGrant.f89541d.equals(account)) {
                        j10++;
                    }
                }
            }
            return j10;
        }

        void q(Account account, String str, int i10) {
            synchronized (this.f89543b) {
                this.f89554m.add(new UidGrant(i10, str, account));
            }
        }
    }

    class b extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ Bundle val$options;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, boolean z13, Account account, Bundle bundle) {
            super(a0Var, iAccountManagerResponse, str, z10, z11, str2, z12, z13);
            this.val$account = account;
            this.val$options = bundle;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.confirmCredentials(this, this.val$account, this.val$options);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", confirmCredentials, " + this.val$account;
        }
    }

    class c extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, String str3, String str4) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, z10, z11, str2, z12);
            this.val$accountType = str3;
            this.val$authTokenType = str4;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            if (bundle == null) {
                super.onResult(bundle);
                return;
            }
            String string = bundle.getString("authTokenLabelKey");
            Bundle bundle2 = new Bundle();
            bundle2.putString("authTokenLabelKey", string);
            super.onResult(bundle2);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.getAuthTokenLabel(this, this.val$authTokenType);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", getAuthTokenLabel, " + this.val$accountType + ", authTokenType " + this.val$authTokenType;
        }
    }

    class d extends y {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String[] val$requiredFeatures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, String str2, boolean z11, boolean z12, boolean z13, String str3, String[] strArr, Bundle bundle, String str4) {
            super(a0Var, iAccountManagerResponse, str, z10, str2, z11, z12, z13);
            this.val$authTokenType = str3;
            this.val$requiredFeatures = strArr;
            this.val$options = bundle;
            this.val$accountType = str4;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.startAddAccountSession(this, this.mAccountType, this.val$authTokenType, this.val$requiredFeatures, this.val$options);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            String strJoin = TextUtils.join(",", this.val$requiredFeatures);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(super.toDebugString(j10));
            sb2.append(", startAddAccountSession, accountType ");
            sb2.append(this.val$accountType);
            sb2.append(", requiredFeatures ");
            if (this.val$requiredFeatures == null) {
                strJoin = null;
            }
            sb2.append(strJoin);
            return sb2.toString();
        }
    }

    class e extends y {
        final /* synthetic */ Account val$account;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$loginOptions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, String str2, boolean z11, boolean z12, boolean z13, Account account, String str3, Bundle bundle) {
            super(a0Var, iAccountManagerResponse, str, z10, str2, z11, z12, z13);
            this.val$account = account;
            this.val$authTokenType = str3;
            this.val$loginOptions = bundle;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.startUpdateCredentialsSession(this, this.val$account, this.val$authTokenType, this.val$loginOptions);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            Bundle bundle = this.val$loginOptions;
            if (bundle != null) {
                bundle.keySet();
            }
            return super.toDebugString(j10) + ", startUpdateCredentialsSession, " + this.val$account + ", authTokenType " + this.val$authTokenType + ", loginOptions " + this.val$loginOptions;
        }
    }

    class f extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ Bundle val$decryptedBundle;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, boolean z13, Bundle bundle, String str3) {
            super(a0Var, iAccountManagerResponse, str, z10, z11, str2, z12, z13);
            this.val$decryptedBundle = bundle;
            this.val$accountType = str3;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.finishSession(this, this.mAccountType, this.val$decryptedBundle);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", finishSession, accountType " + this.val$accountType;
        }
    }

    class g extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ String val$statusToken;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, Account account, String str3) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, z10, z11, str2, z12);
            this.val$account = account;
            this.val$statusToken = str3;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose == null) {
                return;
            }
            if (bundle == null) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "null bundle");
                return;
            }
            if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
            }
            if (bundle.getInt("errorCode", -1) > 0) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, bundle.getInt("errorCode"), bundle.getString("errorMessage"));
            } else {
                if (!bundle.containsKey("booleanResult")) {
                    MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "no result in response");
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("booleanResult", bundle.getBoolean("booleanResult", false));
                MindAccountManagerService.this.sendResponse(responseAndClose, bundle2);
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.isCredentialsUpdateSuggested(this, this.val$account, this.val$statusToken);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", isCredentialsUpdateSuggested, " + this.val$account;
        }
    }

    class h extends IAccountAuthenticatorResponse.Stub {
        final /* synthetic */ Account val$account;
        final /* synthetic */ RemoteCallback val$callback;
        final /* synthetic */ String val$packageName;
        final /* synthetic */ int val$uid;

        h(Account account, int i10, String str, RemoteCallback remoteCallback) {
            this.val$account = account;
            this.val$uid = i10;
            this.val$packageName = str;
            this.val$callback = remoteCallback;
        }

        private void handleAuthenticatorResponse(boolean z10) {
            MindAccountManagerService mindAccountManagerService = MindAccountManagerService.this;
            mindAccountManagerService.cancelNotification(mindAccountManagerService.getCredentialPermissionNotificationId(this.val$account, MindAccountManagerService.ACCOUNT_ACCESS_TOKEN_TYPE, this.val$uid), this.val$packageName, MindUserHandle.w(this.val$uid));
            if (this.val$callback != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("booleanResult", z10);
                this.val$callback.sendResult(bundle);
            }
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onError(int i10, String str) {
            handleAuthenticatorResponse(false);
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onRequestContinued() {
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            handleAuthenticatorResponse(true);
        }
    }

    class i implements com.xinzhu.overmind.server.user.b {
        i() {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void a(int i10) {
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void b(int i10) {
            MindAccountManagerService.this.purgeUserData(i10);
        }

        @Override // com.xinzhu.overmind.server.user.b
        public void c(int i10) {
        }
    }

    class j implements com.xinzhu.overmind.server.pm.r {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f89557b;

            a(String str) {
                this.f89557b = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                MindAccountManagerService.this.purgeOldGrantsAll();
                MindAccountManagerService.this.removeVisibilityValuesForPackage(this.f89557b);
            }
        }

        j() {
        }

        @Override // com.xinzhu.overmind.server.pm.r
        public void a(String str, int i10) {
            MindAccountManagerService.this.mHandler.post(new a(str));
        }

        @Override // com.xinzhu.overmind.server.pm.r
        public void b(String str, int i10) {
        }

        @Override // com.xinzhu.overmind.server.pm.r
        public void c(String str, int i10) {
        }
    }

    class k extends IAccountManagerResponse.Stub {
        final /* synthetic */ String val$opPackageName;
        final /* synthetic */ IAccountManagerResponse val$response;

        k(IAccountManagerResponse iAccountManagerResponse, String str) {
            this.val$response = iAccountManagerResponse;
            this.val$opPackageName = str;
        }

        @Override // android.accounts.IAccountManagerResponse
        public void onError(int i10, String str) {
        }

        @Override // android.accounts.IAccountManagerResponse
        public void onResult(Bundle bundle) {
            Parcelable[] parcelableArray = bundle.getParcelableArray("accounts");
            Account[] accountArr = new Account[parcelableArray.length];
            for (int i10 = 0; i10 < parcelableArray.length; i10++) {
                accountArr[i10] = (Account) parcelableArray[i10];
            }
            MindAccountManagerService.this.handleGetAccountsResult(this.val$response, accountArr, this.val$opPackageName);
        }
    }

    class l extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ Bundle val$accountCredentials;
        final /* synthetic */ int val$parentUserId;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, Account account, int i10, Bundle bundle) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, z10, z11, str2, z12);
            this.val$account = account;
            this.val$parentUserId = i10;
            this.val$accountCredentials = bundle;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onError(int i10, String str) {
            super.onError(i10, str);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            super.onResult(bundle);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            for (Account account : MindAccountManagerService.this.getAccounts(this.val$parentUserId, "android")) {
                if (account.equals(this.val$account)) {
                    this.mAuthenticator.addAccountFromCredentials(this, this.val$account, this.val$accountCredentials);
                    return;
                }
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", getAccountCredentialsForClone, " + this.val$account.type;
        }
    }

    class m extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ IAccountManagerResponse val$response;
        final /* synthetic */ a0 val$toAccounts;
        final /* synthetic */ int val$userFrom;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, Account account, IAccountManagerResponse iAccountManagerResponse2, a0 a0Var2, int i10) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, z10, z11, str2, z12);
            this.val$account = account;
            this.val$response = iAccountManagerResponse2;
            this.val$toAccounts = a0Var2;
            this.val$userFrom = i10;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            if (bundle == null || !bundle.getBoolean("booleanResult", false)) {
                super.onResult(bundle);
            } else {
                MindAccountManagerService.this.completeCloningAccount(this.val$response, bundle, this.val$account, this.val$toAccounts, this.val$userFrom);
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.getAccountCredentialsForCloning(this, this.val$account);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", getAccountCredentialsForClone, " + this.val$account.type;
        }
    }

    class n extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ a0 val$accounts;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ String val$callerPkg;
        final /* synthetic */ byte[] val$callerPkgSigDigest;
        final /* synthetic */ int val$callerUid;
        final /* synthetic */ boolean val$customTokens;
        final /* synthetic */ Bundle val$loginOptions;
        final /* synthetic */ boolean val$notifyOnAuthFailure;
        final /* synthetic */ boolean val$permissionGranted;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, Bundle bundle, Account account, String str3, boolean z13, boolean z14, int i10, boolean z15, String str4, byte[] bArr, a0 a0Var2) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, z10, z11, str2, z12);
            this.val$loginOptions = bundle;
            this.val$account = account;
            this.val$authTokenType = str3;
            this.val$notifyOnAuthFailure = z13;
            this.val$permissionGranted = z14;
            this.val$callerUid = i10;
            this.val$customTokens = z15;
            this.val$callerPkg = str4;
            this.val$callerPkgSigDigest = bArr;
            this.val$accounts = a0Var2;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            if (bundle != null) {
                if (bundle.containsKey("authTokenLabelKey")) {
                    Intent intentNewGrantCredentialsPermissionIntent = MindAccountManagerService.this.newGrantCredentialsPermissionIntent(this.val$account, null, this.val$callerUid, (AccountAuthenticatorResponse) l8.b.b(this).f94096a, this.val$authTokenType, true);
                    Bundle bundle2 = new Bundle();
                    bundle2.putParcelable(Constants.WS_MESSAGE_TYPE_INTENT, intentNewGrantCredentialsPermissionIntent);
                    onResult(bundle2);
                    return;
                }
                String string = bundle.getString("authtoken");
                if (string != null) {
                    String string2 = bundle.getString("authAccount");
                    String string3 = bundle.getString("accountType");
                    if (TextUtils.isEmpty(string3) || TextUtils.isEmpty(string2)) {
                        onError(5, "the type and name should not be empty");
                        return;
                    }
                    Account account = new Account(string2, string3);
                    if (!this.val$customTokens) {
                        MindAccountManagerService.this.saveAuthTokenToDatabase(this.mAccounts, account, this.val$authTokenType, string);
                    }
                    long j10 = bundle.getLong(MindAccountManagerService.KEY_CUSTOM_TOKEN_EXPIRY, 0L);
                    if (this.val$customTokens && j10 > System.currentTimeMillis()) {
                        MindAccountManagerService.this.saveCachedToken(this.mAccounts, this.val$account, this.val$callerPkg, this.val$callerPkgSigDigest, this.val$authTokenType, string, j10);
                    }
                }
                Intent intent = (Intent) bundle.getParcelable(Constants.WS_MESSAGE_TYPE_INTENT);
                if (intent != null && this.val$notifyOnAuthFailure && !this.val$customTokens) {
                    if (!checkKeyIntent(BinderHelper.b().f89521c, intent)) {
                        onError(5, "invalid intent in bundle returned");
                        return;
                    }
                    MindAccountManagerService.this.doNotification(this.mAccounts, this.val$account, bundle.getString("authFailedMessage"), intent, "android", this.val$accounts.f89542a);
                }
            }
            super.onResult(bundle);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            if (this.val$permissionGranted) {
                this.mAuthenticator.getAuthToken(this, this.val$account, this.val$authTokenType, this.val$loginOptions);
            } else {
                this.mAuthenticator.getAuthTokenLabel(this, this.val$authTokenType);
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            Bundle bundle = this.val$loginOptions;
            if (bundle != null) {
                bundle.keySet();
            }
            return super.toDebugString(j10) + ", getAuthToken, " + this.val$account + ", authTokenType " + this.val$authTokenType + ", loginOptions " + this.val$loginOptions + ", notifyOnAuthFailure " + this.val$notifyOnAuthFailure;
        }
    }

    class o extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String[] val$requiredFeatures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        o(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, boolean z13, String str3, String[] strArr, Bundle bundle, String str4) {
            super(a0Var, iAccountManagerResponse, str, z10, z11, str2, z12, z13);
            this.val$authTokenType = str3;
            this.val$requiredFeatures = strArr;
            this.val$options = bundle;
            this.val$accountType = str4;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.addAccount(this, this.mAccountType, this.val$authTokenType, this.val$requiredFeatures, this.val$options);
            com.xinzhu.overmind.b.c(MindAccountManagerService.TAG, "session addaccount finish");
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", addAccount, accountType " + this.val$accountType + ", requiredFeatures " + Arrays.toString(this.val$requiredFeatures);
        }
    }

    class p extends x {
        final /* synthetic */ String val$accountType;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$options;
        final /* synthetic */ String[] val$requiredFeatures;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        p(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, boolean z13, String str3, String[] strArr, Bundle bundle, String str4) {
            super(a0Var, iAccountManagerResponse, str, z10, z11, str2, z12, z13);
            this.val$authTokenType = str3;
            this.val$requiredFeatures = strArr;
            this.val$options = bundle;
            this.val$accountType = str4;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.addAccount(this, this.mAccountType, this.val$authTokenType, this.val$requiredFeatures, this.val$options);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(super.toDebugString(j10));
            sb2.append(", addAccount, accountType ");
            sb2.append(this.val$accountType);
            sb2.append(", requiredFeatures ");
            String[] strArr = this.val$requiredFeatures;
            sb2.append(strArr != null ? TextUtils.join(",", strArr) : null);
            return sb2.toString();
        }
    }

    class q extends x {
        final /* synthetic */ Account val$account;
        final /* synthetic */ String val$authTokenType;
        final /* synthetic */ Bundle val$loginOptions;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        q(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, boolean z13, Account account, String str3, Bundle bundle) {
            super(a0Var, iAccountManagerResponse, str, z10, z11, str2, z12, z13);
            this.val$account = account;
            this.val$authTokenType = str3;
            this.val$loginOptions = bundle;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.updateCredentials(this, this.val$account, this.val$authTokenType, this.val$loginOptions);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            Bundle bundle = this.val$loginOptions;
            if (bundle != null) {
                bundle.keySet();
            }
            return super.toDebugString(j10) + ", updateCredentials, " + this.val$account + ", authTokenType " + this.val$authTokenType + ", loginOptions " + this.val$loginOptions;
        }
    }

    private static class r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Account f89559a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f89560b;

        public r(Account account, int i10) {
            this.f89559a = account;
            this.f89560b = i10;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof r)) {
                return false;
            }
            r rVar = (r) obj;
            return this.f89559a.equals(rVar.f89559a) && this.f89560b == rVar.f89560b;
        }

        public int hashCode() {
            return this.f89559a.hashCode() + this.f89560b;
        }

        public String toString() {
            return this.f89559a.toString() + " u" + this.f89560b;
        }
    }

    private class s extends x {
        private volatile Account[] mAccountsOfType;
        private volatile ArrayList<Account> mAccountsWithFeatures;
        private final int mCallingUid;
        private volatile int mCurrentAccount;
        private final String[] mFeatures;
        private final boolean mIncludeManagedNotVisible;
        private final String mPackageName;

        public s(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, String[] strArr, int i10, String str2, boolean z10) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, str, false, true, null, false);
            this.mAccountsOfType = null;
            this.mAccountsWithFeatures = null;
            this.mCurrentAccount = 0;
            this.mCallingUid = i10;
            this.mFeatures = strArr;
            this.mPackageName = str2;
            this.mIncludeManagedNotVisible = z10;
        }

        public void checkAccount() {
            if (this.mCurrentAccount >= this.mAccountsOfType.length) {
                sendResult();
                return;
            }
            IAccountAuthenticator iAccountAuthenticator = this.mAuthenticator;
            if (iAccountAuthenticator != null) {
                try {
                    iAccountAuthenticator.hasFeatures(this, this.mAccountsOfType[this.mCurrentAccount], this.mFeatures);
                } catch (RemoteException unused) {
                    onError(1, "remote exception");
                }
            } else if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, "checkAccount: aborting session since we are no longer connected to the authenticator, " + toDebugString());
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            this.mNumResults++;
            if (bundle == null) {
                onError(5, "null bundle");
                return;
            }
            if (bundle.getBoolean("booleanResult", false)) {
                this.mAccountsWithFeatures.add(this.mAccountsOfType[this.mCurrentAccount]);
            }
            this.mCurrentAccount++;
            checkAccount();
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAccountsOfType = MindAccountManagerService.this.getAccountsFromCache(this.mAccounts, this.mAccountType, this.mCallingUid, this.mPackageName, this.mIncludeManagedNotVisible);
            this.mAccountsWithFeatures = new ArrayList<>(this.mAccountsOfType.length);
            this.mCurrentAccount = 0;
            checkAccount();
        }

        public void sendResult() {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    int size = this.mAccountsWithFeatures.size();
                    Account[] accountArr = new Account[size];
                    for (int i10 = 0; i10 < size; i10++) {
                        accountArr[i10] = this.mAccountsWithFeatures.get(i10);
                    }
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    Bundle bundle = new Bundle();
                    bundle.putParcelableArray("accounts", accountArr);
                    responseAndClose.onResult(bundle);
                } catch (RemoteException e10) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "failure while notifying response", e10);
                    }
                }
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(super.toDebugString(j10));
            sb2.append(", getAccountsByTypeAndFeatures, ");
            String[] strArr = this.mFeatures;
            sb2.append(strArr != null ? TextUtils.join(",", strArr) : null);
            return sb2.toString();
        }
    }

    class t extends Handler {
        t(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 3) {
                ((x) message.obj).onTimedOut();
            } else {
                if (i10 == 4) {
                    MindAccountManagerService.this.copyAccountToUser(null, (Account) message.obj, message.arg1, message.arg2);
                    return;
                }
                throw new IllegalStateException("unhandled message: " + message.what);
            }
        }
    }

    private static class u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f89562a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f89563b;

        u(String str, int i10) {
            this.f89562a = str;
            this.f89563b = i10;
        }
    }

    public interface v {
        void a(Account account, int i10);
    }

    private class w extends x {
        final Account mAccount;

        public w(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, Account account, boolean z10) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, account.type, z10, true, account.name, false);
            this.mAccount = account;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            if (bundle != null && bundle.containsKey("booleanResult") && !bundle.containsKey(Constants.WS_MESSAGE_TYPE_INTENT)) {
                if (bundle.getBoolean("booleanResult")) {
                    MindAccountManagerService.this.removeAccountInternal(this.mAccounts, this.mAccount, Binder.getCallingUid());
                }
                IAccountManagerResponse responseAndClose = getResponseAndClose();
                if (responseAndClose != null) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    try {
                        responseAndClose.onResult(bundle);
                    } catch (RemoteException e10) {
                        com.xinzhu.overmind.utils.y.d(MindAccountManagerService.TAG, "Error calling onResult()", e10);
                    }
                }
            }
            super.onResult(bundle);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            this.mAuthenticator.getAccountRemovalAllowed(this, this.mAccount);
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            return super.toDebugString(j10) + ", removeAccount, account " + this.mAccount;
        }
    }

    private abstract class x extends IAccountAuthenticatorResponse.Stub implements IBinder.DeathRecipient, ServiceConnection {
        final String mAccountName;
        final String mAccountType;
        protected final a0 mAccounts;
        final boolean mAuthDetailsRequired;
        IAccountAuthenticator mAuthenticator;
        final long mCreationTime;
        final boolean mExpectActivityLaunch;
        private int mNumErrors;
        private int mNumRequestContinued;
        public int mNumResults;
        IAccountManagerResponse mResponse;
        private final boolean mStripAuthTokenFromResult;
        final boolean mUpdateLastAuthenticatedTime;

        public x(MindAccountManagerService mindAccountManagerService, a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12) {
            this(a0Var, iAccountManagerResponse, str, z10, z11, str2, z12, false);
        }

        private boolean bindToAuthenticator(String str) {
            RegisteredServicesCache.c<AuthenticatorDescription> cVarB = MindAccountManagerService.this.mAuthenticatorCache.b(AuthenticatorDescription.newKey(str), this.mAccounts.f89542a);
            if (cVarB == null) {
                if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, "there is no authenticator for " + str + ", bailing out");
                }
                return false;
            }
            Intent intent = new Intent();
            intent.setAction("android.accounts.AccountAuthenticator");
            intent.setComponent(cVarB.f89875c);
            if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, "performing bindService to " + cVarB.f89875c);
            }
            try {
                MindAccountManagerService.this.mContext.bindService(com.xinzhu.overmind.server.am.f.get().bindService(intent, this, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), this.mAccounts.f89542a, 0), this, 1);
                return true;
            } catch (RemoteException unused) {
                if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, "bindService to " + cVarB.f89875c + " failed");
                }
                return false;
            }
        }

        private void close() {
            synchronized (MindAccountManagerService.this.mSessions) {
                if (MindAccountManagerService.this.mSessions.remove(toString()) == null) {
                    return;
                }
                IAccountManagerResponse iAccountManagerResponse = this.mResponse;
                if (iAccountManagerResponse != null) {
                    iAccountManagerResponse.asBinder().unlinkToDeath(this, 0);
                    this.mResponse = null;
                }
                cancelTimeout();
                unbind();
            }
        }

        private void unbind() {
            if (this.mAuthenticator != null) {
                this.mAuthenticator = null;
                try {
                    com.xinzhu.overmind.server.am.f.get().unbindService(this, MindUserHandle.x(1000));
                    MindAccountManagerService.this.mContext.unbindService(this);
                } catch (RemoteException unused) {
                }
            }
        }

        void bind() {
            if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, "initiating bind to authenticator type " + this.mAccountType);
            }
            if (bindToAuthenticator(this.mAccountType)) {
                return;
            }
            com.xinzhu.overmind.utils.q.a(MindAccountManagerService.TAG, "bind attempt failed for " + toDebugString());
            onError(1, "bind failure");
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.mResponse = null;
            close();
        }

        public void cancelTimeout() {
            MindAccountManagerService.this.mHandler.removeMessages(3, this);
        }

        protected boolean checkKeyIntent(int i10, Intent intent) {
            if (intent.getClipData() == null) {
                intent.setClipData(ClipData.newPlainText(null, null));
            }
            intent.setFlags(intent.getFlags() & (-196));
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                MindPackageManagerService mindPackageManagerService = MindPackageManagerService.get();
                ResolveInfo resolveInfoResolveActivity = mindPackageManagerService.resolveActivity(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), this.mAccounts.f89542a);
                if (resolveInfoResolveActivity == null) {
                    return false;
                }
                ActivityInfo activityInfo = resolveInfoResolveActivity.activityInfo;
                if (mindPackageManagerService.hasSignatureCapability(activityInfo.applicationInfo.uid, i10, 16)) {
                    return true;
                }
                com.xinzhu.overmind.utils.q.c(MindAccountManagerService.TAG, String.format("KEY_INTENT resolved to an Activity (%s) in a package (%s) that does not share a signature with the supplying authenticator (%s).", activityInfo.name, activityInfo.packageName, this.mAccountType));
                return false;
            } finally {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
            }
        }

        IAccountManagerResponse getResponseAndClose() {
            IAccountManagerResponse iAccountManagerResponse = this.mResponse;
            if (iAccountManagerResponse == null) {
                return null;
            }
            close();
            return iAccountManagerResponse;
        }

        public void onError(int i10, String str) {
            this.mNumErrors++;
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose == null) {
                if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, "Session.onError: already closed");
                    return;
                }
                return;
            }
            if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onError() on response " + responseAndClose);
            }
            try {
                responseAndClose.onError(i10, str);
            } catch (RemoteException e10) {
                if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "Session.onError: caught RemoteException while responding", e10);
                }
            }
        }

        @Override // android.accounts.IAccountAuthenticatorResponse
        public void onRequestContinued() {
            this.mNumRequestContinued++;
        }

        public void onResult(Bundle bundle) {
            Intent intent;
            MindAccount mindAccount;
            boolean z10 = true;
            this.mNumResults++;
            if (bundle != null) {
                boolean z11 = bundle.getBoolean("booleanResult", false);
                boolean z12 = bundle.containsKey("authAccount") && bundle.containsKey("accountType");
                if (!this.mUpdateLastAuthenticatedTime || (!z11 && !z12)) {
                    z10 = false;
                }
                if (z10 || this.mAuthDetailsRequired) {
                    boolean zIsAccountPresentForCaller = MindAccountManagerService.this.isAccountPresentForCaller(this.mAccountName, this.mAccountType);
                    if (z10 && zIsAccountPresentForCaller) {
                        MindAccountManagerService.this.updateLastAuthenticatedTime(new Account(this.mAccountName, this.mAccountType));
                    }
                    if (this.mAuthDetailsRequired) {
                        bundle.putLong(MindAccountManagerService.KEY_LAST_AUTHENTICATED_TIME, (!zIsAccountPresentForCaller || (mindAccount = (MindAccount) this.mAccounts.f89544c.get(new Account(this.mAccountName, this.mAccountType))) == null) ? -1L : mindAccount.f89538d);
                    }
                }
            }
            if (bundle != null) {
                intent = (Intent) bundle.getParcelable(Constants.WS_MESSAGE_TYPE_INTENT);
                if (intent != null) {
                    if (!checkKeyIntent(BinderHelper.b().f89521c, intent)) {
                        onError(5, "invalid intent in bundle returned");
                        return;
                    }
                }
            } else {
                intent = null;
            }
            if (bundle != null && !TextUtils.isEmpty(bundle.getString("authtoken"))) {
                String string = bundle.getString("authAccount");
                String string2 = bundle.getString("accountType");
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    Account account = new Account(string, string2);
                    MindAccountManagerService mindAccountManagerService = MindAccountManagerService.this;
                    mindAccountManagerService.cancelNotification(mindAccountManagerService.getSigninRequiredNotificationId(this.mAccounts, account), new MindUserHandle(this.mAccounts.f89542a));
                }
            }
            IAccountManagerResponse responseAndClose = (this.mExpectActivityLaunch && bundle != null && bundle.containsKey(Constants.WS_MESSAGE_TYPE_INTENT)) ? this.mResponse : getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    if (bundle == null) {
                        if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                            com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onError() on response " + responseAndClose);
                        }
                        responseAndClose.onError(5, "null bundle returned");
                        return;
                    }
                    if (this.mStripAuthTokenFromResult) {
                        bundle.remove("authtoken");
                    }
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    if (bundle.getInt("errorCode", -1) <= 0 || intent != null) {
                        responseAndClose.onResult(bundle);
                    } else {
                        responseAndClose.onError(bundle.getInt("errorCode"), bundle.getString("errorMessage"));
                    }
                } catch (RemoteException e10) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "failure while notifying response", e10);
                    }
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            this.mAuthenticator = IAccountAuthenticator.Stub.asInterface(iBinder);
            try {
                run();
            } catch (RemoteException unused) {
                onError(1, "remote exception");
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            this.mAuthenticator = null;
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    responseAndClose.onError(1, "disconnected");
                } catch (RemoteException e10) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "Session.onServiceDisconnected: caught RemoteException while responding", e10);
                    }
                }
            }
        }

        public void onTimedOut() {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    responseAndClose.onError(1, "timeout");
                } catch (RemoteException e10) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "Session.onTimedOut: caught RemoteException while responding", e10);
                    }
                }
            }
        }

        public abstract void run() throws RemoteException;

        protected String toDebugString() {
            return toDebugString(SystemClock.elapsedRealtime());
        }

        public x(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, boolean z11, String str2, boolean z12, boolean z13) {
            this.mNumResults = 0;
            this.mNumRequestContinued = 0;
            this.mNumErrors = 0;
            this.mAuthenticator = null;
            if (str == null) {
                throw new IllegalArgumentException("accountType is null");
            }
            this.mAccounts = a0Var;
            this.mStripAuthTokenFromResult = z11;
            this.mResponse = iAccountManagerResponse;
            this.mAccountType = str;
            this.mExpectActivityLaunch = z10;
            this.mCreationTime = SystemClock.elapsedRealtime();
            this.mAccountName = str2;
            this.mAuthDetailsRequired = z12;
            this.mUpdateLastAuthenticatedTime = z13;
            synchronized (MindAccountManagerService.this.mSessions) {
                MindAccountManagerService.this.mSessions.put(toString(), this);
            }
            if (iAccountManagerResponse != null) {
                try {
                    iAccountManagerResponse.asBinder().linkToDeath(this, 0);
                } catch (RemoteException unused) {
                    this.mResponse = null;
                    binderDied();
                }
            }
        }

        protected String toDebugString(long j10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Session: expectLaunch ");
            sb2.append(this.mExpectActivityLaunch);
            sb2.append(", connected ");
            sb2.append(this.mAuthenticator != null);
            sb2.append(", stats (");
            sb2.append(this.mNumResults);
            sb2.append(net.lingala.zip4j.util.e.F0);
            sb2.append(this.mNumRequestContinued);
            sb2.append(net.lingala.zip4j.util.e.F0);
            sb2.append(this.mNumErrors);
            sb2.append("), lifetime ");
            sb2.append((j10 - this.mCreationTime) / 1000.0d);
            return sb2.toString();
        }
    }

    private abstract class y extends x {
        private final boolean mIsPasswordForwardingAllowed;

        public y(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, String str, boolean z10, String str2, boolean z11, boolean z12, boolean z13) {
            super(a0Var, iAccountManagerResponse, str, z10, true, str2, z11, z12);
            this.mIsPasswordForwardingAllowed = z13;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            Intent intent;
            this.mNumResults++;
            if (bundle != null) {
                intent = (Intent) bundle.getParcelable(Constants.WS_MESSAGE_TYPE_INTENT);
                if (intent != null && !checkKeyIntent(BinderHelper.b().f89521c, intent)) {
                    onError(5, "invalid intent in bundle returned");
                    return;
                }
            } else {
                intent = null;
            }
            IAccountManagerResponse responseAndClose = (this.mExpectActivityLaunch && bundle != null && bundle.containsKey(Constants.WS_MESSAGE_TYPE_INTENT)) ? this.mResponse : getResponseAndClose();
            if (responseAndClose == null) {
                return;
            }
            if (bundle == null) {
                if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                    com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onError() on response " + responseAndClose);
                }
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "null bundle returned");
                return;
            }
            if (bundle.getInt("errorCode", -1) > 0 && intent == null) {
                MindAccountManagerService.this.sendErrorResponse(responseAndClose, bundle.getInt("errorCode"), bundle.getString("errorMessage"));
                return;
            }
            if (!this.mIsPasswordForwardingAllowed) {
                bundle.remove(GameRoomActivity_.PASSWORD_EXTRA);
            }
            bundle.remove("authtoken");
            if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
            }
            Bundle bundle2 = bundle.getBundle(MindAccountManagerService.KEY_ACCOUNT_SESSION_BUNDLE);
            if (bundle2 != null) {
                String string = bundle2.getString("accountType");
                if (TextUtils.isEmpty(string) || !this.mAccountType.equalsIgnoreCase(string)) {
                    com.xinzhu.overmind.utils.q.k(MindAccountManagerService.TAG, "Account type in session bundle doesn't match request.");
                }
                bundle2.putString("accountType", this.mAccountType);
                try {
                    bundle.putBundle(MindAccountManagerService.KEY_ACCOUNT_SESSION_BUNDLE, com.xinzhu.overmind.server.accounts.c.e().d(bundle2));
                } catch (GeneralSecurityException e10) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 3)) {
                        com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "Failed to encrypt session bundle!", e10);
                    }
                    MindAccountManagerService.this.sendErrorResponse(responseAndClose, 5, "failed to encrypt session bundle");
                    return;
                }
            }
            MindAccountManagerService.this.sendResponse(responseAndClose, bundle);
        }
    }

    private class z extends x {
        private final Account mAccount;
        private final String[] mFeatures;

        public z(a0 a0Var, IAccountManagerResponse iAccountManagerResponse, Account account, String[] strArr) {
            super(MindAccountManagerService.this, a0Var, iAccountManagerResponse, account.type, false, true, account.name, false);
            this.mFeatures = strArr;
            this.mAccount = account;
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x, android.accounts.IAccountAuthenticatorResponse
        public void onResult(Bundle bundle) {
            IAccountManagerResponse responseAndClose = getResponseAndClose();
            if (responseAndClose != null) {
                try {
                    if (bundle == null) {
                        responseAndClose.onError(5, "null bundle");
                        return;
                    }
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.i(MindAccountManagerService.TAG, getClass().getSimpleName() + " calling onResult() on response " + responseAndClose);
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putBoolean("booleanResult", bundle.getBoolean("booleanResult", false));
                    responseAndClose.onResult(bundle2);
                } catch (RemoteException e10) {
                    if (com.xinzhu.overmind.utils.q.g(MindAccountManagerService.TAG, 2)) {
                        com.xinzhu.overmind.utils.q.j(MindAccountManagerService.TAG, "failure while notifying response", e10);
                    }
                }
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        public void run() throws RemoteException {
            try {
                this.mAuthenticator.hasFeatures(this, this.mAccount, this.mFeatures);
            } catch (RemoteException unused) {
                onError(1, "remote exception");
            }
        }

        @Override // com.xinzhu.overmind.server.accounts.MindAccountManagerService.x
        protected String toDebugString(long j10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(super.toDebugString(j10));
            sb2.append(", hasFeatures, ");
            sb2.append(this.mAccount);
            sb2.append(", ");
            String[] strArr = this.mFeatures;
            sb2.append(strArr != null ? TextUtils.join(",", strArr) : null);
            return sb2.toString();
        }
    }

    public MindAccountManagerService() {
        i iVar = new i();
        this.mUserListener = iVar;
        j jVar = new j();
        this.mPackageMonitor = jVar;
        this.mAuthenticatorCache = new com.xinzhu.overmind.server.accounts.a(Overmind.getContext());
        com.xinzhu.overmind.server.m mVar = new com.xinzhu.overmind.server.m(TAG, -2, true);
        mVar.start();
        this.mHandler = new t(mVar.getLooper());
        com.xinzhu.overmind.server.user.c.get().registerListener(iVar);
        MindPackageManagerService.get().addPackageMonitor(jVar);
    }

    private boolean accountExistsCache(a0 a0Var, Account account) {
        Account[] accountArr;
        synchronized (a0Var.f89544c) {
            if (a0Var.f89547f.containsKey(account.type) && (accountArr = a0Var.f89547f.get(account.type)) != null) {
                for (Account account2 : accountArr) {
                    if (account2.name.equals(account.name)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private boolean accountTypeManagesContacts(String str, int i10) {
        if (str == null) {
            return false;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Collection<RegisteredServicesCache.c<AuthenticatorDescription>> collectionC = this.mAuthenticatorCache.c(i10);
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            Iterator<RegisteredServicesCache.c<AuthenticatorDescription>> it2 = collectionC.iterator();
            while (it2.hasNext()) {
                if (str.equals(it2.next().f89873a.type)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private boolean addAccountInternal(a0 a0Var, Account account, String str, Bundle bundle, int i10, Map<String, Integer> map) {
        if (account == null) {
            return false;
        }
        synchronized (a0Var.f89543b) {
            MindAccount mindAccount = new MindAccount(account);
            if (a0Var.f89544c.containsKey(account)) {
                com.xinzhu.overmind.utils.q.k(TAG, "insertAccountIntoDatabase: " + account + ", skipping since the account already exists");
                return false;
            }
            mindAccount.f89537c = str;
            a0Var.f89544c.put(account, mindAccount);
            saveAccountDataLocked(a0Var);
            if (bundle != null) {
                HashMap map2 = new HashMap();
                for (String str2 : bundle.keySet()) {
                    map2.put(str2, bundle.getString(str2));
                }
                a0Var.f89548g.put(account, map2);
                saveAccountUserDataLocked(a0Var);
            }
            if (map != null) {
                for (Map.Entry<String, Integer> entry : map.entrySet()) {
                    setAccountVisibility(account, entry.getKey(), entry.getValue().intValue(), false, a0Var);
                }
            }
            insertAccountIntoCacheLocked(a0Var, account);
            sendNotificationAccountUpdated(account, a0Var);
            sendAccountsChangedBroadcast(a0Var.f89542a);
            return true;
        }
    }

    private byte[] calculatePackageSignatureDigest(String str) {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
            PackageInfo packageInfo = MindPackageManagerService.get().getPackageInfo(str, 64, 0);
            if (packageInfo == null) {
                com.xinzhu.overmind.utils.q.k(TAG, "Could not find packageinfo for: " + str);
                return null;
            }
            for (Signature signature : packageInfo.signatures) {
                messageDigest.update(signature.toByteArray());
            }
            if (messageDigest == null) {
                return null;
            }
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e10) {
            com.xinzhu.overmind.utils.q.o(TAG, "SHA-256 should be available", e10);
            messageDigest = null;
        }
    }

    private boolean canUserModifyAccounts(int i10, int i11) {
        return MindUserHandle.x(i11) == i10;
    }

    private boolean canUserModifyAccountsForType(int i10, String str, int i11) {
        return MindUserHandle.x(i11) == i10;
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(int i10, boolean z10) {
        for (Account account : getAccountsAsUser(null, MindUserHandle.x(i10), "android")) {
            cancelAccountAccessRequestNotificationIfNeeded(account, i10, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelNotification(u uVar, MindUserHandle mindUserHandle) {
        cancelNotification(uVar, Overmind.getContext().getPackageName(), mindUserHandle);
    }

    private int checkPackageSignature(String str, int i10, int i11) {
        if (str == null) {
            return 0;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Collection<RegisteredServicesCache.c<AuthenticatorDescription>> collectionC = this.mAuthenticatorCache.c(i11);
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            for (RegisteredServicesCache.c<AuthenticatorDescription> cVar : collectionC) {
                if (str.equals(cVar.f89873a.type)) {
                    if (cVar.f89876d == i10) {
                        return 2;
                    }
                    if (MindPackageManagerService.get().hasSignatureCapability(cVar.f89876d, i10, 16)) {
                        return 1;
                    }
                }
            }
            return 0;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private void checkReadAccountsPermitted(int i10, String str, int i11, String str2) {
        if (isAccountVisibleToCaller(str, i10, i11, str2)) {
            return;
        }
        String str3 = String.format("caller uid %s cannot access %s accounts", Integer.valueOf(i10), str);
        com.xinzhu.overmind.utils.q.k(TAG, "  " + str3);
        throw new SecurityException(str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeCloningAccount(IAccountManagerResponse iAccountManagerResponse, Bundle bundle, Account account, a0 a0Var, int i10) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new l(a0Var, iAccountManagerResponse, account.type, false, false, account.name, false, account, i10, bundle).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doNotification(a0 a0Var, Account account, CharSequence charSequence, Intent intent, String str, int i10) {
    }

    private Account[] filterAccounts(a0 a0Var, Account[] accountArr, int i10, String str, boolean z10) {
        String packageNameForUid = str == null ? getPackageNameForUid(i10) : str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Account account : accountArr) {
            int iIntValue = resolveAccountVisibility(account, packageNameForUid, a0Var).intValue();
            if (iIntValue == 1 || iIntValue == 2 || (z10 && iIntValue == 4)) {
                linkedHashMap.put(account, Integer.valueOf(iIntValue));
            }
        }
        Map<Account, Integer> mapFilterSharedAccounts = filterSharedAccounts(a0Var, linkedHashMap, i10, str);
        return (Account[]) mapFilterSharedAccounts.keySet().toArray(new Account[mapFilterSharedAccounts.size()]);
    }

    private Map<Account, Integer> filterSharedAccounts(a0 a0Var, Map<Account, Integer> map, int i10, String str) {
        return map;
    }

    public static MindAccountManagerService get() {
        return sService;
    }

    private List<String> getAccountRemovedReceivers(Account account, a0 a0Var) {
        Intent intent = new Intent(ACTION_ACCOUNT_REMOVED);
        List<ResolveInfo> listQueryIntentBroadcastReceivers = MindPackageManagerService.get().queryIntentBroadcastReceivers(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), a0Var.f89542a);
        ArrayList arrayList = new ArrayList();
        if (listQueryIntentBroadcastReceivers == null) {
            return arrayList;
        }
        Iterator<ResolveInfo> it2 = listQueryIntentBroadcastReceivers.iterator();
        while (it2.hasNext()) {
            String str = it2.next().activityInfo.applicationInfo.packageName;
            int iIntValue = resolveAccountVisibility(account, str, a0Var).intValue();
            if (iIntValue == 1 || iIntValue == 2) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    private int getAccountVisibilityFromCache(Account account, String str, a0 a0Var) {
        int iIntValue;
        synchronized (a0Var.f89543b) {
            Integer num = getPackagesAndVisibilityForAccountLocked(account, a0Var).get(str);
            iIntValue = num != null ? num.intValue() : 0;
        }
        return iIntValue;
    }

    private Map<Account, Integer> getAccountsAndVisibilityForPackage(String str, List<String> list, Integer num, a0 a0Var) {
        if (!packageExistsForUser(str, a0Var.f89542a)) {
            com.xinzhu.overmind.utils.q.a(TAG, "Package not found " + str);
            return new LinkedHashMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str2 : list) {
            synchronized (a0Var.f89543b) {
                Account[] accountArr = a0Var.f89547f.get(str2);
                if (accountArr != null) {
                    for (Account account : accountArr) {
                        linkedHashMap.put(account, resolveAccountVisibility(account, str, a0Var));
                    }
                }
            }
        }
        return filterSharedAccounts(a0Var, linkedHashMap, num.intValue(), str);
    }

    private Account[] getAccountsAsUserForPackage(String str, int i10, String str2, int i11, String str3, boolean z10) {
        String str4;
        int i12;
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i13 = callingInfoB.f89521c;
        if (i10 != callingInfoB.f89522d && i13 != 1000) {
            throw new SecurityException("User " + callingInfoB.f89522d + " trying to get account for " + i10);
        }
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getAccounts: accountType " + str + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        List<String> typesManagedByCaller = getTypesManagedByCaller(i13, MindUserHandle.x(i13));
        if (i11 == -1 || (!MindUserHandle.B(i13, 1000) && (str == null || !typesManagedByCaller.contains(str)))) {
            str4 = str3;
            i12 = i13;
        } else {
            str4 = str2;
            i12 = i11;
        }
        List<String> typesVisibleToCaller = getTypesVisibleToCaller(i12, i10, str4);
        if (typesVisibleToCaller.isEmpty() || !(str == null || typesVisibleToCaller.contains(str))) {
            return EMPTY_ACCOUNT_ARRAY;
        }
        if (typesVisibleToCaller.contains(str)) {
            typesVisibleToCaller = new ArrayList<>();
            typesVisibleToCaller.add(str);
        }
        List<String> list = typesVisibleToCaller;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getAccountsInternal(getUserAccounts(i10), i12, str4, list, z10);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private Account[] getAccountsInternal(a0 a0Var, int i10, String str, List<String> list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            Account[] accountsFromCache = getAccountsFromCache(a0Var, it2.next(), i10, str, z10);
            if (accountsFromCache != null) {
                arrayList.addAll(Arrays.asList(accountsFromCache));
            }
        }
        Account[] accountArr = new Account[arrayList.size()];
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            accountArr[i11] = (Account) arrayList.get(i11);
        }
        return accountArr;
    }

    private AuthenticatorDescription[] getAuthenticatorTypesInternal(int i10) {
        this.mAuthenticatorCache.e(i10);
        Collection<RegisteredServicesCache.c<AuthenticatorDescription>> collectionC = this.mAuthenticatorCache.c(i10);
        AuthenticatorDescription[] authenticatorDescriptionArr = new AuthenticatorDescription[collectionC.size()];
        Iterator<RegisteredServicesCache.c<AuthenticatorDescription>> it2 = collectionC.iterator();
        int i11 = 0;
        while (it2.hasNext()) {
            authenticatorDescriptionArr[i11] = it2.next().f89873a;
            i11++;
        }
        return authenticatorDescriptionArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u getCredentialPermissionNotificationId(Account account, String str, int i10) {
        u uVar;
        a0 userAccounts = getUserAccounts(MindUserHandle.x(i10));
        synchronized (userAccounts.f89545d) {
            Pair pair = new Pair(new Pair(account, str), Integer.valueOf(i10));
            uVar = (u) userAccounts.f89545d.get(pair);
            if (uVar == null) {
                uVar = new u("MAccountManagerService:38:" + account.hashCode() + ":" + str.hashCode(), 38);
                userAccounts.f89545d.put(pair, uVar);
            }
        }
        return uVar;
    }

    private String getPackageNameForUid(int i10) {
        int i11;
        String[] packagesForUid = MindPackageManagerService.get().getPackagesForUid(i10);
        if (com.xinzhu.overmind.utils.d.o(packagesForUid)) {
            return null;
        }
        String str = packagesForUid[0];
        if (packagesForUid.length == 1) {
            return str;
        }
        int i12 = Integer.MAX_VALUE;
        for (String str2 : packagesForUid) {
            ApplicationInfo applicationInfo = MindPackageManagerService.get().getApplicationInfo(str2, 0, MindUserHandle.x(i10));
            if (applicationInfo != null && (i11 = applicationInfo.targetSdkVersion) < i12) {
                str = str2;
                i12 = i11;
            }
        }
        return str;
    }

    private Map<String, Integer> getPackagesAndVisibilityForAccountLocked(Account account, a0 a0Var) {
        Map<String, Integer> map = (Map) a0Var.f89551j.get(account);
        if (map != null) {
            return map;
        }
        com.xinzhu.overmind.utils.q.a(TAG, "Visibility was not initialized");
        HashMap map2 = new HashMap();
        a0Var.f89551j.put(account, map2);
        return map2;
    }

    private Map<String, Integer> getRequestingPackages(Account account, a0 a0Var) {
        HashSet<String> hashSet = new HashSet();
        synchronized (a0Var.f89552k) {
            String[] strArr = {account.type, null};
            for (int i10 = 0; i10 < 2; i10++) {
                Map map = (Map) a0Var.f89552k.get(strArr[i10]);
                if (map != null) {
                    hashSet.addAll(map.keySet());
                }
            }
        }
        HashMap map2 = new HashMap();
        for (String str : hashSet) {
            map2.put(str, resolveAccountVisibility(account, str, a0Var));
        }
        return map2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public u getSigninRequiredNotificationId(a0 a0Var, Account account) {
        u uVar;
        synchronized (a0Var.f89546e) {
            uVar = (u) a0Var.f89546e.get(account);
            if (uVar == null) {
                u uVar2 = new u("MAccountManagerService:37:" + account.hashCode(), 37);
                a0Var.f89546e.put(account, uVar2);
                uVar = uVar2;
            }
        }
        return uVar;
    }

    private List<String> getTypesForCaller(int i10, int i11, boolean z10) {
        ArrayList arrayList = new ArrayList();
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Collection<RegisteredServicesCache.c<AuthenticatorDescription>> collectionC = this.mAuthenticatorCache.c(i11);
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            for (RegisteredServicesCache.c<AuthenticatorDescription> cVar : collectionC) {
                if (z10 || MindPackageManagerService.get().hasSignatureCapability(cVar.f89876d, i10, 16)) {
                    arrayList.add(cVar.f89873a.type);
                }
            }
            return arrayList;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private List<String> getTypesManagedByCaller(int i10, int i11) {
        return getTypesForCaller(i10, i11, false);
    }

    private List<String> getTypesVisibleToCaller(int i10, int i11, String str) {
        return getTypesForCaller(i10, i11, true);
    }

    private a0 getUserAccountsForCaller() {
        return getUserAccounts(BinderHelper.b().f89522d);
    }

    private ma.i getUserManager() {
        if (this.mUserManager == null) {
            this.mUserManager = ma.i.d();
        }
        return this.mUserManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleGetAccountsResult(IAccountManagerResponse iAccountManagerResponse, Account[] accountArr, String str) {
        if (needToStartChooseAccountActivity(accountArr, str)) {
            startChooseAccountActivityWithAccounts(iAccountManagerResponse, accountArr, str);
            return;
        }
        if (accountArr.length != 1) {
            onResult(iAccountManagerResponse, new Bundle());
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("authAccount", accountArr[0].name);
        bundle.putString("accountType", accountArr[0].type);
        onResult(iAccountManagerResponse, bundle);
    }

    private boolean hasAccountAccess(Account account, String str, int i10) {
        int iIntValue;
        if (str == null && (str = getPackageNameForUid(i10)) == null) {
            return false;
        }
        return permissionIsGranted(account, null, i10, MindUserHandle.x(i10)) || (iIntValue = resolveAccountVisibility(account, str, getUserAccounts(MindUserHandle.x(i10))).intValue()) == 1 || iIntValue == 2;
    }

    private boolean hasExplicitlyGrantedPermission(Account account, String str, int i10) {
        boolean z10 = true;
        if (MindUserHandle.a(i10) == 1000) {
            return true;
        }
        a0 userAccounts = getUserAccounts(MindUserHandle.x(i10));
        synchronized (userAccounts.f89543b) {
            try {
                if ((str != null ? userAccounts.o(i10, str, account) : userAccounts.p(i10, account)) <= 0) {
                    z10 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z10;
    }

    private Account insertAccountIntoCacheLocked(a0 a0Var, Account account) {
        Account[] accountArr = a0Var.f89547f.get(account.type);
        int length = accountArr != null ? accountArr.length : 0;
        Account[] accountArr2 = new Account[length + 1];
        if (accountArr != null) {
            System.arraycopy(accountArr, 0, accountArr2, 0, length);
        }
        accountArr2[length] = (Account) l8.a.f(account, new l8.a(account).h() != null ? new l8.a(account).h() : UUID.randomUUID().toString()).f94091a;
        a0Var.f89547f.put(account.type, accountArr2);
        return accountArr2[length];
    }

    private List<Pair<Account, String>> invalidateAuthTokenLocked(a0 a0Var, String str, String str2) {
        Map map;
        ArrayList arrayList = new ArrayList();
        synchronized (a0Var.f89543b) {
            for (MindAccount mindAccount : a0Var.f89544c.values()) {
                if (mindAccount.f89536b.type.equals(str) && (map = (Map) a0Var.f89549h.get(mindAccount.f89536b)) != null) {
                    Iterator it2 = map.entrySet().iterator();
                    while (it2.hasNext()) {
                        Map.Entry entry = (Map.Entry) it2.next();
                        if (((String) entry.getValue()).equals(str2)) {
                            arrayList.add(Pair.create(new Account(mindAccount.f89536b.name, str), (String) entry.getKey()));
                            it2.remove();
                        }
                    }
                }
            }
            saveAccountAuthTokenLocked(a0Var);
        }
        return arrayList;
    }

    private boolean isAccountManagedByCaller(String str, int i10, int i11) {
        if (str == null) {
            return false;
        }
        return getTypesManagedByCaller(i10, i11).contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAccountPresentForCaller(String str, String str2) {
        Account[] accountArr;
        a0 userAccountsForCaller = getUserAccountsForCaller();
        synchronized (userAccountsForCaller.f89543b) {
            if (userAccountsForCaller.f89547f.containsKey(str2) && (accountArr = userAccountsForCaller.f89547f.get(str2)) != null) {
                for (Account account : accountArr) {
                    if (account.name.equals(str)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private boolean isAccountVisibleToCaller(String str, int i10, int i11, String str2) {
        if (str == null) {
            return false;
        }
        return getTypesVisibleToCaller(i10, i11, str2).contains(str);
    }

    private boolean isCrossUser(int i10, int i11) {
        return (i11 == MindUserHandle.x(i10) || i10 == 1000) ? false : true;
    }

    private boolean isPreOApplication(String str) {
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            ApplicationInfo applicationInfo = MindPackageManagerService.get().getApplicationInfo(str, 0, MindUserHandle.x(1000));
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            return applicationInfo == null || applicationInfo.targetSdkVersion < 26;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private boolean isSpecialPackageKey(String str) {
        return PACKAGE_NAME_KEY_LEGACY_VISIBLE.equals(str) || PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE.equals(str);
    }

    private boolean isSystemUid(int i10) {
        return i10 == 1000;
    }

    private boolean isVisible(int i10) {
        return i10 == 1 || i10 == 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeAccountInternal$0(Account account, int i10) {
        cancelAccountAccessRequestNotificationIfNeeded(account, i10, false);
    }

    private void loadAllAccounts() throws Throwable {
        if (com.xinzhu.overmind.server.accounts.b.b()) {
            loadCompatAccounts();
            com.xinzhu.overmind.server.accounts.b.a();
            return;
        }
        for (MindUserInfo mindUserInfo : com.xinzhu.overmind.server.user.c.get().getUsers()) {
            File file = new File(com.xinzhu.overmind.a.b(mindUserInfo.f89950b), ACCOUNTS_FILE_DATA);
            Parcel parcelObtain = Parcel.obtain();
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        byte[] bArr = new byte[4];
                        fileInputStream2.read(bArr);
                        if (!Arrays.equals(bArr, ACCOUNTS_FILE_DATA_MAGIC)) {
                            throw new IOException();
                        }
                        a0 a0Var = new a0(mindUserInfo.f89950b);
                        byte[] bArrW = com.xinzhu.overmind.utils.l.w(fileInputStream2);
                        parcelObtain.unmarshall(bArrW, 0, bArrW.length);
                        parcelObtain.setDataPosition(0);
                        ArrayList<MindAccount> arrayListCreateTypedArrayList = parcelObtain.createTypedArrayList(MindAccount.CREATOR);
                        if (arrayListCreateTypedArrayList == null) {
                            throw new IOException();
                        }
                        for (MindAccount mindAccount : arrayListCreateTypedArrayList) {
                            insertAccountIntoCacheLocked(a0Var, mindAccount.f89536b);
                            a0Var.f89544c.put(mindAccount.f89536b, mindAccount);
                        }
                        Map<Account, Map<String, String>> mapLoadUserData = loadUserData(a0Var);
                        if (mapLoadUserData != null) {
                            a0Var.f89548g.putAll(mapLoadUserData);
                        }
                        Map<Account, Map<String, String>> mapLoadAuthToken = loadAuthToken(a0Var);
                        if (mapLoadAuthToken != null) {
                            a0Var.f89549h.putAll(mapLoadAuthToken);
                        }
                        Map<Account, Map<String, Integer>> mapLoadVisibilities = loadVisibilities(a0Var);
                        if (mapLoadVisibilities != null) {
                            a0Var.f89551j.putAll(mapLoadVisibilities);
                        }
                        Map<Account, AtomicReference<String>> mapLoadPreviousName = loadPreviousName(a0Var);
                        if (mapLoadPreviousName != null) {
                            a0Var.f89553l.putAll(mapLoadPreviousName);
                        }
                        List<UidGrant> listLoadUidGrants = loadUidGrants(a0Var);
                        if (listLoadUidGrants != null) {
                            a0Var.f89554m.addAll(listLoadUidGrants);
                        }
                        this.mUsers.put(mindUserInfo.f89950b, a0Var);
                        parcelObtain.recycle();
                        com.xinzhu.overmind.utils.p.a(fileInputStream2);
                    } catch (FileNotFoundException unused) {
                        fileInputStream = fileInputStream2;
                        parcelObtain.recycle();
                        com.xinzhu.overmind.utils.p.a(fileInputStream);
                    } catch (IOException e10) {
                        e = e10;
                        fileInputStream = fileInputStream2;
                        com.xinzhu.overmind.utils.q.c(TAG, "Error reading accounts for user " + mindUserInfo.f89950b);
                        e.printStackTrace();
                        parcelObtain.recycle();
                        com.xinzhu.overmind.utils.p.a(fileInputStream);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        parcelObtain.recycle();
                        com.xinzhu.overmind.utils.p.a(fileInputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException unused2) {
            } catch (IOException e11) {
                e = e11;
            }
        }
    }

    private Map<Account, Map<String, String>> loadAuthToken(a0 a0Var) {
        return loadMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_AUTH_TOKEN), ACCOUNTS_FILE_AUTH_TOKEN_MAGIC);
    }

    private void loadCompatAccounts() {
        ma.i userManager = getUserManager();
        for (com.xinzhu.overmind.server.accounts.b.a aVar : com.xinzhu.overmind.server.accounts.b.c()) {
            if (userManager.c(aVar.f89567a)) {
                MindAccount mindAccount = new MindAccount(aVar.f89568b);
                mindAccount.f89537c = aVar.f89570d;
                mindAccount.f89538d = aVar.f89571e;
                a0 a0Var = this.mUsers.get(aVar.f89567a);
                if (a0Var == null) {
                    a0Var = new a0(aVar.f89567a);
                    this.mUsers.put(aVar.f89567a, a0Var);
                }
                insertAccountIntoCacheLocked(a0Var, mindAccount.f89536b);
                a0Var.f89544c.put(mindAccount.f89536b, mindAccount);
                HashMap map = new HashMap();
                for (Pair<String, String> pair : aVar.f89573g) {
                    map.put((String) pair.first, (String) pair.second);
                }
                a0Var.f89548g.put(mindAccount.f89536b, map);
                HashMap map2 = new HashMap();
                for (Pair<String, String> pair2 : aVar.f89572f) {
                    map2.put((String) pair2.first, (String) pair2.second);
                }
                a0Var.f89549h.put(mindAccount.f89536b, map2);
                a0Var.f89553l.put(mindAccount.f89536b, new AtomicReference(aVar.f89569c));
            }
        }
        for (com.xinzhu.overmind.server.accounts.b.C1127b c1127b : com.xinzhu.overmind.server.accounts.b.d()) {
            a0 a0Var2 = this.mUsers.get(c1127b.f89574a);
            if (a0Var2 != null && a0Var2.f89544c.get(c1127b.f89575b) != null) {
                HashMap map3 = new HashMap();
                for (Pair<String, Integer> pair3 : c1127b.f89576c) {
                    map3.put((String) pair3.first, (Integer) pair3.second);
                }
                a0Var2.f89551j.put(c1127b.f89575b, map3);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036 A[ExcHandler: IOException -> 0x0036] */
    private <V> List<V> loadList(File file, byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr2 = new byte[bArr.length];
            fileInputStream.read(bArr2);
            if (!Arrays.equals(bArr2, bArr)) {
                return null;
            }
            byte[] bArrW = com.xinzhu.overmind.utils.l.w(fileInputStream);
            parcelObtain.unmarshall(bArrW, 0, bArrW.length);
            parcelObtain.setDataPosition(0);
            return parcelObtain.readArrayList(MindAccountManagerService.class.getClassLoader());
        } catch (IOException e10) {
            com.xinzhu.overmind.utils.q.c(TAG, "Error reading data file " + file);
            e10.printStackTrace();
            return null;
        } catch (FileNotFoundException unused) {
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0036 A[ExcHandler: IOException -> 0x0036] */
    private <K, V> Map<K, V> loadMap(File file, byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr2 = new byte[bArr.length];
            fileInputStream.read(bArr2);
            if (!Arrays.equals(bArr2, bArr)) {
                return null;
            }
            byte[] bArrW = com.xinzhu.overmind.utils.l.w(fileInputStream);
            parcelObtain.unmarshall(bArrW, 0, bArrW.length);
            parcelObtain.setDataPosition(0);
            return parcelObtain.readHashMap(MindAccountManagerService.class.getClassLoader());
        } catch (IOException e10) {
            com.xinzhu.overmind.utils.q.c(TAG, "Error reading data file " + file);
            e10.printStackTrace();
            return null;
        } catch (FileNotFoundException unused) {
            return null;
        } finally {
            parcelObtain.recycle();
        }
    }

    private Map<Account, AtomicReference<String>> loadPreviousName(a0 a0Var) {
        return loadMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_PREVIOUS_NAME), ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC);
    }

    private List<UidGrant> loadUidGrants(a0 a0Var) {
        return loadList(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_UID_GRANT), ACCOUNTS_FILE_UID_GRANT_MAGIC);
    }

    private Map<Account, Map<String, String>> loadUserData(a0 a0Var) {
        return loadMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_USER_DATA), ACCOUNTS_FILE_USER_DATA_MAGIC);
    }

    private Map<Account, Map<String, Integer>> loadVisibilities(a0 a0Var) {
        return loadMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_VISIBILITY), ACCOUNTS_FILE_VISIBILITY_MAGIC);
    }

    private boolean needToStartChooseAccountActivity(Account[] accountArr, String str) {
        if (accountArr.length < 1) {
            return false;
        }
        return accountArr.length > 1 || resolveAccountVisibility(accountArr[0], str, getUserAccounts(BinderHelper.b().f89522d)).intValue() == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Intent newGrantCredentialsPermissionIntent(Account account, String str, int i10, AccountAuthenticatorResponse accountAuthenticatorResponse, String str2, boolean z10) {
        Intent intent = new Intent(Overmind.getContext(), (Class<?>) GrantCredentialsPermissionActivity.class);
        if (z10) {
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getCredentialPermissionNotificationId(account, str2, i10).f89562a);
        if (str == null) {
            str = "";
        }
        sb2.append(str);
        intent.addCategory(sb2.toString());
        intent.putExtra(GrantCredentialsPermissionActivity.f89265g, account);
        intent.putExtra("authTokenType", str2);
        intent.putExtra(GrantCredentialsPermissionActivity.f89267i, accountAuthenticatorResponse);
        intent.putExtra("uid", i10);
        return intent;
    }

    private Intent newRequestAccountAccessIntent(Account account, String str, int i10, RemoteCallback remoteCallback) {
        return newGrantCredentialsPermissionIntent(account, str, i10, (AccountAuthenticatorResponse) l8.b.b(new h(account, i10, str, remoteCallback)).f94096a, ACCOUNT_ACCESS_TOKEN_TYPE, false);
    }

    private void notifyPackage(String str, a0 a0Var) {
        Intent intent = new Intent(ACTION_VISIBLE_ACCOUNTS_CHANGED);
        intent.setPackage(str);
        intent.setFlags(1073741824);
        try {
            this.mContext.sendBroadcast(na.c.k(com.xinzhu.overmind.server.am.f.get().sendBroadcast(intent, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), a0Var.f89542a)));
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    private void onResult(IAccountManagerResponse iAccountManagerResponse, Bundle bundle) {
        if (bundle == null) {
            com.xinzhu.overmind.utils.q.d(TAG, "the result is unexpectedly null", new Exception());
        }
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, getClass().getSimpleName() + " calling onResult() on response " + iAccountManagerResponse);
        }
        try {
            iAccountManagerResponse.onResult(bundle);
        } catch (RemoteException e10) {
            if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                com.xinzhu.overmind.utils.q.j(TAG, "failure while notifying response", e10);
            }
        }
    }

    private boolean packageExistsForUser(String str, int i10) {
        return MindPackageManagerService.get().getPackageUid(str, 0, i10) != -1;
    }

    private boolean permissionIsGranted(Account account, String str, int i10, int i11) {
        if (MindUserHandle.a(i10) == 1000) {
            if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(TAG, "Access to " + account + " granted calling uid is system");
            }
            return true;
        }
        if (account != null && isAccountManagedByCaller(account.type, i10, i11)) {
            if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                com.xinzhu.overmind.utils.q.i(TAG, "Access to " + account + " granted calling uid " + i10 + " manages the account");
            }
            return true;
        }
        if (account == null || !hasExplicitlyGrantedPermission(account, str, i10)) {
            if (!com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                return false;
            }
            com.xinzhu.overmind.utils.q.i(TAG, "Access to " + account + " not granted for uid " + i10);
            return false;
        }
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "Access to " + account + " granted calling uid " + i10 + " user granted access");
        }
        return true;
    }

    private void purgeOldGrants(a0 a0Var) {
        synchronized (a0Var.f89543b) {
            Iterator<Integer> it2 = a0Var.n().iterator();
            while (it2.hasNext()) {
                int iIntValue = it2.next().intValue();
                if (!(MindPackageManagerService.get().getPackagesForUid(iIntValue) != null)) {
                    com.xinzhu.overmind.utils.q.a(TAG, "deleting grants for UID " + iIntValue + " because its package is no longer installed");
                    a0Var.m(iIntValue);
                    saveUidGrantsLocked(a0Var);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void purgeOldGrantsAll() {
        synchronized (this.mUsers) {
            for (int i10 = 0; i10 < this.mUsers.size(); i10++) {
                purgeOldGrants(this.mUsers.valueAt(i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void purgeUserData(int i10) {
        synchronized (this.mUsers) {
            this.mUsers.remove(i10);
        }
    }

    private String readPasswordInternal(a0 a0Var, Account account) {
        synchronized (a0Var.f89543b) {
            for (MindAccount mindAccount : a0Var.f89544c.values()) {
                if (account.name.equals(mindAccount.f89536b.name) && account.type.equals(mindAccount.f89536b.type)) {
                    return mindAccount.b();
                }
            }
            return null;
        }
    }

    private String readPreviousNameInternal(a0 a0Var, Account account) {
        if (account == null) {
            return null;
        }
        synchronized (a0Var.f89543b) {
            AtomicReference atomicReference = (AtomicReference) a0Var.f89553l.get(account);
            if (atomicReference != null) {
                return (String) atomicReference.get();
            }
            String str = account.name;
            a0Var.f89553l.put(account, new AtomicReference(str));
            saveAccountPreviousNameLocked(a0Var);
            return str;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001e A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:6:0x0008, B:7:0x000c, B:9:0x0010, B:11:0x001e, B:12:0x002a, B:14:0x0033, B:15:0x0038, B:16:0x0042), top: B:21:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:14:0x0033 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:6:0x0008, B:7:0x000c, B:9:0x0010, B:11:0x001e, B:12:0x002a, B:14:0x0033, B:15:0x0038, B:16:0x0042), top: B:21:0x0008 }] */
    /* JADX WARN: Code duplicated, block: B:25:0x0038 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0010 A[Catch: all -> 0x0044, TryCatch #0 {, blocks: (B:6:0x0008, B:7:0x000c, B:9:0x0010, B:11:0x001e, B:12:0x002a, B:14:0x0033, B:15:0x0038, B:16:0x0042), top: B:21:0x0008 }] */
    private void registerAccountListener(String[] strArr, String str, a0 a0Var) {
        int i10;
        Map map;
        Integer num;
        int iIntValue;
        synchronized (a0Var.f89552k) {
            if (strArr == null) {
                strArr = new String[]{null};
                for (String str2 : strArr) {
                    map = (Map) a0Var.f89552k.get(str2);
                    if (map == null) {
                        map = new HashMap();
                        a0Var.f89552k.put(str2, map);
                    }
                    num = (Integer) map.get(str);
                    iIntValue = 1;
                    if (num != null) {
                        iIntValue = 1 + num.intValue();
                    }
                    map.put(str, Integer.valueOf(iIntValue));
                }
            } else {
                while (i10 < r1) {
                    map = (Map) a0Var.f89552k.get(str2);
                    if (map == null) {
                        map = new HashMap();
                        a0Var.f89552k.put(str2, map);
                    }
                    num = (Integer) map.get(str);
                    iIntValue = 1;
                    if (num != null) {
                        iIntValue = 1 + num.intValue();
                    }
                    map.put(str, Integer.valueOf(iIntValue));
                }
            }
            throw th;
        }
    }

    private void removeAccountFromCacheLocked(a0 a0Var, Account account) {
        Account[] accountArr = a0Var.f89547f.get(account.type);
        if (accountArr != null) {
            ArrayList arrayList = new ArrayList();
            for (Account account2 : accountArr) {
                if (!account2.equals(account)) {
                    arrayList.add(account2);
                }
            }
            if (arrayList.isEmpty()) {
                a0Var.f89547f.remove(account.type);
            } else {
                a0Var.f89547f.put(account.type, (Account[]) arrayList.toArray(new Account[arrayList.size()]));
            }
        }
        a0Var.f89548g.remove(account);
        saveAccountUserDataLocked(a0Var);
        a0Var.f89549h.remove(account);
        saveAccountAuthTokenLocked(a0Var);
        a0Var.f89553l.remove(account);
        saveAccountPreviousNameLocked(a0Var);
        a0Var.f89551j.remove(account);
        saveAccountVisibilitiesLocked(a0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean removeAccountInternal(a0 a0Var, final Account account, int i10) {
        synchronized (a0Var.f89543b) {
            Map<String, Integer> requestingPackages = getRequestingPackages(account, a0Var);
            List<String> accountRemovedReceivers = getAccountRemovedReceivers(account, a0Var);
            a0Var.f89544c.remove(account);
            saveAccountDataLocked(a0Var);
            removeAccountFromCacheLocked(a0Var, account);
            for (Map.Entry<String, Integer> entry : requestingPackages.entrySet()) {
                if (entry.getValue().intValue() == 1 || entry.getValue().intValue() == 2) {
                    notifyPackage(entry.getKey(), a0Var);
                }
            }
            sendAccountsChangedBroadcast(a0Var.f89542a);
            Iterator<String> it2 = accountRemovedReceivers.iterator();
            while (it2.hasNext()) {
                sendAccountRemovedBroadcast(account, it2.next(), a0Var.f89542a);
            }
        }
        synchronized (a0Var.f89545d) {
            for (Pair pair : a0Var.f89545d.keySet()) {
                if (account.equals(((Pair) pair.first).first) && ACCOUNT_ACCESS_TOKEN_TYPE.equals(((Pair) pair.first).second)) {
                    final int iIntValue = ((Integer) pair.second).intValue();
                    this.mHandler.post(new Runnable() { // from class: com.xinzhu.overmind.server.accounts.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f89590b.lambda$removeAccountInternal$0(account, iIntValue);
                        }
                    });
                }
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeVisibilityValuesForPackage(String str) {
        if (isSpecialPackageKey(str)) {
            return;
        }
        synchronized (this.mUsers) {
            int size = this.mUsers.size();
            for (int i10 = 0; i10 < size; i10++) {
                a0 a0VarValueAt = this.mUsers.valueAt(i10);
                if (-1 == MindPackageManagerService.get().getPackageUid(str, 0, a0VarValueAt.f89542a)) {
                    synchronized (a0VarValueAt.f89543b) {
                        Iterator it2 = a0VarValueAt.f89551j.keySet().iterator();
                        while (it2.hasNext()) {
                            getPackagesAndVisibilityForAccountLocked((Account) it2.next(), a0VarValueAt).remove(str);
                        }
                        saveAccountVisibilitiesLocked(a0VarValueAt);
                    }
                }
            }
        }
    }

    private Account renameAccountInternal(a0 a0Var, Account account, String str) {
        cancelNotification(getSigninRequiredNotificationId(a0Var, account), new MindUserHandle(a0Var.f89542a));
        synchronized (a0Var.f89545d) {
            for (Pair pair : a0Var.f89545d.keySet()) {
                if (account.equals(((Pair) pair.first).first)) {
                    cancelNotification((u) a0Var.f89545d.get(pair), new MindUserHandle(a0Var.f89542a));
                }
            }
        }
        synchronized (a0Var.f89543b) {
            List<String> accountRemovedReceivers = getAccountRemovedReceivers(account, a0Var);
            Account account2 = new Account(str, account.type);
            MindAccount mindAccount = new MindAccount(account2);
            if (((MindAccount) a0Var.f89544c.get(account2)) != null) {
                com.xinzhu.overmind.utils.q.c(TAG, "renameAccount failed - account with new name already exists");
                return null;
            }
            MindAccount mindAccount2 = (MindAccount) a0Var.f89544c.get(account);
            if (mindAccount2 != null) {
                mindAccount.f89537c = mindAccount2.f89537c;
            }
            a0Var.f89544c.remove(account);
            a0Var.f89544c.put(account2, mindAccount);
            saveAccountDataLocked(a0Var);
            Account accountInsertAccountIntoCacheLocked = insertAccountIntoCacheLocked(a0Var, account2);
            Map map = (Map) a0Var.f89548g.get(account);
            Map map2 = (Map) a0Var.f89549h.get(account);
            Map map3 = (Map) a0Var.f89551j.get(account);
            removeAccountFromCacheLocked(a0Var, account);
            a0Var.f89548g.put(accountInsertAccountIntoCacheLocked, map);
            saveAccountUserDataLocked(a0Var);
            a0Var.f89549h.put(accountInsertAccountIntoCacheLocked, map2);
            saveAccountAuthTokenLocked(a0Var);
            a0Var.f89551j.put(accountInsertAccountIntoCacheLocked, map3);
            saveAccountVisibilitiesLocked(a0Var);
            a0Var.f89553l.put(accountInsertAccountIntoCacheLocked, new AtomicReference(account.name));
            saveAccountPreviousNameLocked(a0Var);
            sendNotificationAccountUpdated(accountInsertAccountIntoCacheLocked, a0Var);
            sendAccountsChangedBroadcast(a0Var.f89542a);
            Iterator<String> it2 = accountRemovedReceivers.iterator();
            while (it2.hasNext()) {
                sendAccountRemovedBroadcast(account, it2.next(), a0Var.f89542a);
            }
            return accountInsertAccountIntoCacheLocked;
        }
    }

    private Integer resolveAccountVisibility(Account account, String str, a0 a0Var) {
        Objects.requireNonNull(str, "packageName cannot be null");
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int packageUid = MindPackageManagerService.get().getPackageUid(str, 0, a0Var.f89542a);
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            if (MindUserHandle.B(packageUid, 1000)) {
                return 1;
            }
            int iCheckPackageSignature = checkPackageSignature(account.type, packageUid, a0Var.f89542a);
            int accountVisibilityFromCache = 2;
            if (iCheckPackageSignature == 2) {
                return 1;
            }
            int accountVisibilityFromCache2 = getAccountVisibilityFromCache(account, str, a0Var);
            if (accountVisibilityFromCache2 != 0) {
                return Integer.valueOf(accountVisibilityFromCache2);
            }
            boolean zIsPreOApplication = isPreOApplication(str);
            if (iCheckPackageSignature != 0 || zIsPreOApplication || accountTypeManagesContacts(account.type, a0Var.f89542a)) {
                int accountVisibilityFromCache3 = getAccountVisibilityFromCache(account, PACKAGE_NAME_KEY_LEGACY_VISIBLE, a0Var);
                if (accountVisibilityFromCache3 != 0) {
                    accountVisibilityFromCache = accountVisibilityFromCache3;
                }
            } else {
                accountVisibilityFromCache = getAccountVisibilityFromCache(account, PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE, a0Var);
                if (accountVisibilityFromCache == 0) {
                    accountVisibilityFromCache = 4;
                }
            }
            return Integer.valueOf(accountVisibilityFromCache);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    private void revokeAppPermission(final Account account, String str, final int i10) {
        if (account == null || str == null) {
            com.xinzhu.overmind.utils.q.d(TAG, "revokeAppPermission: called with invalid arguments", new Exception());
            return;
        }
        a0 userAccounts = getUserAccounts(MindUserHandle.x(i10));
        synchronized (userAccounts.f89543b) {
            userAccounts.l(account, str, i10);
            cancelNotification(getCredentialPermissionNotificationId(account, str, i10), MindUserHandle.F(userAccounts.f89542a));
        }
        for (final v vVar : this.mAppPermissionChangeListeners) {
            this.mHandler.post(new Runnable() { // from class: com.xinzhu.overmind.server.accounts.h
                @Override // java.lang.Runnable
                public final void run() {
                    vVar.a(account, i10);
                }
            });
        }
    }

    private void saveAccountAuthTokenLocked(a0 a0Var) {
        saveMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_AUTH_TOKEN), ACCOUNTS_FILE_AUTH_TOKEN_MAGIC, a0Var.f89549h);
    }

    private void saveAccountDataLocked(a0 a0Var) {
        Parcel parcelObtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_DATA));
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            parcelObtain.writeTypedList(new ArrayList(a0Var.f89544c.values()));
            parcelObtain.setDataPosition(0);
            fileOutputStreamStartWrite = atomicFile.startWrite();
            fileOutputStreamStartWrite.write(ACCOUNTS_FILE_DATA_MAGIC);
            com.xinzhu.overmind.utils.l.z(parcelObtain, fileOutputStreamStartWrite);
            atomicFile.finishWrite(fileOutputStreamStartWrite);
            parcelObtain.recycle();
            com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStreamStartWrite);
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
            } catch (Throwable th2) {
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                throw th2;
            }
        }
    }

    private void saveAccountPreviousNameLocked(a0 a0Var) {
        saveMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_PREVIOUS_NAME), ACCOUNTS_FILE_PREVIOUS_NAME_MAGIC, a0Var.f89553l);
    }

    private void saveAccountUserDataLocked(a0 a0Var) {
        saveMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_USER_DATA), ACCOUNTS_FILE_USER_DATA_MAGIC, a0Var.f89548g);
    }

    private void saveAccountVisibilitiesLocked(a0 a0Var) {
        saveMap(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_VISIBILITY), ACCOUNTS_FILE_VISIBILITY_MAGIC, a0Var.f89551j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveAuthTokenToDatabase(a0 a0Var, Account account, String str, String str2) {
        if (account == null || str == null) {
            return false;
        }
        cancelNotification(getSigninRequiredNotificationId(a0Var, account), new MindUserHandle(a0Var.f89542a));
        synchronized (a0Var.f89543b) {
            writeAuthTokenIntoCacheLocked(a0Var, account, str, str2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveCachedToken(a0 a0Var, Account account, String str, byte[] bArr, String str2, String str3, long j10) {
        if (account == null || str2 == null || str == null || bArr == null) {
            return;
        }
        cancelNotification(getSigninRequiredNotificationId(a0Var, account), MindUserHandle.F(a0Var.f89542a));
        synchronized (a0Var.f89543b) {
            a0Var.f89550i.b(account, str3, str2, str, bArr, j10);
        }
    }

    private void saveList(File file, byte[] bArr, List list) {
        Parcel parcelObtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(file);
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            parcelObtain.writeList(list);
            parcelObtain.setDataPosition(0);
            fileOutputStreamStartWrite = atomicFile.startWrite();
            fileOutputStreamStartWrite.write(bArr);
            com.xinzhu.overmind.utils.l.z(parcelObtain, fileOutputStreamStartWrite);
            atomicFile.finishWrite(fileOutputStreamStartWrite);
            parcelObtain.recycle();
            com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStreamStartWrite);
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
            } catch (Throwable th2) {
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                throw th2;
            }
        }
    }

    private void saveMap(File file, byte[] bArr, Map map) {
        Parcel parcelObtain = Parcel.obtain();
        AtomicFile atomicFile = new AtomicFile(file);
        FileOutputStream fileOutputStreamStartWrite = null;
        try {
            parcelObtain.writeMap(map);
            parcelObtain.setDataPosition(0);
            fileOutputStreamStartWrite = atomicFile.startWrite();
            fileOutputStreamStartWrite.write(bArr);
            com.xinzhu.overmind.utils.l.z(parcelObtain, fileOutputStreamStartWrite);
            atomicFile.finishWrite(fileOutputStreamStartWrite);
            parcelObtain.recycle();
            com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                atomicFile.failWrite(fileOutputStreamStartWrite);
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
            } catch (Throwable th2) {
                parcelObtain.recycle();
                com.xinzhu.overmind.utils.p.a(fileOutputStreamStartWrite);
                throw th2;
            }
        }
    }

    private void saveUidGrantsLocked(a0 a0Var) {
        saveList(new File(com.xinzhu.overmind.a.b(a0Var.f89542a), ACCOUNTS_FILE_UID_GRANT), ACCOUNTS_FILE_UID_GRANT_MAGIC, a0Var.f89554m);
    }

    private void sendAccountRemovedBroadcast(Account account, String str, int i10) {
        Intent intent = new Intent(ACTION_ACCOUNT_REMOVED);
        intent.setPackage(str);
        intent.putExtra("authAccount", account.name);
        intent.putExtra("accountType", account.type);
        try {
            this.mContext.sendBroadcast(na.c.k(com.xinzhu.overmind.server.am.f.get().sendBroadcast(intent, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10)));
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    private void sendAccountsChangedBroadcast(int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("the accounts changed, sending broadcast of ");
        Intent intent = ACCOUNTS_CHANGED_INTENT;
        sb2.append(intent.getAction());
        com.xinzhu.overmind.utils.q.e(TAG, sb2.toString());
        try {
            this.mContext.sendBroadcast(na.c.k(com.xinzhu.overmind.server.am.f.get().sendBroadcast(intent, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), i10)));
        } catch (RemoteException e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendErrorResponse(IAccountManagerResponse iAccountManagerResponse, int i10, String str) {
        try {
            iAccountManagerResponse.onError(i10, str);
        } catch (RemoteException e10) {
            if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                com.xinzhu.overmind.utils.q.j(TAG, "failure while notifying response", e10);
            }
        }
    }

    private void sendNotificationAccountUpdated(Account account, a0 a0Var) {
        for (Map.Entry<String, Integer> entry : getRequestingPackages(account, a0Var).entrySet()) {
            if (entry.getValue().intValue() != 3 && entry.getValue().intValue() != 4) {
                notifyPackage(entry.getKey(), a0Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendResponse(IAccountManagerResponse iAccountManagerResponse, Bundle bundle) {
        try {
            iAccountManagerResponse.onResult(bundle);
        } catch (RemoteException e10) {
            if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                com.xinzhu.overmind.utils.q.j(TAG, "failure while notifying response", e10);
            }
        }
    }

    private boolean setAccountVisibility(Account account, String str, int i10, boolean z10, a0 a0Var) {
        Map<String, Integer> mapEmptyMap;
        List<String> listEmptyList;
        synchronized (a0Var.f89543b) {
            try {
                if (!z10) {
                    if (!isSpecialPackageKey(str) && !packageExistsForUser(str, a0Var.f89542a)) {
                        return false;
                    }
                    mapEmptyMap = Collections.emptyMap();
                    listEmptyList = Collections.emptyList();
                } else if (isSpecialPackageKey(str)) {
                    mapEmptyMap = getRequestingPackages(account, a0Var);
                    listEmptyList = getAccountRemovedReceivers(account, a0Var);
                } else {
                    if (!packageExistsForUser(str, a0Var.f89542a)) {
                        return false;
                    }
                    mapEmptyMap = new HashMap<>();
                    mapEmptyMap.put(str, resolveAccountVisibility(account, str, a0Var));
                    listEmptyList = new ArrayList<>();
                    if (shouldNotifyPackageOnAccountRemoval(account, str, a0Var)) {
                        listEmptyList.add(str);
                    }
                }
                if (!updateAccountVisibilityLocked(account, str, i10, a0Var)) {
                    return false;
                }
                if (z10) {
                    for (Map.Entry<String, Integer> entry : mapEmptyMap.entrySet()) {
                        if (isVisible(entry.getValue().intValue()) != isVisible(resolveAccountVisibility(account, str, a0Var).intValue())) {
                            notifyPackage(entry.getKey(), a0Var);
                        }
                    }
                    Iterator<String> it2 = listEmptyList.iterator();
                    while (it2.hasNext()) {
                        sendAccountRemovedBroadcast(account, it2.next(), a0Var.f89542a);
                    }
                    sendAccountsChangedBroadcast(a0Var.f89542a);
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void setPasswordInternal(a0 a0Var, Account account, String str, int i10) {
        if (account == null) {
            return;
        }
        synchronized (a0Var.f89543b) {
            MindAccount mindAccount = (MindAccount) a0Var.f89544c.get(account);
            if (mindAccount != null) {
                mindAccount.f89537c = str;
                a0Var.f89549h.remove(account);
                a0Var.f89550i.c(account);
                saveAccountDataLocked(a0Var);
                saveAccountAuthTokenLocked(a0Var);
                sendNotificationAccountUpdated(account, a0Var);
                sendAccountsChangedBroadcast(a0Var.f89542a);
            }
        }
    }

    private void setUserdataInternal(a0 a0Var, Account account, String str, String str2) {
        synchronized (a0Var.f89543b) {
            writeUserDataIntoCacheLocked(a0Var, account, str, str2);
        }
    }

    private boolean shouldNotifyPackageOnAccountRemoval(Account account, String str, a0 a0Var) {
        int iIntValue = resolveAccountVisibility(account, str, a0Var).intValue();
        if (iIntValue != 1 && iIntValue != 2) {
            return false;
        }
        Intent intent = new Intent(ACTION_ACCOUNT_REMOVED);
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentBroadcastReceivers = MindPackageManagerService.get().queryIntentBroadcastReceivers(intent, 0, intent.resolveTypeIfNeeded(Overmind.getContext().getContentResolver()), a0Var.f89542a);
        return listQueryIntentBroadcastReceivers != null && listQueryIntentBroadcastReceivers.size() > 0;
    }

    private void showCantAddAccount(int i10, int i11) {
    }

    private void startChooseAccountActivityWithAccounts(IAccountManagerResponse iAccountManagerResponse, Account[] accountArr, String str) {
        Intent intent = new Intent(Overmind.getContext(), (Class<?>) ChooseAccountActivity.class);
        intent.putExtra("accounts", accountArr);
        intent.putExtra("accountManagerResponse", new AccountManagerResponse(iAccountManagerResponse));
        intent.putExtra("androidPackageName", str);
        Overmind.getContext().startActivity(intent);
    }

    private void unregisterAccountListener(String[] strArr, String str, a0 a0Var) {
        synchronized (a0Var.f89552k) {
            if (strArr == null) {
                strArr = new String[]{null};
            }
            for (String str2 : strArr) {
                Map map = (Map) a0Var.f89552k.get(str2);
                if (map == null || map.get(str) == null) {
                    throw new IllegalArgumentException("attempt to unregister wrong receiver");
                }
                Integer num = (Integer) map.get(str);
                if (num != null) {
                    if (num.intValue() == 1) {
                        map.remove(str);
                    } else {
                        map.put(str, Integer.valueOf(num.intValue() - 1));
                    }
                }
            }
        }
    }

    private boolean updateAccountVisibilityLocked(Account account, String str, int i10, a0 a0Var) {
        if (((MindAccount) a0Var.f89544c.get(account)) == null) {
            return false;
        }
        getPackagesAndVisibilityForAccountLocked(account, a0Var).put(str, Integer.valueOf(i10));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean updateLastAuthenticatedTime(Account account) {
        a0 userAccountsForCaller = getUserAccountsForCaller();
        synchronized (userAccountsForCaller.f89543b) {
            MindAccount mindAccount = (MindAccount) userAccountsForCaller.f89544c.get(account);
            if (mindAccount == null) {
                return false;
            }
            mindAccount.f89538d = System.currentTimeMillis();
            saveAccountDataLocked(userAccountsForCaller);
            return true;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean accountAuthenticated(Account account) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, String.format("accountAuthenticated( account: %s, callerUid: %s)", account, Integer.valueOf(i10)));
        }
        Objects.requireNonNull(account, "account cannot be null");
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot notify authentication for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        if (!canUserModifyAccounts(i11, i10) || !canUserModifyAccountsForType(i11, account.type, i10)) {
            return false;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            getUserAccounts(i11);
            return updateLastAuthenticatedTime(account);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addAccount(IAccountManagerResponse iAccountManagerResponse, String str, String str2, String[] strArr, boolean z10, Bundle bundle) {
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "addAccount: accountType " + str + ", response " + iAccountManagerResponse + ", authTokenType " + str2 + ", requiredFeatures " + Arrays.toString(strArr) + ", expectActivityLaunch " + z10 + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid() + " helperuid " + BinderHelper.b().f89521c + " realuid " + Overmind.getHostUid() + " " + Arrays.asList(this.mContext.getPackageManager().getPackagesForUid(Overmind.getHostUid())));
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int iX = MindUserHandle.x(i10);
        if (!canUserModifyAccounts(iX, i10)) {
            try {
                iAccountManagerResponse.onError(100, "User is not allowed to add an account!");
            } catch (RemoteException unused) {
            }
            showCantAddAccount(100, iX);
            return;
        }
        if (!canUserModifyAccountsForType(iX, str, i10)) {
            try {
                iAccountManagerResponse.onError(101, "User cannot modify accounts of this type (policy).");
            } catch (RemoteException unused2) {
            }
            showCantAddAccount(101, iX);
            return;
        }
        int i11 = callingInfoB.f89520b;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        bundle2.putInt("callerUid", i10);
        bundle2.putInt("callerPid", i11);
        int i12 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new o(getUserAccounts(i12), iAccountManagerResponse, str, z10, true, null, false, true, str2, strArr, bundle2, str).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addAccountAsUser(IAccountManagerResponse iAccountManagerResponse, String str, String str2, String[] strArr, boolean z10, Bundle bundle, int i10) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "addAccount: accountType " + str + ", response " + iAccountManagerResponse + ", authTokenType " + str2 + ", requiredFeatures " + Arrays.toString(strArr) + ", expectActivityLaunch " + z10 + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid() + ", for user id " + i10);
        }
        Objects.requireNonNull(iAccountManagerResponse, "response cannot be null");
        Objects.requireNonNull(str, "accountType cannot be null");
        if (isCrossUser(i11, i10)) {
            throw new SecurityException(String.format("User %s trying to add account for %s", Integer.valueOf(callingInfoB.f89522d), Integer.valueOf(i10)));
        }
        if (!canUserModifyAccounts(i10, i11)) {
            try {
                iAccountManagerResponse.onError(100, "User is not allowed to add an account!");
            } catch (RemoteException unused) {
            }
            showCantAddAccount(100, i10);
            return;
        }
        if (!canUserModifyAccountsForType(i10, str, i11)) {
            try {
                iAccountManagerResponse.onError(101, "User cannot modify accounts of this type (policy).");
            } catch (RemoteException unused2) {
            }
            showCantAddAccount(101, i10);
            return;
        }
        int i12 = callingInfoB.f89520b;
        int i13 = callingInfoB.f89521c;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        bundle2.putInt("callerUid", i13);
        bundle2.putInt("callerPid", i12);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new p(getUserAccounts(i10), iAccountManagerResponse, str, z10, true, null, false, true, str2, strArr, bundle2, str).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addAccountExplicitly(Account account, String str, Bundle bundle) {
        return addAccountExplicitlyWithVisibility(account, str, bundle, null);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addAccountExplicitlyWithVisibility(Account account, String str, Bundle bundle, Map map) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "addAccountExplicitly: " + account + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot explicitly add accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return addAccountInternal(getUserAccounts(i11), account, str, bundle, i10, map);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    public void addOnAppPermissionChangeListener(v vVar) {
        this.mAppPermissionChangeListeners.add(vVar);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean addSharedAccountAsUser(Account account, int i10) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void addSharedAccountsFromParentUser(int i10, int i11, String str) {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void clearPassword(Account account) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "clearPassword: " + account + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot clear passwords for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            setPasswordInternal(getUserAccounts(i11), account, null, i10);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void confirmCredentialsAsUser(IAccountManagerResponse iAccountManagerResponse, Account account, Bundle bundle, boolean z10, int i10) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "confirmCredentials: " + account + ", response " + iAccountManagerResponse + ", expectActivityLaunch " + z10 + ", caller's uid " + i11 + ", pid " + callingInfoB.f89520b);
        }
        if (isCrossUser(i11, i10)) {
            throw new SecurityException(String.format("User %s trying to confirm account credentials for %s", Integer.valueOf(callingInfoB.f89522d), Integer.valueOf(i10)));
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new b(getUserAccounts(i10), iAccountManagerResponse, account.type, z10, true, account.name, true, true, account, bundle).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void copyAccountToUser(IAccountManagerResponse iAccountManagerResponse, Account account, int i10, int i11) {
        if (isCrossUser(BinderHelper.b().f89521c, -1)) {
            throw new SecurityException("Calling copyAccountToUser requires android.Manifest.permission.INTERACT_ACROSS_USERS_FULL");
        }
        a0 userAccounts = getUserAccounts(i10);
        a0 userAccounts2 = getUserAccounts(i11);
        if (userAccounts == null || userAccounts2 == null) {
            if (iAccountManagerResponse != null) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("booleanResult", false);
                try {
                    iAccountManagerResponse.onResult(bundle);
                    return;
                } catch (RemoteException e10) {
                    com.xinzhu.overmind.utils.y.j(TAG, "Failed to report error back to the client." + e10);
                    return;
                }
            }
            return;
        }
        com.xinzhu.overmind.utils.y.a(TAG, "Copying account " + account.toString() + " from user " + i10 + " to user " + i11);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new m(userAccounts, iAccountManagerResponse, account.type, false, false, account.name, false, account, iAccountManagerResponse, userAccounts2, i10).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String str, UserHandle userHandle) {
        if (MindUserHandle.a(BinderHelper.b().f89521c) != 1000) {
            throw new SecurityException("Can be called only by system UID");
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(str, "packageName cannot be null");
        Objects.requireNonNull(userHandle, "userHandle cannot be null");
        int identifier = new com.xinzhu.haunted.android.os.x(userHandle).getIdentifier();
        if (identifier < 0) {
            throw new IllegalArgumentException("user must be concrete");
        }
        int packageUid = MindPackageManagerService.get().getPackageUid(str, 0, identifier);
        if (packageUid == -1) {
            com.xinzhu.overmind.utils.y.c(TAG, "Unknown package " + str);
            return null;
        }
        Intent intentNewRequestAccountAccessIntent = newRequestAccountAccessIntent(account, str, packageUid, null);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return com.xinzhu.haunted.android.app.y.c(Overmind.getContext(), 0, intentNewRequestAccountAccessIntent, 1342177280, null, new MindUserHandle(identifier).I()).getIntentSender();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void editProperties(IAccountManagerResponse iAccountManagerResponse, String str, boolean z10) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "editProperties: accountType " + str + ", response " + iAccountManagerResponse + ", expectActivityLaunch " + z10 + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(str, i10, i11) && !isSystemUid(i10)) {
            throw new SecurityException(String.format("uid %s cannot edit authenticator properites for account type: %s", Integer.valueOf(i10), str));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new a(getUserAccounts(i11), iAccountManagerResponse, str, z10, true, null, false, str).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void finishSessionAsUser(IAccountManagerResponse iAccountManagerResponse, Bundle bundle, boolean z10, Bundle bundle2, int i10) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "finishSession: response " + iAccountManagerResponse + ", expectActivityLaunch " + z10 + ", caller's uid " + i11 + ", caller's user id " + callingInfoB.f89522d + ", pid " + Binder.getCallingPid() + ", for user id " + i10);
        }
        Objects.requireNonNull(iAccountManagerResponse, "response cannot be null");
        if (bundle == null || bundle.size() == 0) {
            throw new IllegalArgumentException("sessionBundle is empty");
        }
        if (isCrossUser(i11, i10)) {
            throw new SecurityException(String.format("User %s trying to finish session for %s without cross user permission", Integer.valueOf(callingInfoB.f89522d), Integer.valueOf(i10)));
        }
        if (!canUserModifyAccounts(i10, i11)) {
            sendErrorResponse(iAccountManagerResponse, 100, "User is not allowed to add an account!");
            showCantAddAccount(100, i10);
            return;
        }
        int callingPid = Binder.getCallingPid();
        try {
            Bundle bundleC = com.xinzhu.overmind.server.accounts.c.e().c(bundle);
            if (bundleC == null) {
                sendErrorResponse(iAccountManagerResponse, 8, "failed to decrypt session bundle");
                return;
            }
            String string = bundleC.getString("accountType");
            if (TextUtils.isEmpty(string)) {
                sendErrorResponse(iAccountManagerResponse, 7, "accountType is empty");
                return;
            }
            if (bundle2 != null) {
                bundleC.putAll(bundle2);
            }
            bundleC.putInt("callerUid", i11);
            bundleC.putInt("callerPid", callingPid);
            if (!canUserModifyAccountsForType(i10, string, i11)) {
                sendErrorResponse(iAccountManagerResponse, 101, "User cannot modify accounts of this type (policy).");
                showCantAddAccount(101, i10);
            } else {
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    new f(getUserAccounts(i10), iAccountManagerResponse, string, z10, true, null, false, true, bundleC, string).bind();
                } finally {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
        } catch (GeneralSecurityException e10) {
            if (com.xinzhu.overmind.utils.q.g(TAG, 3)) {
                com.xinzhu.overmind.utils.q.j(TAG, "Failed to decrypt session bundle!", e10);
            }
            sendErrorResponse(iAccountManagerResponse, 8, "failed to decrypt session bundle");
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAccountByTypeAndFeatures(IAccountManagerResponse iAccountManagerResponse, String str, String[] strArr, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getAccount: accountType " + str + ", response " + iAccountManagerResponse + ", features " + Arrays.toString(strArr) + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        int i11 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i11);
            if (com.xinzhu.overmind.utils.d.o(strArr)) {
                handleGetAccountsResult(iAccountManagerResponse, getAccountsFromCache(userAccounts, str, i10, str2, true), str2);
            } else {
                new s(userAccounts, new k(iAccountManagerResponse, str2), str, strArr, i10, str2, true).bind();
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public int getAccountVisibility(Account account, String str) {
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(str, "packageName cannot be null");
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11) && !isSystemUid(i10)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i11);
            if (PACKAGE_NAME_KEY_LEGACY_VISIBLE.equals(str)) {
                int accountVisibilityFromCache = getAccountVisibilityFromCache(account, str, userAccounts);
                if (accountVisibilityFromCache != 0) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                    return accountVisibilityFromCache;
                }
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                return 2;
            }
            if (!PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE.equals(str)) {
                int iIntValue = resolveAccountVisibility(account, str, userAccounts).intValue();
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                return iIntValue;
            }
            int accountVisibilityFromCache2 = getAccountVisibilityFromCache(account, str, userAccounts);
            if (accountVisibilityFromCache2 != 0) {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                return accountVisibilityFromCache2;
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            return 4;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    public Account[] getAccounts(int i10, String str) {
        int i11 = BinderHelper.b().f89521c;
        List<String> typesVisibleToCaller = getTypesVisibleToCaller(i11, i10, str);
        if (typesVisibleToCaller.isEmpty()) {
            return EMPTY_ACCOUNT_ARRAY;
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getAccountsInternal(getUserAccounts(i10), i11, str, typesVisibleToCaller, false);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsAsUser(String str, int i10, String str2) {
        return getAccountsAsUserForPackage(str, i10, str2, -1, str2, false);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAccountsByFeatures(IAccountManagerResponse iAccountManagerResponse, String str, String[] strArr, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getAccounts: accountType " + str + ", response " + iAccountManagerResponse + ", features " + Arrays.toString(strArr) + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        int i11 = callingInfoB.f89522d;
        if (!getTypesVisibleToCaller(i10, i11, str2).contains(str)) {
            Bundle bundle = new Bundle();
            bundle.putParcelableArray("accounts", EMPTY_ACCOUNT_ARRAY);
            try {
                iAccountManagerResponse.onResult(bundle);
                return;
            } catch (RemoteException e10) {
                com.xinzhu.overmind.utils.q.d(TAG, "Cannot respond to caller do to exception.", e10);
                return;
            }
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i11);
            if (strArr != null && strArr.length != 0) {
                new s(userAccounts, iAccountManagerResponse, str, strArr, i10, str2, false).bind();
                return;
            }
            Account[] accountsFromCache = getAccountsFromCache(userAccounts, str, i10, str2, false);
            Bundle bundle2 = new Bundle();
            bundle2.putParcelableArray("accounts", accountsFromCache);
            onResult(iAccountManagerResponse, bundle2);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsByTypeForPackage(String str, String str2, String str3) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        int packageUid = MindPackageManagerService.get().getPackageUid(str2, 0, i11);
        if (packageUid == -1) {
            com.xinzhu.overmind.utils.y.c(TAG, "Couldn't determine the packageUid for " + str2);
            return EMPTY_ACCOUNT_ARRAY;
        }
        if (MindUserHandle.B(i10, 1000) || str == null || isAccountManagedByCaller(str, i10, i11)) {
            return (MindUserHandle.B(i10, 1000) || str != null) ? getAccountsAsUserForPackage(str, i11, str2, packageUid, str3, true) : getAccountsAsUserForPackage(str, i11, str2, packageUid, str3, false);
        }
        return EMPTY_ACCOUNT_ARRAY;
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getAccountsForPackage(String str, int i10, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        if (MindUserHandle.B(i11, 1000)) {
            return getAccountsAsUserForPackage(null, callingInfoB.f89522d, str, i10, str2, true);
        }
        throw new SecurityException("getAccountsForPackage() called from unauthorized uid " + i11 + " with uid=" + i10);
    }

    protected Account[] getAccountsFromCache(a0 a0Var, String str, int i10, String str2, boolean z10) {
        Account[] accountArr;
        if (str != null) {
            synchronized (a0Var.f89543b) {
                accountArr = a0Var.f89547f.get(str);
            }
            return accountArr == null ? EMPTY_ACCOUNT_ARRAY : filterAccounts(a0Var, (Account[]) Arrays.copyOf(accountArr, accountArr.length), i10, str2, z10);
        }
        synchronized (a0Var.f89543b) {
            Iterator<Account[]> it2 = a0Var.f89547f.values().iterator();
            int length = 0;
            while (it2.hasNext()) {
                length += it2.next().length;
            }
            if (length == 0) {
                return EMPTY_ACCOUNT_ARRAY;
            }
            Account[] accountArr2 = new Account[length];
            int length2 = 0;
            for (Account[] accountArr3 : a0Var.f89547f.values()) {
                System.arraycopy(accountArr3, 0, accountArr2, length2, accountArr3.length);
                length2 += accountArr3.length;
            }
            return filterAccounts(a0Var, accountArr2, i10, str2, z10);
        }
    }

    public r[] getAllAccounts() {
        List<MindUserInfo> listF = ma.i.d().f();
        int size = listF.size();
        int[] iArr = new int[size];
        for (int i10 = 0; i10 < size; i10++) {
            iArr[i10] = listF.get(i10).f89950b;
        }
        return getAccounts(iArr);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAuthToken(IAccountManagerResponse iAccountManagerResponse, Account account, String str, boolean z10, boolean z11, Bundle bundle, int i10) {
        String cachedTokenInternal;
        String authTokenInternal;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getAuthToken: " + account + ", response " + iAccountManagerResponse + ", authTokenType " + str + ", notifyOnAuthFailure " + z10 + ", expectActivityLaunch " + z11 + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(iAccountManagerResponse, "response cannot be null");
        try {
            if (account == null) {
                com.xinzhu.overmind.utils.y.j(TAG, "getAuthToken called with null account");
                iAccountManagerResponse.onError(7, "account is null");
                return;
            }
            if (str == null) {
                com.xinzhu.overmind.utils.y.j(TAG, "getAuthToken called with null authTokenType");
                iAccountManagerResponse.onError(7, "authTokenType is null");
                return;
            }
            int i11 = BinderHelper.b().f89522d;
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            try {
                a0 userAccounts = getUserAccounts(i11);
                RegisteredServicesCache.c<AuthenticatorDescription> cVarB = this.mAuthenticatorCache.b(AuthenticatorDescription.newKey(account.type), userAccounts.f89542a);
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                boolean z12 = cVarB != null && cVarB.f89873a.customTokens;
                boolean z13 = z12 || permissionIsGranted(account, str, i10, i11);
                String string = bundle.getString("androidPackageName");
                long jClearCallingIdentity2 = Binder.clearCallingIdentity();
                try {
                    List listAsList = Arrays.asList(MindPackageManagerService.get().getPackagesForUid(i10));
                    Binder.restoreCallingIdentity(jClearCallingIdentity2);
                    if (string == null || !listAsList.contains(string)) {
                        throw new SecurityException(String.format("Uid %s is attempting to illegally masquerade as package %s!", Integer.valueOf(i10), string));
                    }
                    bundle.putInt("callerUid", i10);
                    bundle.putInt("callerPid", Binder.getCallingPid());
                    if (z10) {
                        bundle.putBoolean(KEY_NOTIFY_ON_FAILURE, true);
                    }
                    long jClearCallingIdentity3 = Binder.clearCallingIdentity();
                    try {
                        byte[] bArrCalculatePackageSignatureDigest = calculatePackageSignatureDigest(string);
                        if (!z12 && z13 && (authTokenInternal = readAuthTokenInternal(userAccounts, account, str)) != null) {
                            Bundle bundle2 = new Bundle();
                            bundle2.putString("authtoken", authTokenInternal);
                            bundle2.putString("authAccount", account.name);
                            bundle2.putString("accountType", account.type);
                            onResult(iAccountManagerResponse, bundle2);
                            return;
                        }
                        if (z12 && (cachedTokenInternal = readCachedTokenInternal(userAccounts, account, str, string, bArrCalculatePackageSignatureDigest)) != null) {
                            if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
                                com.xinzhu.overmind.utils.q.i(TAG, "getAuthToken: cache hit ofr custom token authenticator.");
                            }
                            Bundle bundle3 = new Bundle();
                            bundle3.putString("authtoken", cachedTokenInternal);
                            bundle3.putString("authAccount", account.name);
                            bundle3.putString("accountType", account.type);
                            onResult(iAccountManagerResponse, bundle3);
                            return;
                        }
                        new n(userAccounts, iAccountManagerResponse, account.type, z11, false, account.name, false, bundle, account, str, z10, z13, i10, z12, string, bArrCalculatePackageSignatureDigest, userAccounts).bind();
                    } finally {
                        Binder.restoreCallingIdentity(jClearCallingIdentity3);
                    }
                } catch (Throwable th) {
                    Binder.restoreCallingIdentity(jClearCallingIdentity2);
                    throw th;
                }
            } catch (Throwable th2) {
                Binder.restoreCallingIdentity(jClearCallingIdentity);
                throw th2;
            }
        } catch (RemoteException e10) {
            com.xinzhu.overmind.utils.y.j(TAG, "Failed to report error back to the client." + e10);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void getAuthTokenLabel(IAccountManagerResponse iAccountManagerResponse, String str, String str2) {
        Objects.requireNonNull(str, "accountType cannot be null");
        Objects.requireNonNull(str2, "authTokenType cannot be null");
        int callingUid = Binder.getCallingUid();
        Binder.clearCallingIdentity();
        if (MindUserHandle.a(callingUid) != 1000) {
            throw new SecurityException("can only call from system");
        }
        int iX = MindUserHandle.x(callingUid);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new c(getUserAccounts(iX), iAccountManagerResponse, str, false, false, null, false, str, str2).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public AuthenticatorDescription[] getAuthenticatorTypes(int i10) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getAuthenticatorTypes: for user id " + i10 + " caller's uid " + i11 + ", pid " + Binder.getCallingPid());
        }
        if (isCrossUser(i11, i10)) {
            throw new SecurityException(String.format("User %s tying to get authenticator types for %s", Integer.valueOf(callingInfoB.f89522d), Integer.valueOf(i10)));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getAuthenticatorTypesInternal(i10);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Map<String, Integer> getPackagesAndVisibilityForAccount(Account account) {
        Map<String, Integer> packagesAndVisibilityForAccountLocked;
        Objects.requireNonNull(account, "account cannot be null");
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11) && !isSystemUid(i10)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for account %s", Integer.valueOf(i10), account));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i11);
            synchronized (userAccounts.f89543b) {
                packagesAndVisibilityForAccountLocked = getPackagesAndVisibilityForAccountLocked(account, userAccounts);
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            return packagesAndVisibilityForAccountLocked;
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getPassword(Account account) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getPassword: " + account + ", caller's uid " + callingInfoB.f89521c + ", pid " + callingInfoB.f89520b);
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return readPasswordInternal(getUserAccounts(i11), account);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getPreviousName(Account account) {
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "getPreviousName: " + account + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        Objects.requireNonNull(account, "account cannot be null");
        int i10 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return readPreviousNameInternal(getUserAccounts(i10), account);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Account[] getSharedAccountsAsUser(int i10) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    protected a0 getUserAccounts(int i10) {
        a0 a0Var;
        synchronized (this.mUsers) {
            a0Var = this.mUsers.get(i10);
            if (a0Var == null) {
                a0Var = new a0(i10);
                this.mUsers.append(i10, a0Var);
                purgeOldGrants(a0Var);
            }
        }
        return a0Var;
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String getUserData(Account account, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, String.format("getUserData( account: %s, key: %s, callerUid: %s, pid: %s", account, str, Integer.valueOf(i10), Integer.valueOf(Binder.getCallingPid())));
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(str, "key cannot be null");
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot get user data for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return readUserDataInternal(getUserAccounts(i11), account, str);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    void grantAppPermission(final Account account, String str, final int i10) {
        if (account == null || str == null) {
            com.xinzhu.overmind.utils.q.d(TAG, "grantAppPermission: called with invalid arguments", new Exception());
            return;
        }
        a0 userAccounts = getUserAccounts(MindUserHandle.x(i10));
        synchronized (userAccounts.f89543b) {
            userAccounts.q(account, str, i10);
            saveUidGrantsLocked(userAccounts);
            cancelNotification(getCredentialPermissionNotificationId(account, str, i10), MindUserHandle.F(userAccounts.f89542a));
            cancelAccountAccessRequestNotificationIfNeeded(account, i10, true);
        }
        for (final v vVar : this.mAppPermissionChangeListeners) {
            this.mHandler.post(new Runnable() { // from class: com.xinzhu.overmind.server.accounts.g
                @Override // java.lang.Runnable
                public final void run() {
                    vVar.a(account, i10);
                }
            });
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void hasFeatures(IAccountManagerResponse iAccountManagerResponse, Account account, String[] strArr, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "hasFeatures: " + account + ", response " + iAccountManagerResponse + ", features " + Arrays.toString(strArr) + ", caller's uid " + callingInfoB.f89521c + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(iAccountManagerResponse, "response cannot be null");
        Objects.requireNonNull(strArr, "features cannot be null");
        int i10 = callingInfoB.f89522d;
        checkReadAccountsPermitted(callingInfoB.f89521c, account.type, i10, str);
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new z(getUserAccounts(i10), iAccountManagerResponse, account, strArr).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void invalidateAuthToken(String str, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        Objects.requireNonNull(str, "accountType cannot be null");
        Objects.requireNonNull(str2, "authToken cannot be null");
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "invalidateAuthToken: accountType " + str + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        int i11 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i11);
            synchronized (userAccounts.f89543b) {
                for (Pair<Account, String> pair : invalidateAuthTokenLocked(userAccounts, str, str2)) {
                    writeAuthTokenIntoCacheLocked(userAccounts, (Account) pair.first, (String) pair.second, null);
                }
                userAccounts.f89550i.d(str, str2);
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void isCredentialsUpdateSuggested(IAccountManagerResponse iAccountManagerResponse, Account account, String str) {
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "isCredentialsUpdateSuggested: " + account + ", response " + iAccountManagerResponse + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("status token is empty");
        }
        int i10 = BinderHelper.b().f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new g(getUserAccounts(i10), iAccountManagerResponse, account.type, false, false, account.name, false, account, str).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void onAccountAccessed(String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (MindUserHandle.a(i10) == 1000) {
            return;
        }
        int i11 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            for (Account account : getAccounts(i11, "android")) {
                if (Objects.equals(new l8.a(account).h(), str) && !hasAccountAccess(account, (String) null, i10)) {
                    updateAppPermission(account, ACCOUNT_ACCESS_TOKEN_TYPE, i10, true);
                }
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public String peekAuthToken(Account account, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "peekAuthToken: " + account + ", authTokenType " + str + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(str, "authTokenType cannot be null");
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot peek the authtokens associated with accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return readAuthTokenInternal(getUserAccounts(i11), account, str);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    protected String readAuthTokenInternal(a0 a0Var, Account account, String str) {
        synchronized (a0Var.f89543b) {
            Map map = (Map) a0Var.f89549h.get(account);
            if (map == null) {
                return null;
            }
            return (String) map.get(str);
        }
    }

    protected String readCachedTokenInternal(a0 a0Var, Account account, String str, String str2, byte[] bArr) {
        String strA;
        synchronized (a0Var.f89543b) {
            strA = a0Var.f89550i.a(account, str, str2, bArr);
        }
        return strA;
    }

    public String readUserDataInternal(a0 a0Var, Account account, String str) {
        synchronized (a0Var.f89543b) {
            Map map = (Map) a0Var.f89548g.get(account);
            if (map == null) {
                return null;
            }
            return (String) map.get(str);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void removeAccountAsUser(IAccountManagerResponse iAccountManagerResponse, Account account, boolean z10, int i10) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "removeAccount: " + account + ", response " + iAccountManagerResponse + ", caller's uid " + i11 + ", pid " + Binder.getCallingPid() + ", for user id " + i10);
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(iAccountManagerResponse, "response cannot be null");
        if (isCrossUser(i11, i10)) {
            throw new SecurityException(String.format("User %s tying remove account for %s", Integer.valueOf(callingInfoB.f89522d), Integer.valueOf(i10)));
        }
        if (!isAccountManagedByCaller(account.type, i11, i10)) {
            throw new SecurityException(String.format("uid %s cannot remove accounts of type: %s", Integer.valueOf(i11), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        a0 userAccounts = getUserAccounts(i10);
        MindUserHandle mindUserHandle = new MindUserHandle(i10);
        cancelNotification(getSigninRequiredNotificationId(userAccounts, account), mindUserHandle);
        synchronized (userAccounts.f89545d) {
            for (Pair pair : userAccounts.f89545d.keySet()) {
                if (account.equals(((Pair) pair.first).first)) {
                    cancelNotification((u) userAccounts.f89545d.get(pair), mindUserHandle);
                }
            }
        }
        try {
            new w(userAccounts, iAccountManagerResponse, account, z10).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean removeAccountExplicitly(Account account) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "removeAccountExplicitly: " + account + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        int i11 = callingInfoB.f89522d;
        if (account == null) {
            com.xinzhu.overmind.utils.q.c(TAG, "account is null");
            return false;
        }
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot explicitly remove accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        a0 userAccountsForCaller = getUserAccountsForCaller();
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return removeAccountInternal(userAccountsForCaller, account, i10);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean removeSharedAccountAsUser(Account account, int i10) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void renameAccount(IAccountManagerResponse iAccountManagerResponse, Account account, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "renameAccount: " + account + " -> " + str + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot rename accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            Account accountRenameAccountInternal = renameAccountInternal(getUserAccounts(i11), account, str);
            Bundle bundle = new Bundle();
            bundle.putString("authAccount", accountRenameAccountInternal.name);
            bundle.putString("accountType", accountRenameAccountInternal.type);
            bundle.putString(KEY_ACCOUNT_ACCESS_ID, new l8.a(accountRenameAccountInternal).h());
            try {
                iAccountManagerResponse.onResult(bundle);
            } catch (RemoteException e10) {
                com.xinzhu.overmind.utils.q.k(TAG, e10.getMessage());
            }
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        } catch (Throwable th) {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
            throw th;
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean renameSharedAccountAsUser(Account account, String str, int i10) throws RemoteException {
        throw new RuntimeException("Not implemented.");
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setAuthToken(Account account, String str, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "setAuthToken: " + account + ", authTokenType " + str + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(str, "authTokenType cannot be null");
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot set auth tokens associated with accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            saveAuthTokenToDatabase(getUserAccounts(i11), account, str, str2);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setPassword(Account account, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "setAuthToken: " + account + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(account, "account cannot be null");
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot set secrets for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            setPasswordInternal(getUserAccounts(i11), account, str, i10);
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void setUserData(Account account, String str, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "setUserData: " + account + ", key " + str + ", caller's uid " + i10 + ", pid " + Binder.getCallingPid());
        }
        if (str == null) {
            throw new IllegalArgumentException("key is null");
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        int i11 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i10, i11)) {
            throw new SecurityException(String.format("uid %s cannot set user data for accounts of type: %s", Integer.valueOf(i10), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            a0 userAccounts = getUserAccounts(i11);
            if (accountExistsCache(userAccounts, account)) {
                setUserdataInternal(userAccounts, account, str, str2);
            }
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean someUserHasAccount(Account account) {
        if (!MindUserHandle.B(1000, BinderHelper.b().f89521c)) {
            throw new SecurityException("Only system can check for accounts across users");
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            r[] allAccounts = getAllAccounts();
            for (int length = allAccounts.length - 1; length >= 0; length--) {
                if (allAccounts[length].f89559a.equals(account)) {
                    return true;
                }
            }
            return false;
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void startAddAccountSession(IAccountManagerResponse iAccountManagerResponse, String str, String str2, String[] strArr, boolean z10, Bundle bundle) {
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "startAddAccountSession: accountType " + str + ", response " + iAccountManagerResponse + ", authTokenType " + str2 + ", requiredFeatures " + Arrays.toString(strArr) + ", expectActivityLaunch " + z10 + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        Objects.requireNonNull(iAccountManagerResponse, "response cannot be null");
        Objects.requireNonNull(str, "accountType cannot be null");
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        if (!canUserModifyAccounts(i11, i10)) {
            try {
                iAccountManagerResponse.onError(100, "User is not allowed to add an account!");
            } catch (RemoteException unused) {
            }
            showCantAddAccount(100, i11);
            return;
        }
        if (!canUserModifyAccountsForType(i11, str, i10)) {
            try {
                iAccountManagerResponse.onError(101, "User cannot modify accounts of this type (policy).");
            } catch (RemoteException unused2) {
            }
            showCantAddAccount(101, i11);
            return;
        }
        int callingPid = Binder.getCallingPid();
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        bundle2.putInt("callerUid", i10);
        bundle2.putInt("callerPid", callingPid);
        bundle2.getString("androidPackageName");
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new d(getUserAccounts(i11), iAccountManagerResponse, str, z10, null, false, true, false, str2, strArr, bundle2, str).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void startUpdateCredentialsSession(IAccountManagerResponse iAccountManagerResponse, Account account, String str, boolean z10, Bundle bundle) {
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "startUpdateCredentialsSession: " + account + ", response " + iAccountManagerResponse + ", authTokenType " + str + ", expectActivityLaunch " + z10 + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        bundle.getString("androidPackageName");
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new e(getUserAccounts(i11), iAccountManagerResponse, account.type, z10, account.name, false, true, false, account, str, bundle).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.g
    public void systemReady() throws Throwable {
        loadAllAccounts();
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void updateAppPermission(Account account, String str, int i10, boolean z10) {
        if (MindUserHandle.a(BinderHelper.b().f89521c) != 1000) {
            throw new SecurityException();
        }
        if (z10) {
            grantAppPermission(account, str, i10);
        } else {
            revokeAppPermission(account, str, i10);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void updateCredentials(IAccountManagerResponse iAccountManagerResponse, Account account, String str, boolean z10, Bundle bundle) {
        if (com.xinzhu.overmind.utils.q.g(TAG, 2)) {
            com.xinzhu.overmind.utils.q.i(TAG, "updateCredentials: " + account + ", response " + iAccountManagerResponse + ", authTokenType " + str + ", expectActivityLaunch " + z10 + ", caller's uid " + BinderHelper.b().f89521c + ", pid " + Binder.getCallingPid());
        }
        if (iAccountManagerResponse == null) {
            throw new IllegalArgumentException("response is null");
        }
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        int i10 = BinderHelper.b().f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            new q(getUserAccounts(i10), iAccountManagerResponse, account.type, z10, true, account.name, false, true, account, str, bundle).bind();
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    protected void writeAuthTokenIntoCacheLocked(a0 a0Var, Account account, String str, String str2) {
        Map map = (Map) a0Var.f89549h.get(account);
        if (map == null) {
            map = new HashMap();
            a0Var.f89549h.put(account, map);
        }
        if (str2 == null) {
            map.remove(str);
        } else {
            map.put(str, str2);
        }
        saveAccountAuthTokenLocked(a0Var);
    }

    protected void writeUserDataIntoCacheLocked(a0 a0Var, Account account, String str, String str2) {
        Map map = (Map) a0Var.f89548g.get(account);
        if (map == null) {
            map = new HashMap();
            a0Var.f89548g.put(account, map);
        }
        if (str2 == null) {
            map.remove(str);
        } else {
            map.put(str, str2);
        }
        saveAccountUserDataLocked(a0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelNotification(u uVar, String str, MindUserHandle mindUserHandle) {
        ((NotificationManager) Overmind.getContext().getSystemService("notification")).cancel(uVar.f89563b);
    }

    private static class UidGrant implements Parcelable {
        public static final Parcelable.Creator<UidGrant> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f89539b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f89540c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Account f89541d;

        class a implements Parcelable.Creator<UidGrant> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UidGrant createFromParcel(Parcel parcel) {
                return new UidGrant(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public UidGrant[] newArray(int i10) {
                return new UidGrant[i10];
            }
        }

        public UidGrant(int i10, String str, Account account) {
            this.f89539b = i10;
            this.f89540c = str;
            this.f89541d = account;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f89539b);
            parcel.writeString(this.f89540c);
            parcel.writeParcelable(this.f89541d, i10);
        }

        protected UidGrant(Parcel parcel) {
            this.f89539b = parcel.readInt();
            this.f89540c = parcel.readString();
            this.f89541d = (Account) parcel.readParcelable(Account.class.getClassLoader());
        }
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(String str, int i10, boolean z10) {
        for (Account account : getAccountsAsUser(null, MindUserHandle.x(i10), "android")) {
            cancelAccountAccessRequestNotificationIfNeeded(account, i10, str, z10);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean hasAccountAccess(Account account, String str, UserHandle userHandle) {
        if (MindUserHandle.a(BinderHelper.b().f89521c) == 1000) {
            Objects.requireNonNull(account, "account cannot be null");
            Objects.requireNonNull(str, "packageName cannot be null");
            Objects.requireNonNull(userHandle, "userHandle cannot be null");
            int identifier = new com.xinzhu.haunted.android.os.x(userHandle).getIdentifier();
            if (identifier >= 0) {
                int packageUid = MindPackageManagerService.get().getPackageUid(str, 0, identifier);
                if (packageUid == -1) {
                    com.xinzhu.overmind.utils.q.a(TAG, "Package not found ");
                    return false;
                }
                return hasAccountAccess(account, str, packageUid);
            }
            throw new IllegalArgumentException("user must be concrete");
        }
        throw new SecurityException("Can be called only by system UID");
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(Account account, int i10, boolean z10) {
        String[] packagesForUid = MindPackageManagerService.get().getPackagesForUid(i10);
        if (packagesForUid != null) {
            for (String str : packagesForUid) {
                cancelAccountAccessRequestNotificationIfNeeded(account, i10, str, z10);
            }
        }
    }

    private void cancelAccountAccessRequestNotificationIfNeeded(Account account, int i10, String str, boolean z10) {
        if (!z10 || hasAccountAccess(account, str, MindUserHandle.w(i10).I())) {
            cancelNotification(getCredentialPermissionNotificationId(account, ACCOUNT_ACCESS_TOKEN_TYPE, i10), str, MindUserHandle.w(i10));
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void registerAccountListener(String[] strArr, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            registerAccountListener(strArr, str, getUserAccounts(i11));
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    private r[] getAccounts(int[] iArr) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        ArrayList arrayList = new ArrayList();
        for (int i10 : iArr) {
            a0 userAccounts = getUserAccounts(i10);
            if (userAccounts != null) {
                for (Account account : getAccountsFromCache(userAccounts, null, callingInfoB.f89521c, null, false)) {
                    arrayList.add(new r(account, i10));
                }
            }
        }
        return (r[]) arrayList.toArray(new r[arrayList.size()]);
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public void unregisterAccountListener(String[] strArr, String str) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            unregisterAccountListener(strArr, str, getUserAccounts(i11));
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public Map<Account, Integer> getAccountsAndVisibilityForPackage(String str, String str2) {
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i10 = callingInfoB.f89521c;
        int i11 = callingInfoB.f89522d;
        boolean zB = MindUserHandle.B(i10, 1000);
        List<String> typesForCaller = getTypesForCaller(i10, i11, zB);
        if ((str2 != null && !typesForCaller.contains(str2)) || (str2 == null && !zB)) {
            throw new SecurityException("getAccountsAndVisibilityForPackage() called from unauthorized uid " + i10 + " with packageName=" + str);
        }
        if (str2 != null) {
            typesForCaller = new ArrayList<>();
            typesForCaller.add(str2);
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return getAccountsAndVisibilityForPackage(str, typesForCaller, Integer.valueOf(i10), getUserAccounts(i11));
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }

    @Override // com.xinzhu.overmind.server.accounts.e
    public boolean setAccountVisibility(Account account, String str, int i10) {
        Objects.requireNonNull(account, "account cannot be null");
        Objects.requireNonNull(str, "packageName cannot be null");
        BinderHelper.CallingInfo callingInfoB = BinderHelper.b();
        int i11 = callingInfoB.f89521c;
        int i12 = callingInfoB.f89522d;
        if (!isAccountManagedByCaller(account.type, i11, i12) && !isSystemUid(i11)) {
            throw new SecurityException(String.format("uid %s cannot get secrets for accounts of type: %s", Integer.valueOf(i11), account.type));
        }
        long jClearCallingIdentity = Binder.clearCallingIdentity();
        try {
            return setAccountVisibility(account, str, i10, true, getUserAccounts(i12));
        } finally {
            Binder.restoreCallingIdentity(jClearCallingIdentity);
        }
    }
}
