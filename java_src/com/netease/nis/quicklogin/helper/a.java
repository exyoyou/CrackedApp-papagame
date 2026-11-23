package com.netease.nis.quicklogin.helper;

import android.content.Context;
import com.netease.nis.basesdk.HttpUtil;
import com.netease.nis.quicklogin.listener.QuickLoginPreMobileListener;
import com.netease.nis.quicklogin.listener.QuickLoginTokenListener;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f76034a = true;

    /* JADX INFO: renamed from: com.netease.nis.quicklogin.helper.a$a, reason: collision with other inner class name */
    class C0979a implements HttpUtil.ResponseCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f76035a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f76036b;

        C0979a(String str, QuickLoginTokenListener quickLoginTokenListener) {
            this.f76035a = str;
            this.f76036b = quickLoginTokenListener;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            a.this.a(i10, str, this.f76035a, this.f76036b);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            a.this.a(str, this.f76035a, this.f76036b);
        }
    }

    class b implements HttpUtil.ResponseCallBack {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f76038a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ QuickLoginTokenListener f76039b;

        b(String str, QuickLoginTokenListener quickLoginTokenListener) {
            this.f76038a = str;
            this.f76039b = quickLoginTokenListener;
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onError(int i10, String str) {
            a.this.a(i10, str, this.f76038a, this.f76039b);
        }

        @Override // com.netease.nis.basesdk.HttpUtil.ResponseCallBack
        public void onSuccess(String str) {
            a.this.a(str, this.f76038a, this.f76039b);
        }
    }

    protected void a(int i10, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
    }

    public abstract void a(String str, QuickLoginPreMobileListener quickLoginPreMobileListener);

    public abstract void a(String str, QuickLoginTokenListener quickLoginTokenListener);

    protected void a(String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
    }

    public void a(Context context, String str, String str2, QuickLoginTokenListener quickLoginTokenListener) {
        if (this.f76034a) {
            HttpUtil.doGetRequestByMobileNet(context, str, new C0979a(str2, quickLoginTokenListener));
        } else {
            HttpUtil.doGetRequestByForm(str, new b(str2, quickLoginTokenListener));
        }
    }
}
