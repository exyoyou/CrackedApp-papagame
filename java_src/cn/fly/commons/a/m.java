package cn.fly.commons.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.commons.ac;
import cn.fly.tools.FlyHandlerThread;
import cn.fly.tools.FlyLog;

/* JADX INFO: loaded from: classes7.dex */
public class m implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f995a = new m();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f996b;

    private m() {
        String str;
        if (TextUtils.isEmpty("M-")) {
            str = null;
        } else {
            str = "M-H-" + a("004?gdidilig");
        }
        this.f996b = FlyHandlerThread.newHandler(str, this);
    }

    public static m a() {
        return f995a;
    }

    private boolean e() {
        return this.f996b != null;
    }

    public Handler b() {
        return this.f996b;
    }

    public Looper c() {
        Handler handler = this.f996b;
        if (handler != null) {
            return handler.getLooper();
        }
        return null;
    }

    public void d() {
        if (e()) {
            this.f996b.removeMessages(1002);
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        c cVar;
        try {
            if (message.arg2 != -1 && !cn.fly.commons.c.e()) {
                Message messageObtain = Message.obtain();
                messageObtain.copyFrom(message);
                a(messageObtain, 60000L);
                return false;
            }
            int i10 = message.what;
            if (i10 == 1003 || i10 == 1004 || i10 == 1006) {
                Runnable runnable = (Runnable) message.obj;
                if (runnable != null) {
                    ac.f1043b.execute(runnable);
                }
            } else if (i10 == 1002) {
                cn.fly.commons.d.b bVar = (cn.fly.commons.d.b) message.obj;
                if (bVar != null) {
                    if (!bVar.f1318a) {
                        bVar.f1318a = true;
                    }
                    ac.f1043b.execute(bVar);
                    int i11 = message.arg1;
                    Message messageObtain2 = Message.obtain();
                    messageObtain2.what = 1002;
                    messageObtain2.obj = bVar;
                    messageObtain2.arg1 = i11;
                    a(messageObtain2, i11 * 1000);
                }
            } else if (i10 == 1005 || i10 == 1007) {
                Runnable runnable2 = (Runnable) message.obj;
                if (runnable2 != null) {
                    ac.f1042a.execute(runnable2);
                }
            } else if ((i10 >= 10000 || i10 < -10000) && (cVar = (c) message.obj) != null) {
                cVar.j();
            }
            return false;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public <T extends c> void a(long j10, T t10, int i10) {
        a(j10, t10, i10, true);
    }

    public boolean b(long j10, Runnable runnable) {
        return b(1005, j10, runnable);
    }

    private boolean b(int i10, long j10, Runnable runnable) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i10;
        messageObtain.obj = runnable;
        a(messageObtain, j10);
        return true;
    }

    public <T extends c> void a(long j10, T t10, int i10, boolean z10) {
        if (e()) {
            int iA = a(t10);
            if (i10 == 1) {
                this.f996b.removeMessages(iA);
            } else if (i10 == 2 && this.f996b.hasMessages(iA)) {
                return;
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = iA;
            messageObtain.obj = t10;
            if (!z10) {
                messageObtain.arg2 = -1;
            }
            a(messageObtain, j10 * 1000);
        }
    }

    public void c(long j10, Runnable runnable) {
        if (!e() || this.f996b.hasMessages(1007)) {
            return;
        }
        b(1007, j10, runnable);
    }

    public boolean a(long j10, Runnable runnable) {
        return a(1003, j10 * 1000, runnable);
    }

    public void a(long j10, int i10, cn.fly.commons.d.b bVar) {
        Message messageObtain = Message.obtain();
        messageObtain.what = 1002;
        messageObtain.arg1 = i10;
        messageObtain.obj = bVar;
        a(messageObtain, j10 * 1000);
    }

    private boolean a(int i10, long j10, Runnable runnable) {
        if (!e()) {
            return true;
        }
        if (this.f996b.hasMessages(i10)) {
            return false;
        }
        b(i10, j10, runnable);
        return true;
    }

    private <T extends c> int a(T t10) {
        int iL = t10.l();
        return iL > 0 ? iL + 10000 : iL - 10000;
    }

    private void a(Message message, long j10) {
        if (e()) {
            if (j10 > 0) {
                this.f996b.sendMessageDelayed(message, j10);
            } else {
                this.f996b.sendMessage(message);
            }
        }
    }

    public static String a(String str) {
        return C1293r.a(str, 100);
    }
}
