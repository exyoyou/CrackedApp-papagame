package com.join.mgps.Util;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.PaMgrBean;
import com.tencent.cos.COSClient;
import com.tencent.cos.COSClientConfig;
import com.tencent.cos.common.COSEndPoint;
import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.task.listener.IUploadTaskListener;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request;

/* JADX INFO: loaded from: classes4.dex */
public class u2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f50039d = "TCUploadHelper";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f50040e = 1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f50041f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f50042g = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f50043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f50044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f50045c = new Handler(Looper.getMainLooper(), new a());

    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            int i10 = msg.what;
            if (i10 != 1) {
                if (i10 != 3) {
                    return false;
                }
                return false;
            }
            if (u2.this.f50044b == null) {
                return false;
            }
            u2.this.f50044b.onUploadResult(msg.arg1, (String) msg.obj);
            return false;
        }
    }

    class b implements IUploadTaskListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f50047a;

        b(final String val$cosPath) {
            this.f50047a = val$cosPath;
        }

        @Override // com.tencent.cos.task.listener.IUploadTaskListener
        public void onCancel(COSRequest cosRequest, COSResult cosResult) {
            Message message = new Message();
            message.what = 1;
            message.arg1 = cosResult.code;
            message.obj = cosResult.msg;
            u2.this.f50045c.sendMessage(message);
        }

        @Override // com.tencent.cos.task.listener.ITaskListener
        public void onFailed(COSRequest cosRequest, COSResult cosResult) {
            Message message = new Message();
            message.what = 1;
            message.arg1 = cosResult.code;
            message.obj = cosResult.msg;
            u2.this.f50045c.sendMessage(message);
        }

        @Override // com.tencent.cos.task.listener.IUploadTaskListener
        public void onProgress(COSRequest cosRequest, long l10, long l11) {
        }

        @Override // com.tencent.cos.task.listener.ITaskListener
        public void onSuccess(COSRequest cosRequest, COSResult cosResult) {
            Message message = new Message();
            message.what = 1;
            message.arg1 = 0;
            message.obj = this.f50047a;
            u2.this.f50045c.sendMessage(message);
        }
    }

    class c extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50050c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f50051d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f50052e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f50053f;

        c(final String val$path, final String val$sig, final String val$appid, final String val$bucket, final String val$directory) {
            this.f50049b = val$path;
            this.f50050c = val$sig;
            this.f50051d = val$appid;
            this.f50052e = val$bucket;
            this.f50053f = val$directory;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            u2.this.g(this.f50049b, this.f50050c, this.f50051d, this.f50052e, this.f50053f);
        }
    }

    class d extends com.papa.sim.statistic.http.b.p<PaMgrBean.Response<PaMgrBean.Response.UplocadCover>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50055b;

        d(final String val$filePath) {
            this.f50055b = val$filePath;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception e10) {
            if (u2.this.f50044b != null) {
                u2.this.f50044b.onUploadResult(-1, null);
            }
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(PaMgrBean.Response<PaMgrBean.Response.UplocadCover> response) {
            if (response == null || response.getError() != 0) {
                d(null, null);
                return;
            }
            PaMgrBean.Response.UplocadCover data = response.getData();
            String appId = data.getAppId();
            u2.this.g(this.f50055b, data.getSignature(), appId, data.getBucket(), data.getUploadDir());
        }
    }

    public interface e {
        void onUploadResult(int code, String url);
    }

    public u2(final Context context, e listener) {
        this.f50043a = context;
        this.f50044b = listener;
    }

    private void d(final String path, final String sig, final String appid, final String bucket, final String directory) {
        new c(path, sig, appid, bucket, directory).start();
    }

    private static void e(String url, Map<String, String> params, final com.papa.sim.statistic.http.b.p callback) {
        com.papa.sim.statistic.http.b.W(url, params, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final String path, String sig, String appid, String bucket, String directory) {
        Context applicationContext = this.f50043a.getApplicationContext();
        COSClientConfig cOSClientConfig = new COSClientConfig();
        cOSClientConfig.setEndPoint(COSEndPoint.COS_GZ);
        COSClient cOSClient = new COSClient(applicationContext, appid, cOSClientConfig, null);
        StringBuilder sb2 = new StringBuilder();
        String str = File.separator;
        sb2.append(str);
        sb2.append(directory);
        sb2.append(str);
        sb2.append(new File(path).getName());
        String string = sb2.toString();
        PutObjectRequest putObjectRequest = new PutObjectRequest();
        putObjectRequest.setBucket(bucket);
        putObjectRequest.setCosPath(string);
        putObjectRequest.setSrcPath(path);
        putObjectRequest.setSign(sig);
        putObjectRequest.setInsertOnly("0");
        putObjectRequest.setListener(new b(string));
        cOSClient.putObject(putObjectRequest);
    }

    public void f(final String filePath, String uid, String token) {
        HashMap map = new HashMap();
        map.put("uid", uid + "");
        map.put(Constants.TOKEN, token);
        e(com.join.mgps.rpc.h.f72394w + "/interface/getcossign", map, new d(filePath));
    }
}
