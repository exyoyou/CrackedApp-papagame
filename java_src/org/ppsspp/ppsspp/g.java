package org.ppsspp.ppsspp;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.bda.controller.Controller;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public class g {
    public static void a(Controller controller, Context context) {
        Field declaredField;
        boolean z10;
        ServiceConnection serviceConnection = null;
        try {
            Class<?> cls = controller.getClass();
            declaredField = cls.getDeclaredField("mIsBound");
            try {
                declaredField.setAccessible(true);
                z10 = declaredField.getBoolean(controller);
                try {
                    Field declaredField2 = cls.getDeclaredField("mServiceConnection");
                    declaredField2.setAccessible(true);
                    serviceConnection = (ServiceConnection) declaredField2.get(controller);
                } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused) {
                }
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused2) {
                z10 = false;
            }
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchFieldException unused3) {
            declaredField = null;
        }
        if (z10 || serviceConnection == null) {
            return;
        }
        Intent intent = new Intent(com.bda.controller.f.class.getName());
        List<ResolveInfo> listQueryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (listQueryIntentServices != null) {
            listQueryIntentServices.size();
        }
        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
        intent.setComponent(new ComponentName(serviceInfo.packageName, serviceInfo.name));
        context.startService(intent);
        context.bindService(intent, serviceConnection, 1);
        try {
            declaredField.setBoolean(controller, true);
        } catch (IllegalAccessException | IllegalArgumentException unused4) {
        }
    }
}
