package com.sigmob.sdk.base.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.czhj.sdk.common.Constants;
import com.czhj.sdk.common.utils.Preconditions;
import com.czhj.sdk.logger.SigmobLogger;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f78853a = "BaseBroadcastReceiver";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f78854b;

    public BaseBroadcastReceiver(String broadcastIdentifier) {
        this.f78854b = broadcastIdentifier;
    }

    private static ai b() {
        Context contextE = com.sigmob.sdk.b.e();
        if (contextE == null) {
            return null;
        }
        return ai.a(contextE);
    }

    protected abstract IntentFilter a();

    public void a(BroadcastReceiver broadcastReceiver) {
        ai aiVarB;
        if (broadcastReceiver == null || (aiVarB = b()) == null) {
            return;
        }
        try {
            aiVarB.a(broadcastReceiver, a());
        } catch (Exception e10) {
            SigmobLogger.e(f78853a, "register: error = " + e10.getMessage(), new Object[0]);
        }
    }

    public static void a(Context context, String broadcastIdentifier, String action) {
        a(context, broadcastIdentifier, null, action, 0);
    }

    public void b(BroadcastReceiver broadcastReceiver) {
        ai aiVarB;
        if (broadcastReceiver == null || (aiVarB = b()) == null) {
            return;
        }
        try {
            aiVarB.a(broadcastReceiver);
        } catch (Exception e10) {
            SigmobLogger.e(f78853a, "unregister: error = " + e10.getMessage(), new Object[0]);
        }
    }

    public static void a(Context context, String broadcastIdentifier, String action, int delay) {
        a(context, broadcastIdentifier, null, action, delay);
    }

    public static void a(Context context, String broadcastIdentifier, Map<String, Object> extras, String action) {
        a(context, broadcastIdentifier, extras, action, 0);
    }

    public static void a(Context context, String broadcastIdentifier, Map<String, Object> extras, String action, int delay) {
        Preconditions.NoThrow.checkNotNull(context);
        Preconditions.NoThrow.checkNotNull(action);
        Intent intent = new Intent(action);
        intent.putExtra(Constants.BROADCAST_IDENTIFIER_KEY, broadcastIdentifier);
        if (com.sigmob.sdk.base.utils.e.b(extras)) {
            for (String str : extras.keySet()) {
                try {
                    Object obj = extras.get(str);
                    if (obj instanceof Number) {
                        intent.putExtra(str, (Number) obj);
                    } else {
                        intent.putExtra(str, (String) obj);
                    }
                } catch (Throwable th) {
                    SigmobLogger.e(f78853a, "broadcastAction: error = " + th.getMessage(), new Object[0]);
                }
            }
        }
        ai aiVarB = b();
        if (aiVarB == null) {
            return;
        }
        try {
            aiVarB.a(intent, delay);
        } catch (Exception e10) {
            SigmobLogger.e(f78853a, "broadcastAction: error = " + e10.getMessage(), new Object[0]);
        }
    }

    protected boolean a(Intent intent) {
        Preconditions.NoThrow.checkNotNull(intent);
        String stringExtra = intent.getStringExtra(Constants.BROADCAST_IDENTIFIER_KEY);
        return com.sigmob.sdk.base.utils.t.b(stringExtra) && stringExtra.equalsIgnoreCase(this.f78854b);
    }
}
