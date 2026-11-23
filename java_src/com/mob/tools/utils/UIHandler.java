package com.mob.tools.utils;

import android.os.Handler;
import android.os.Message;
import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public class UIHandler implements PublicMemberKeeper {
    public static boolean sendEmptyMessage(int i10, Handler.Callback callback) {
        return cn.fly.tools.utils.UIHandler.sendEmptyMessage(i10, callback);
    }

    public static boolean sendEmptyMessageDelayed(int i10, long j10, Handler.Callback callback) {
        return cn.fly.tools.utils.UIHandler.sendEmptyMessageDelayed(i10, j10, callback);
    }

    public static boolean sendMessage(Message message, Handler.Callback callback) {
        return cn.fly.tools.utils.UIHandler.sendMessage(message, callback);
    }

    public static boolean sendMessageDelayed(Message message, long j10, Handler.Callback callback) {
        return cn.fly.tools.utils.UIHandler.sendMessageDelayed(message, j10, callback);
    }
}
