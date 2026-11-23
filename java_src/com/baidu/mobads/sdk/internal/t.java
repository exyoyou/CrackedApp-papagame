package com.baidu.mobads.sdk.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import com.baidu.mobads.sdk.api.CustomNotification;
import com.baidu.mobads.sdk.api.ICommonModuleObj;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class t implements ICommonModuleObj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile t f7942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CustomNotification f7943b = new CustomNotification();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.baidu.mobads.sdk.internal.b.a f7944c = new com.baidu.mobads.sdk.internal.b.a();

    private t() {
    }

    public static t a() {
        if (f7942a == null) {
            synchronized (t.class) {
                if (f7942a == null) {
                    f7942a = new t();
                }
            }
        }
        return f7942a;
    }

    @Override // com.baidu.mobads.sdk.api.ICommonModuleObj
    public Object createModuleObj(String str, JSONObject jSONObject) {
        if (!ICommonModuleObj.KEY_NOTIFICATION.equals(str)) {
            if (ICommonModuleObj.KEY_RESOURCES.equals(str)) {
                return this.f7944c;
            }
            return null;
        }
        if (jSONObject == null) {
            return null;
        }
        Context context = (Context) jSONObject.opt("context");
        int iOptInt = jSONObject.optInt("version", 0);
        String strOptString = jSONObject.optString("channelId");
        String strOptString2 = jSONObject.optString("ticker");
        Bitmap bitmap = (Bitmap) jSONObject.opt("icon");
        String strOptString3 = jSONObject.optString("title");
        String strOptString4 = jSONObject.optString("content");
        String strOptString5 = jSONObject.optString("status");
        boolean zOptBoolean = jSONObject.optBoolean("autoCancel");
        int iOptInt2 = jSONObject.optInt("progress");
        boolean zOptBoolean2 = jSONObject.optBoolean("indeterminate", false);
        int iOptInt3 = jSONObject.optInt("smallIcon");
        String strOptString6 = jSONObject.optString("action");
        PendingIntent pendingIntent = (PendingIntent) jSONObject.opt("pendingIntent");
        return iOptInt == 1 ? this.f7943b.getNewNotification(context, strOptString2, zOptBoolean, bitmap, strOptString3, strOptString4, iOptInt2, zOptBoolean2, strOptString6, pendingIntent, jSONObject.optString("action2"), (PendingIntent) jSONObject.opt("pendingIntent2")) : this.f7943b.getCustomNotification(context, strOptString, strOptString2, bitmap, strOptString3, strOptString4, strOptString5, zOptBoolean, iOptInt2, iOptInt3, strOptString6, pendingIntent);
    }
}
