package com.xinzhu.overmind.server.accounts;

import android.accounts.AuthenticatorDescription;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.xinzhu.overmind.server.pm.RegisteredServicesCache;

/* JADX INFO: loaded from: classes8.dex */
class a extends RegisteredServicesCache<AuthenticatorDescription> implements d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f89564o = "Account";

    public a(Context context) {
        super(context, "android.accounts.AccountAuthenticator", "android.accounts.AccountAuthenticator", "account-authenticator");
    }

    @Override // com.xinzhu.overmind.server.accounts.d
    public /* bridge */ /* synthetic */ RegisteredServicesCache.c b(AuthenticatorDescription authenticatorDescription, int i10) {
        return super.p(authenticatorDescription, i10);
    }

    @Override // com.xinzhu.overmind.server.pm.RegisteredServicesCache
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public AuthenticatorDescription v(Resources resources, String str, AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, q9.a.e.A());
        try {
            String string = typedArrayObtainAttributes.getString(q9.a.e.C());
            int resourceId = typedArrayObtainAttributes.getResourceId(q9.a.e.F(), 0);
            int resourceId2 = typedArrayObtainAttributes.getResourceId(q9.a.e.E(), 0);
            int resourceId3 = typedArrayObtainAttributes.getResourceId(q9.a.e.G(), 0);
            int resourceId4 = typedArrayObtainAttributes.getResourceId(q9.a.e.B(), 0);
            boolean z10 = typedArrayObtainAttributes.getBoolean(q9.a.e.D(), false);
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return new AuthenticatorDescription(string, str, resourceId, resourceId2, resourceId3, resourceId4, z10);
        } finally {
            typedArrayObtainAttributes.recycle();
        }
    }
}
