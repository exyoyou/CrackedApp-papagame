package com.alipay.sdk.app.statistic;

import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.alipay.sdk.util.i;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
final class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Context f7063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ String f7064c;

    b(Context context, String str) {
        this.f7063b = context;
        this.f7064c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.alipay.sdk.packet.impl.c cVar = new com.alipay.sdk.packet.impl.c();
        try {
            String strB = i.b(this.f7063b, a.f7062b);
            if (!TextUtils.isEmpty(strB) && cVar.b(this.f7063b, strB) != null) {
                PreferenceManager.getDefaultSharedPreferences(this.f7063b).edit().remove(a.f7062b).commit();
            }
        } catch (Throwable unused) {
        }
        try {
            if (TextUtils.isEmpty(this.f7064c)) {
                return;
            }
            cVar.b(this.f7063b, this.f7064c);
        } catch (IOException unused2) {
            i.c(this.f7063b, a.f7062b, this.f7064c);
        } catch (Throwable unused3) {
        }
    }
}
