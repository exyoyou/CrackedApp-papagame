package cn.sharesdk.framework;

import android.os.Handler;
import android.os.Message;
import com.mob.tools.utils.UIHandler;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class ReflectablePlatformActionListener implements PlatformActionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f2429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler.Callback f2430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2431c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler.Callback f2432d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2433e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler.Callback f2434f;

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onCancel(Platform platform, int i10) {
        if (this.f2434f != null) {
            Message message = new Message();
            message.what = this.f2433e;
            message.obj = new Object[]{platform, Integer.valueOf(i10)};
            UIHandler.sendMessage(message, this.f2434f);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onComplete(Platform platform, int i10, HashMap<String, Object> map) {
        if (this.f2430b != null) {
            Message message = new Message();
            message.what = this.f2429a;
            message.obj = new Object[]{platform, Integer.valueOf(i10), map};
            UIHandler.sendMessage(message, this.f2430b);
        }
    }

    @Override // cn.sharesdk.framework.PlatformActionListener
    public void onError(Platform platform, int i10, Throwable th) {
        if (this.f2432d != null) {
            Message message = new Message();
            message.what = this.f2431c;
            message.obj = new Object[]{platform, Integer.valueOf(i10), th};
            UIHandler.sendMessage(message, this.f2432d);
        }
    }

    public void setOnCancelCallback(int i10, Handler.Callback callback) {
        this.f2433e = i10;
        this.f2434f = callback;
    }

    public void setOnCompleteCallback(int i10, Handler.Callback callback) {
        this.f2429a = i10;
        this.f2430b = callback;
    }

    public void setOnErrorCallback(int i10, Handler.Callback callback) {
        this.f2431c = i10;
        this.f2432d = callback;
    }
}
