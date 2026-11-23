package com.efs.sdk.base.core.controller;

import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.util.Pair;
import android.webkit.ValueCallback;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.core.c.f;
import com.efs.sdk.base.core.config.GlobalEnvStruct;
import com.efs.sdk.base.core.config.GlobalInfoManager;
import com.efs.sdk.base.core.config.a.c;
import com.efs.sdk.base.core.controller.a.a;
import com.efs.sdk.base.core.d.b;
import com.efs.sdk.base.core.e.d;
import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.core.util.concurrent.WorkThreadUtil;
import com.efs.sdk.base.http.HttpResponse;
import com.efs.sdk.base.protocol.ILogProtocol;
import com.haima.hmcp.ConstantsInternal;
import java.io.File;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class ControllerCenter implements Handler.Callback {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static GlobalEnvStruct f26323h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f26324a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f26325b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f26326c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f26327d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f26328e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f26329f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f26330g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f26331i;

    public ControllerCenter(EfsReporter.Builder builder) {
        f26323h = builder.getGlobalEnvStruct();
        Handler handler = new Handler(com.efs.sdk.base.core.util.concurrent.a.f26397a.getLooper(), this);
        this.f26331i = handler;
        handler.sendEmptyMessage(0);
    }

    private void a() {
        if (this.f26330g == null) {
            this.f26330g = new a();
        }
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            f26323h.mAppContext.registerReceiver(this.f26330g, intentFilter);
        } catch (Throwable th) {
            Log.w("efs.base", "register network change receiver error", th);
            int i10 = this.f26324a + 1;
            this.f26324a = i10;
            if (i10 < 3) {
                this.f26331i.sendEmptyMessageDelayed(3, ConstantsInternal.WAIT_VIRTUAL_GAME_PAD_TIMEOUT_MS);
            }
        }
    }

    private void b(final ILogProtocol iLogProtocol) {
        if (iLogProtocol == null) {
            return;
        }
        WorkThreadUtil.submit(new Runnable() { // from class: com.efs.sdk.base.core.controller.ControllerCenter.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    iLogProtocol.insertGlobal(GlobalInfoManager.getInstance().getGlobalInfo());
                    if (!"wa".equalsIgnoreCase(iLogProtocol.getLogType())) {
                        ControllerCenter.a(iLogProtocol);
                    }
                    if (ControllerCenter.getGlobalEnvStruct().isEnableSendLog()) {
                        final b bVarA = b.a(iLogProtocol);
                        final d dVar = d.a.f26354a;
                        WorkThreadUtil.submit(new Runnable() { // from class: com.efs.sdk.base.core.e.d.1

                            /* JADX INFO: renamed from: a */
                            final /* synthetic */ com.efs.sdk.base.core.d.b f26352a;

                            public AnonymousClass1() {
                                bVar = bVarA;
                            }

                            @Override // java.lang.Runnable
                            public final void run() {
                                d.this.f26351a.a(bVar);
                            }
                        });
                    }
                } catch (Throwable th) {
                    Log.e("efs.base", "log send error", th);
                }
            }
        });
    }

    @NonNull
    public static GlobalEnvStruct getGlobalEnvStruct() {
        return f26323h;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(@NonNull Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            GlobalInfoManager.getInstance().initGlobalInfo();
            f unused = f.a.f26281a;
            c.a().b();
            a();
            com.efs.sdk.base.core.f.f fVar = com.efs.sdk.base.core.f.f.a.f26372a;
            boolean zIsIntl = f26323h.isIntl();
            com.efs.sdk.base.core.f.c cVar = fVar.f26368a;
            if (zIsIntl) {
                cVar.f26360a = "https://errnewlogos.umeng.com/api/crashsdk/logcollect";
                cVar.f26361b = "4ea4e41a3993";
            } else {
                cVar.f26360a = "https://errnewlog.umeng.com/api/crashsdk/logcollect";
                cVar.f26361b = "28ef1713347d";
            }
            fVar.f26369b = this;
            fVar.f26370c.f26355a = this;
            fVar.f26371d.f26355a = this;
            this.f26329f = true;
            com.efs.sdk.base.core.c.d.a().sendEmptyMessageDelayed(0, f26323h.getLogSendDelayMills());
            com.efs.sdk.base.core.f.f fVar2 = com.efs.sdk.base.core.f.f.a.f26372a;
            if (fVar2.f26369b != null && getGlobalEnvStruct().isEnableWaStat()) {
                fVar2.f26369b.send(new com.efs.sdk.base.core.f.b("efs_core", "pvuv", fVar2.f26368a.f26362c));
            }
        } else if (i10 == 1) {
            Object obj = message.obj;
            if (obj != null && (obj instanceof ILogProtocol)) {
                b((ILogProtocol) obj);
            }
        } else if (i10 == 3) {
            a();
        }
        return true;
    }

    public void send(ILogProtocol iLogProtocol) {
        if (this.f26329f) {
            b(iLogProtocol);
            return;
        }
        Message messageObtain = Message.obtain();
        messageObtain.what = 1;
        messageObtain.obj = iLogProtocol;
        this.f26331i.sendMessage(messageObtain);
    }

    @Nullable
    public HttpResponse sendSyncImmediately(String str, int i10, String str2, boolean z10, File file) {
        b bVar = new b(str, (byte) 2);
        bVar.b(1);
        bVar.f26344d = file;
        bVar.a(str2);
        bVar.a(i10);
        bVar.f26342b.f26346b = z10;
        bVar.c();
        d.a.f26354a.f26351a.a(bVar);
        return bVar.f26342b.f26347c;
    }

    static /* synthetic */ void a(ILogProtocol iLogProtocol) {
        for (ValueCallback<Pair<Message, Message>> valueCallback : getGlobalEnvStruct().getCallback(9)) {
            HashMap map = new HashMap(4);
            map.put("log_type", iLogProtocol.getLogType());
            map.put("log_data", iLogProtocol.generateString());
            map.put("link_key", iLogProtocol.getLinkKey());
            map.put("link_id", iLogProtocol.getLinkId());
            Message messageObtain = Message.obtain(null, 9, map);
            Message messageObtain2 = Message.obtain();
            valueCallback.onReceiveValue(new Pair<>(messageObtain, messageObtain2));
            messageObtain.recycle();
            messageObtain2.recycle();
        }
    }
}
