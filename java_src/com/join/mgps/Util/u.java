package com.join.mgps.Util;

import android.content.ClipboardManager;
import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.join.mgps.activity.ApFightActivity_;
import com.join.mgps.activity.CheckInviteDialogActivity_;
import com.join.mgps.activity.arena.ArenaGameListActivity_;
import com.join.mgps.activity.arena.GameRoomActivity_;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;

/* JADX INFO: loaded from: classes4.dex */
public class u {
    private static UserInfo a(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    public static void b(Context context) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getApplicationContext().getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
        if (clipboardManager != null) {
            try {
                clipboardManager.setPrimaryClip(clipboardManager.getPrimaryClip());
                clipboardManager.setText(null);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private static String c(int hexEmoji) {
        return String.valueOf(Character.toChars(hexEmoji));
    }

    public static String d(Context context) {
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD);
        if (clipboardManager == null || !clipboardManager.hasPrimaryClip() || clipboardManager.getPrimaryClip().getItemCount() <= 0) {
            return "";
        }
        String strValueOf = String.valueOf(clipboardManager.getPrimaryClip().getItemAt(0).getText());
        return !TextUtils.isEmpty(strValueOf) ? strValueOf : "";
    }

    public static void e(Context context) {
        if ((context instanceof ApFightActivity_) || (context instanceof CheckInviteDialogActivity_) || (context instanceof GameRoomActivity_) || (context instanceof GameRoomListActivity_) || (context instanceof ArenaGameListActivity_) || new PrefDef_(context).firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        try {
            String strD = d(context);
            if (TextUtils.isEmpty(strD)) {
                return;
            }
            String strTrim = strD.trim();
            if (strTrim.contains("大厅对战")) {
                b(context);
                if (f(context)) {
                    CheckInviteDialogActivity_.intent(context).a(strTrim).start();
                    return;
                } else {
                    a3.b(context).d("您是游客无法进入游戏大厅，请完善账号");
                    return;
                }
            }
            if (strTrim.contains("打开" + c(128073) + com.join.android.app.mgsim.wufun.b.f35536i + c(128072))) {
                b(context);
                if (f(context)) {
                    CheckInviteDialogActivity_.intent(context).a(strTrim).start();
                } else {
                    a3.b(context).d("您是游客无法进入游戏大厅，请完善账号");
                }
            }
        } catch (Exception unused) {
        }
    }

    static boolean f(Context ctx) {
        if (a(ctx) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(ctx).isTourist();
    }
}
