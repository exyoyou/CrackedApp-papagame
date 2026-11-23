package com.baidu.mobads.sdk.internal;

import androidx.annotation.NonNull;
import com.baidu.mobads.sdk.api.IXAdContainerFactory;
import com.sdk.base.module.manager.SDKManager;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class ay extends ax {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7498b = "logout";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String[] f7499c = {"#", "#", "V", SDKManager.ALGO_D_RFU, "I", "W", SDKManager.ALGO_E_SM4_SM3_SM2, "A"};

    @Override // com.baidu.mobads.sdk.internal.ax, com.baidu.mobads.sdk.internal.az.a
    @NonNull
    String a() {
        return f7498b;
    }

    @Override // com.baidu.mobads.sdk.internal.ax, com.baidu.mobads.sdk.internal.az.a
    protected void a(int i10, String str, String str2, Throwable th) {
        try {
            IXAdContainerFactory iXAdContainerFactoryC = aa.a().c();
            if (iXAdContainerFactoryC != null) {
                iXAdContainerFactoryC.getRemoteParam("debugLogout", (new SimpleDateFormat("yyyy-MM-dd hh:mm:ss.SSS", Locale.getDefault()).format(new Date()) + " " + f7499c[i10] + net.lingala.zip4j.util.e.F0 + str + ": ") + "当前线程：" + Thread.currentThread().getName() + ";  调用位置：" + c() + ";  打印消息：" + str2 + "\n");
            }
        } catch (Throwable unused) {
        }
    }
}
