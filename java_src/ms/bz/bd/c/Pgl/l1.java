package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.WindowManager;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;

/* JADX INFO: loaded from: classes.dex */
public final class l1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f94405c;
    public static int tt;

    public static String c(Context context) {
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            f94405c = point.x;
            tt = point.y;
        } catch (Throwable unused) {
        }
        return f94405c + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD + tt;
    }
}
