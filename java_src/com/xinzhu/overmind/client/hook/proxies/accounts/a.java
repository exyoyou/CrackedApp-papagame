package com.xinzhu.overmind.client.hook.proxies.accounts;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.accounts.IAccountManagerResponse;
import android.os.Bundle;
import android.os.IInterface;
import android.os.UserHandle;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import com.xinzhu.overmind.client.hook.BinderInvocationStub;
import java.lang.reflect.Method;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class a extends BinderInvocationStub {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89331b = "AccountManagerStub";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.xinzhu.overmind.client.frameworks.accounts.a f89332c = com.xinzhu.overmind.client.frameworks.accounts.a.get();

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.proxies.accounts.a$a, reason: collision with other inner class name */
    static class C1102a extends com.xinzhu.overmind.client.hook.e {
        C1102a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "accountAuthenticated";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.accountAuthenticated((Account) objArr[0]));
        }
    }

    static class a0 extends com.xinzhu.overmind.client.hook.e {
        a0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPreviousName";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getPreviousName((Account) objArr[0]);
        }
    }

    static class b extends com.xinzhu.overmind.client.hook.e {
        b() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addAccount";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.addAccount((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2], (String[]) objArr[3], ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5]);
            return null;
        }
    }

    static class b0 extends com.xinzhu.overmind.client.hook.e {
        b0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getSharedAccountsAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getSharedAccountsAsUser(((Integer) objArr[0]).intValue());
        }
    }

    static class c extends com.xinzhu.overmind.client.hook.e {
        c() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addAccountAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.addAccountAsUser((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2], (String[]) objArr[3], ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5], ((Integer) objArr[6]).intValue());
            return null;
        }
    }

    static class c0 extends com.xinzhu.overmind.client.hook.e {
        c0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getUserData";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getUserData((Account) objArr[0], (String) objArr[1]);
        }
    }

    static class d extends com.xinzhu.overmind.client.hook.e {
        d() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addAccountExplicitly";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.addAccountExplicitly((Account) objArr[0], (String) objArr[1], (Bundle) objArr[2]));
        }
    }

    static class d0 extends com.xinzhu.overmind.client.hook.e {
        d0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "hasAccountAccess";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.hasAccountAccess((Account) objArr[0], (String) objArr[1], (UserHandle) objArr[2]));
        }
    }

    static class e extends com.xinzhu.overmind.client.hook.e {
        e() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addAccountExplicitlyWithVisibility";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.addAccountExplicitlyWithVisibility((Account) objArr[0], (String) objArr[1], (Bundle) objArr[2], (Map) objArr[3]));
        }
    }

    static class e0 extends com.xinzhu.overmind.client.hook.e {
        e0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "hasFeatures";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.hasFeatures((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String[]) objArr[2], objArr.length >= 4 ? (String) objArr[3] : null);
            return null;
        }
    }

    static class f extends com.xinzhu.overmind.client.hook.e {
        f() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addSharedAccountAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.addSharedAccountAsUser((Account) objArr[0], ((Integer) objArr[1]).intValue()));
        }
    }

    static class f0 extends com.xinzhu.overmind.client.hook.e {
        f0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "invalidateAuthToken";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.invalidateAuthToken((String) objArr[0], (String) objArr[1]);
            return null;
        }
    }

    static class g extends com.xinzhu.overmind.client.hook.e {
        g() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "addSharedAccountsFromParentUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.addSharedAccountsFromParentUser(((Integer) objArr[0]).intValue(), ((Integer) objArr[1]).intValue(), objArr.length >= 3 ? (String) objArr[2] : null);
            return null;
        }
    }

    static class g0 extends com.xinzhu.overmind.client.hook.e {
        g0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "isCredentialsUpdateSuggested";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.isCredentialsUpdateSuggested((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2]);
            return null;
        }
    }

    static class h extends com.xinzhu.overmind.client.hook.e {
        h() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "clearPassword";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.clearPassword((Account) objArr[0]);
            return null;
        }
    }

    static class h0 extends com.xinzhu.overmind.client.hook.e {
        h0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "onAccountAccessed";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.onAccountAccessed((String) objArr[0]);
            return null;
        }
    }

    static class i extends com.xinzhu.overmind.client.hook.e {
        i() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "confirmCredentialsAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.confirmCredentialsAsUser((IAccountManagerResponse) objArr[0], (Account) objArr[1], (Bundle) objArr[2], ((Boolean) objArr[3]).booleanValue(), ((Integer) objArr[4]).intValue());
            return null;
        }
    }

    static class i0 extends com.xinzhu.overmind.client.hook.e {
        i0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "peekAuthToken";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.peekAuthToken((Account) objArr[0], (String) objArr[1]);
        }
    }

    static class j extends com.xinzhu.overmind.client.hook.e {
        j() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "copyAccountToUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.copyAccountToUser((IAccountManagerResponse) objArr[0], (Account) objArr[1], ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
            return null;
        }
    }

    static class j0 extends com.xinzhu.overmind.client.hook.e {
        j0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "registerAccountListener";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.registerAccountListener((String[]) objArr[0], (String) objArr[1]);
            return null;
        }
    }

    static class k extends com.xinzhu.overmind.client.hook.e {
        k() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "createRequestAccountAccessIntentSenderAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.createRequestAccountAccessIntentSenderAsUser((Account) objArr[0], (String) objArr[1], (UserHandle) objArr[2]);
        }
    }

    static class k0 extends com.xinzhu.overmind.client.hook.e {
        k0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "removeAccount";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.removeAccountAsUser((IAccountManagerResponse) objArr[0], (Account) objArr[1], objArr.length >= 3 ? ((Boolean) objArr[2]).booleanValue() : false, com.xinzhu.overmind.client.f.getUserId());
            return null;
        }
    }

    static class l extends com.xinzhu.overmind.client.hook.e {
        l() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "editProperties";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.editProperties((IAccountManagerResponse) objArr[0], (String) objArr[1], ((Boolean) objArr[2]).booleanValue());
            return null;
        }
    }

    static class l0 extends com.xinzhu.overmind.client.hook.e {
        l0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "removeAccountAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            int iIntValue;
            boolean zBooleanValue = false;
            IAccountManagerResponse iAccountManagerResponse = (IAccountManagerResponse) objArr[0];
            Account account = (Account) objArr[1];
            if (objArr.length == 3) {
                iIntValue = ((Integer) objArr[2]).intValue();
            } else if (objArr.length >= 4) {
                zBooleanValue = ((Boolean) objArr[2]).booleanValue();
                iIntValue = ((Integer) objArr[3]).intValue();
            } else {
                iIntValue = 0;
            }
            a.f89332c.removeAccountAsUser(iAccountManagerResponse, account, zBooleanValue, iIntValue);
            return null;
        }
    }

    static class m extends com.xinzhu.overmind.client.hook.e {
        m() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "finishSessionAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.finishSessionAsUser((IAccountManagerResponse) objArr[0], (Bundle) objArr[1], ((Boolean) objArr[2]).booleanValue(), (Bundle) objArr[3], ((Integer) objArr[4]).intValue());
            return null;
        }
    }

    static class m0 extends com.xinzhu.overmind.client.hook.e {
        m0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "removeAccountExplicitly";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.removeAccountExplicitly((Account) objArr[0]);
            return null;
        }
    }

    static class n extends com.xinzhu.overmind.client.hook.e {
        n() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountByTypeAndFeatures";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.getAccountByTypeAndFeatures((IAccountManagerResponse) objArr[0], (String) objArr[1], (String[]) objArr[2], (String) objArr[3]);
            return null;
        }
    }

    static class n0 extends com.xinzhu.overmind.client.hook.e {
        n0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "removeSharedAccountAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.removeSharedAccountAsUser((Account) objArr[0], ((Integer) objArr[1]).intValue()));
        }
    }

    static class o extends com.xinzhu.overmind.client.hook.e {
        o() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountVisibility";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Integer.valueOf(a.f89332c.getAccountVisibility((Account) objArr[0], (String) objArr[1]));
        }
    }

    static class o0 extends com.xinzhu.overmind.client.hook.e {
        o0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "renameAccount";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.renameAccount((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2]);
            return null;
        }
    }

    static class p extends com.xinzhu.overmind.client.hook.e {
        p() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccounts";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getAccountsAsUser((String) objArr[0], com.xinzhu.overmind.client.f.getUserId(), objArr.length >= 2 ? (String) objArr[1] : null);
        }
    }

    static class p0 extends com.xinzhu.overmind.client.hook.e {
        p0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "renameSharedAccountAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.renameSharedAccountAsUser((Account) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue()));
        }
    }

    static class q extends com.xinzhu.overmind.client.hook.e {
        q() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountsAndVisibilityForPackage";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getAccountsAndVisibilityForPackage((String) objArr[0], (String) objArr[1]);
        }
    }

    static class q0 extends com.xinzhu.overmind.client.hook.e {
        q0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setAccountVisibility";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.setAccountVisibility((Account) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue()));
        }
    }

    static class r extends com.xinzhu.overmind.client.hook.e {
        r() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountsAsUser";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getAccountsAsUser((String) objArr[0], ((Integer) objArr[1]).intValue(), objArr.length >= 3 ? (String) objArr[2] : null);
        }
    }

    static class r0 extends com.xinzhu.overmind.client.hook.e {
        r0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setAuthToken";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.setAuthToken((Account) objArr[0], (String) objArr[1], (String) objArr[2]);
            return null;
        }
    }

    static class s extends com.xinzhu.overmind.client.hook.e {
        s() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountsByFeatures";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.getAccountsByFeatures((IAccountManagerResponse) objArr[0], (String) objArr[1], (String[]) objArr[2], objArr.length >= 4 ? (String) objArr[3] : null);
            return null;
        }
    }

    static class s0 extends com.xinzhu.overmind.client.hook.e {
        s0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setPassword";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.setPassword((Account) objArr[0], (String) objArr[1]);
            return null;
        }
    }

    static class t extends com.xinzhu.overmind.client.hook.e {
        t() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountsByTypeForPackage";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getAccountsByTypeForPackage((String) objArr[0], (String) objArr[1], objArr.length >= 3 ? (String) objArr[2] : null);
        }
    }

    static class t0 extends com.xinzhu.overmind.client.hook.e {
        t0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "setUserData";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.setUserData((Account) objArr[0], (String) objArr[1], (String) objArr[2]);
            return null;
        }
    }

    static class u extends com.xinzhu.overmind.client.hook.e {
        u() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAccountsForPackage";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getAccountsForPackage((String) objArr[0], ((Integer) objArr[1]).intValue(), objArr.length >= 3 ? (String) objArr[2] : null);
        }
    }

    static class u0 extends com.xinzhu.overmind.client.hook.e {
        u0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "someUserHasAccount";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return Boolean.valueOf(a.f89332c.someUserHasAccount((Account) objArr[0]));
        }
    }

    static class v extends com.xinzhu.overmind.client.hook.e {
        v() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAuthToken";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.getAuthToken((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2], ((Boolean) objArr[3]).booleanValue(), ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5], com.xinzhu.overmind.client.f.getVUid());
            return null;
        }
    }

    static class v0 extends com.xinzhu.overmind.client.hook.e {
        v0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startAddAccountSession";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.startAddAccountSession((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2], (String[]) objArr[3], ((Boolean) objArr[4]).booleanValue(), (Bundle) objArr[5]);
            return null;
        }
    }

    static class w extends com.xinzhu.overmind.client.hook.e {
        w() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAuthTokenLabel";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.getAuthTokenLabel((IAccountManagerResponse) objArr[0], (String) objArr[1], (String) objArr[2]);
            return null;
        }
    }

    static class w0 extends com.xinzhu.overmind.client.hook.e {
        w0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "startUpdateCredentialsSession";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.startUpdateCredentialsSession((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2], ((Boolean) objArr[3]).booleanValue(), (Bundle) objArr[4]);
            return null;
        }
    }

    static class x extends com.xinzhu.overmind.client.hook.e {
        x() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getAuthenticatorTypes";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getAuthenticatorTypes(((Integer) objArr[0]).intValue());
        }
    }

    static class x0 extends com.xinzhu.overmind.client.hook.e {
        x0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "unregisterAccountListener";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.unregisterAccountListener((String[]) objArr[0], (String) objArr[1]);
            return null;
        }
    }

    static class y extends com.xinzhu.overmind.client.hook.e {
        y() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPackagesAndVisibilityForAccount";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getPackagesAndVisibilityForAccount((Account) objArr[0]);
        }
    }

    static class y0 extends com.xinzhu.overmind.client.hook.e {
        y0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "updateAppPermission";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.updateAppPermission((Account) objArr[0], (String) objArr[1], ((Integer) objArr[2]).intValue(), ((Boolean) objArr[3]).booleanValue());
            return null;
        }
    }

    static class z extends com.xinzhu.overmind.client.hook.e {
        z() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "getPassword";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return a.f89332c.getPassword((Account) objArr[0]);
        }
    }

    static class z0 extends com.xinzhu.overmind.client.hook.e {
        z0() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "updateCredentials";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            a.f89332c.updateCredentials((IAccountManagerResponse) objArr[0], (Account) objArr[1], (String) objArr[2], ((Boolean) objArr[3]).booleanValue(), (Bundle) objArr[4]);
            return null;
        }
    }

    public a() {
        super(((IInterface) new l8.c(AccountManager.get(Overmind.getContext())).g().f94112a).asBinder());
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return false;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected Object getWho() {
        return new l8.c(AccountManager.get(Overmind.getContext())).g().f94112a;
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void inject(Object obj, Object obj2) {
        l8.c cVar = new l8.c(AccountManager.get(Overmind.getContext()));
        cVar.i(new l8.d(obj2));
        if (cVar.b()) {
            cVar.e();
        }
        replaceSystemService(GrantCredentialsPermissionActivity.f89265g);
    }

    @Override // com.xinzhu.overmind.client.hook.BinderInvocationStub, com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        super.onBindMethod();
        addMethodHook(new z());
        addMethodHook(new c0());
        addMethodHook(new x());
        addMethodHook(new p());
        addMethodHook(new u());
        addMethodHook(new t());
        addMethodHook(new r());
        addMethodHook(new e0());
        addMethodHook(new t());
        addMethodHook(new n());
        addMethodHook(new s());
        addMethodHook(new d());
        addMethodHook(new k0());
        addMethodHook(new l0());
        addMethodHook(new m0());
        addMethodHook(new j());
        addMethodHook(new f0());
        addMethodHook(new i0());
        addMethodHook(new r0());
        addMethodHook(new s0());
        addMethodHook(new h());
        addMethodHook(new t0());
        addMethodHook(new y0());
        addMethodHook(new v());
        addMethodHook(new b());
        addMethodHook(new c());
        addMethodHook(new z0());
        addMethodHook(new l());
        addMethodHook(new i());
        addMethodHook(new C1102a());
        addMethodHook(new w());
        addMethodHook(new f());
        addMethodHook(new b0());
        addMethodHook(new n0());
        addMethodHook(new p0());
        addMethodHook(new g());
        addMethodHook(new o0());
        addMethodHook(new a0());
        if (com.xinzhu.overmind.utils.e.d()) {
            addMethodHook(new v0());
            addMethodHook(new w0());
            addMethodHook(new m());
            addMethodHook(new u0());
            addMethodHook(new g0());
            if (com.xinzhu.overmind.utils.e.x()) {
                addMethodHook(new y());
                addMethodHook(new e());
                addMethodHook(new q0());
                addMethodHook(new o());
                addMethodHook(new q());
                addMethodHook(new j0());
                addMethodHook(new x0());
                addMethodHook(new d0());
                addMethodHook(new k());
                addMethodHook(new h0());
            }
        }
    }
}
