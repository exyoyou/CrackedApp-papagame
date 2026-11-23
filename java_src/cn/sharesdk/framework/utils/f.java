package cn.sharesdk.framework.utils;

import android.os.Handler;
import android.os.Message;
import com.mob.tools.MobHandlerThread;

/* JADX INFO: loaded from: classes7.dex */
public abstract class f implements Handler.Callback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Handler f2722a = MobHandlerThread.newHandler(this);

    protected void a(Message message) {
    }

    protected abstract void b(Message message);

    protected void c(Message message) {
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i10 = message.what;
        if (i10 == -2) {
            c(message);
            return false;
        }
        if (i10 != -1) {
            b(message);
            return false;
        }
        a(message);
        return false;
    }

    public void a(int i10, int i11, Object obj) {
        Message message = new Message();
        message.what = -1;
        message.arg1 = i10;
        message.arg2 = i11;
        message.obj = obj;
        this.f2722a.sendMessage(message);
    }

    public void c() {
        a(0, 0, null);
    }
}
