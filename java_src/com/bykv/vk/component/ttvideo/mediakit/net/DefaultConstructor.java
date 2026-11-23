package com.bykv.vk.component.ttvideo.mediakit.net;

import android.os.Handler;
import com.byazt.nr.m;

/* JADX INFO: loaded from: classes9.dex */
public class DefaultConstructor implements CreateConstructor {
    @Override // com.bykv.vk.component.ttvideo.mediakit.net.CreateConstructor
    public BaseDNS createDns(String str, AVMDLNetClient aVMDLNetClient, int i10, Handler handler) {
        try {
            return new HTTPDNS(str, aVMDLNetClient, i10, handler);
        } catch (Exception e10) {
            m.c(e10);
            return null;
        }
    }
}
