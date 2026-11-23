package com.join.mgps.Util;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.WindowManager;
import android.widget.Toast;
import com.MApplication;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes4.dex */
public class a3 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a3 f49495c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Toast f49496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Handler f49497b;

    class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49498a;

        a(final Context val$context) {
            this.f49498a = val$context;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            try {
                Toast toast = a3.this.f49496a;
                if (toast != null) {
                    toast.cancel();
                }
                String str = (String) msg.obj;
                a3.this.f49496a = Toast.makeText(this.f49498a, str, 1);
                a3.this.f49496a.setText((CharSequence) msg.obj);
                a3.this.f49496a.show();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private a3(Context context) {
        this.f49496a = new Toast(context);
        this.f49496a = Toast.makeText(context, "", 1);
        this.f49497b = new a(context);
    }

    private static Object a(Object object, String fieldName) throws IllegalAccessException, NoSuchFieldException {
        Field declaredField = object.getClass().getDeclaredField(fieldName);
        if (declaredField == null) {
            return null;
        }
        declaredField.setAccessible(true);
        return declaredField.get(object);
    }

    public static a3 b(Context context) {
        if (context == null) {
            context = MApplication.f3182z;
        }
        if (f49495c == null) {
            f49495c = new a3(context);
        }
        return f49495c;
    }

    public static void c(Toast toast, boolean clickable) {
        Object objA;
        if (toast == null) {
            return;
        }
        try {
            Object objA2 = a(toast, "mTN");
            if (objA2 != null && (objA = a(objA2, "mParams")) != null && (objA instanceof WindowManager.LayoutParams)) {
                WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) objA;
                if (clickable) {
                    layoutParams.flags = 128;
                } else {
                    layoutParams.flags = 152;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static Toast e(Context context, String info) {
        Toast toastMakeText = Toast.makeText(context, info, 0);
        toastMakeText.setGravity(56, 0, com.join.mgps.ad.q.a(context, 24));
        toastMakeText.show();
        return toastMakeText;
    }

    public void d(String info) {
        Message messageObtainMessage = this.f49497b.obtainMessage();
        messageObtainMessage.obj = info;
        messageObtainMessage.sendToTarget();
    }
}
