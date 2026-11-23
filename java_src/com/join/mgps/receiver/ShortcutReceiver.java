package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.mgps.Util.a3;

/* JADX INFO: loaded from: classes3.dex */
public class ShortcutReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(">>>:");
        sb2.append(intent.getAction());
        a3.b(context).d("桌面快速启动方式添加成功！");
    }
}
