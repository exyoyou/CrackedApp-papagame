package k6;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static void a(Context context) {
        Intent intent = new Intent();
        intent.setAction(p5.a.A);
        context.sendBroadcast(intent);
    }

    public static void b(Context context, String accountStr) {
        Intent intent = new Intent();
        intent.setAction(p5.a.C);
        intent.putExtra("_account", accountStr);
        context.sendBroadcast(intent);
    }

    public static void c(Context context) {
        Intent intent = new Intent();
        intent.setAction(p5.a.B);
        context.sendBroadcast(intent);
    }
}
