package cn.fly.tools.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import cn.fly.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
public class UIHandler implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Handler f2269a;

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Message f2270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Handler.Callback f2271b;

        public a(Message message, Handler.Callback callback) {
            this.f2270a = message;
            this.f2271b = callback;
        }
    }

    private static void b() {
        f2269a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: cn.fly.tools.utils.UIHandler.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                UIHandler.b(message);
                return false;
            }
        });
    }

    public static boolean sendEmptyMessage(int i10, Handler.Callback callback) {
        a();
        return f2269a.sendMessage(a(i10, callback));
    }

    public static boolean sendEmptyMessageDelayed(int i10, long j10, Handler.Callback callback) {
        a();
        return f2269a.sendMessageDelayed(a(i10, callback), j10);
    }

    public static boolean sendMessage(Message message, Handler.Callback callback) {
        a();
        return f2269a.sendMessage(a(message, callback));
    }

    public static boolean sendMessageDelayed(Message message, long j10, Handler.Callback callback) {
        a();
        return f2269a.sendMessageDelayed(a(message, callback), j10);
    }

    private static synchronized void a() {
        if (f2269a == null) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Message message) {
        a aVar = (a) message.obj;
        Message message2 = aVar.f2270a;
        Handler.Callback callback = aVar.f2271b;
        if (callback != null) {
            callback.handleMessage(message2);
        }
    }

    private static Message a(Message message, Handler.Callback callback) {
        Message message2 = new Message();
        message2.obj = new a(message, callback);
        return message2;
    }

    private static Message a(int i10, Handler.Callback callback) {
        Message message = new Message();
        message.what = i10;
        return a(message, callback);
    }
}
