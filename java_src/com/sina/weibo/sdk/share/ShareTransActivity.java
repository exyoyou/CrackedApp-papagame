package com.sina.weibo.sdk.share;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.sina.weibo.sdk.api.WeiboMultiMessage;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class ShareTransActivity extends BaseActivity {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Intent f82253t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private FrameLayout f82254u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private d f82255v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f82256w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Handler f82257x = new Handler(Looper.getMainLooper()) { // from class: com.sina.weibo.sdk.share.ShareTransActivity.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 1) {
                Object obj = message.obj;
                if (obj instanceof Intent) {
                    ShareTransActivity.this.b((Intent) obj);
                    return;
                }
            }
            ShareTransActivity.this.j();
        }
    };

    private static void c(Intent intent) {
        if (intent == null || intent.getFlags() == 0) {
            return;
        }
        int flags = intent.getFlags();
        String binaryString = Integer.toBinaryString(flags);
        ArrayList arrayList = new ArrayList();
        arrayList.add(64);
        arrayList.add(128);
        arrayList.add(1);
        arrayList.add(2);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            flags &= ~((Integer) it2.next()).intValue();
        }
        com.sina.weibo.sdk.b.c.a("WBShareTag", "clear flags: " + binaryString + "->" + Integer.toBinaryString(flags));
        intent.setFlags(flags);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        FrameLayout frameLayout = this.f82254u;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
        Handler handler = this.f82257x;
        if (handler != null) {
            handler.removeMessages(0);
            this.f82257x = null;
        }
        try {
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putInt("_weibo_resp_errcode", 1);
            intent.putExtras(bundle);
            setResult(-1, intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "onActivityResult. Means share result coming!");
        Handler handler = this.f82257x;
        if (handler != null) {
            if (i11 != -1) {
                handler.sendEmptyMessageDelayed(0, 100L);
                return;
            }
            Message messageObtain = Message.obtain(handler, 1);
            messageObtain.obj = intent;
            this.f82257x.sendMessageDelayed(messageObtain, 100L);
        }
    }

    @Override // com.sina.weibo.sdk.share.BaseActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "start share activity.");
        Intent intent = getIntent();
        this.f82253t = intent;
        if (intent == null) {
            finish();
            return;
        }
        if (intent.getIntExtra("start_flag", -1) != 1001) {
            finish();
            return;
        }
        this.f82254u = new FrameLayout(this);
        int intExtra = getIntent().getIntExtra("progress_id", -1);
        View viewInflate = intExtra != -1 ? ((LayoutInflater) getSystemService("layout_inflater")).inflate(intExtra, (ViewGroup) null) : new ProgressBar(this);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f82254u.addView(viewInflate, layoutParams);
        this.f82254u.setBackgroundColor(855638016);
        setContentView(this.f82254u);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "prepare wb resource.");
        Bundle extras = this.f82253t.getExtras();
        if (extras == null) {
            finish();
            return;
        }
        WeiboMultiMessage weiboMultiMessage = new WeiboMultiMessage();
        weiboMultiMessage.readFromBundle(extras);
        if (weiboMultiMessage.multiImageObject == null && weiboMultiMessage.videoSourceObject == null) {
            a(weiboMultiMessage);
            return;
        }
        d dVar = this.f82255v;
        if (dVar != null) {
            dVar.cancel(true);
        }
        d dVar2 = new d(this, new b() { // from class: com.sina.weibo.sdk.share.ShareTransActivity.2
            @Override // com.sina.weibo.sdk.share.b
            public final void a(c cVar) {
                ShareTransActivity.this.f82254u.setVisibility(4);
                if (cVar == null) {
                    ShareTransActivity.this.c("Trans result is null.");
                    return;
                }
                if (cVar.f82260z) {
                    ShareTransActivity.this.a(cVar.A);
                } else if (TextUtils.isEmpty(cVar.errorMessage)) {
                    ShareTransActivity.this.c("Trans resource fail.");
                } else {
                    ShareTransActivity.this.c(cVar.errorMessage);
                }
            }
        });
        this.f82255v = dVar2;
        dVar2.execute(weiboMultiMessage);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        com.sina.weibo.sdk.b.c.a("WBShareTag", "start share activity again. Means share result coming!");
        int intExtra = intent.getIntExtra("start_flag", -1);
        if (intExtra == 1001) {
            return;
        }
        if (intExtra == 1002) {
            b(intent);
        } else {
            j();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Intent intent) {
        FrameLayout frameLayout = this.f82254u;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        Handler handler = this.f82257x;
        if (handler != null) {
            handler.removeMessages(0);
            this.f82257x = null;
        }
        if (!a(intent)) {
            j();
            return;
        }
        c(intent);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(WeiboMultiMessage weiboMultiMessage) {
        com.sina.weibo.sdk.b.c.a("WBShareTag", "start wb composer");
        try {
            this.f82253t.putExtra("start_flag", 1002);
            String strF = com.sina.weibo.sdk.b.d.f(String.valueOf((Math.random() * 10000.0d) + System.currentTimeMillis()));
            this.f82256w = strF;
            this.f82253t.putExtra("share_back_flag", strF);
            this.f82253t.putExtra("share_flag_for_new_version", 1);
            Bundle extras = this.f82253t.getExtras();
            Intent intent = new Intent("com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY");
            com.sina.weibo.sdk.b.a.C1038a c1038aC = com.sina.weibo.sdk.b.a.c(this);
            if (c1038aC != null) {
                intent.setPackage(c1038aC.packageName);
            }
            intent.putExtras(weiboMultiMessage.writeToBundle(extras));
            intent.putExtra("_weibo_sdkVersion", "0041005000");
            intent.putExtra("_weibo_appPackage", getPackageName());
            intent.putExtra("_weibo_appKey", com.sina.weibo.sdk.a.a().getAppKey());
            intent.putExtra("_weibo_flag", 538116905);
            intent.putExtra("_weibo_sign", com.sina.weibo.sdk.b.d.f(com.sina.weibo.sdk.b.e.b(this, getPackageName())));
            String stringExtra = this.f82253t.getStringExtra("start_web_activity");
            if (!TextUtils.isEmpty(stringExtra) && "com.sina.weibo.sdk.web.WebActivity".equals(stringExtra)) {
                intent.setClassName(this, stringExtra);
                startActivityForResult(intent, 10001);
            } else {
                if (com.sina.weibo.sdk.a.a(this)) {
                    if (c1038aC != null) {
                        intent.setPackage(c1038aC.packageName);
                    }
                    startActivityForResult(intent, 10001);
                    return;
                }
                c("Start weibo client's composer fail. And Weibo client is not installed.");
            }
        } catch (Throwable th) {
            com.sina.weibo.sdk.b.c.b("WBShareTag", "start wb composer fail," + th.getMessage());
            c("Start weibo client's composer fail. " + th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        FrameLayout frameLayout = this.f82254u;
        if (frameLayout != null) {
            frameLayout.setVisibility(4);
        }
        Handler handler = this.f82257x;
        if (handler != null) {
            handler.removeMessages(0);
            this.f82257x = null;
        }
        Intent intent = new Intent();
        Bundle bundle = new Bundle();
        bundle.putInt("_weibo_resp_errcode", 2);
        bundle.putString("_weibo_resp_errstr", str);
        intent.putExtras(bundle);
        setResult(-1, intent);
        finish();
    }

    private boolean a(Intent intent) {
        if (TextUtils.isEmpty(this.f82256w) || intent == null || !intent.getExtras().containsKey("share_back_flag")) {
            return false;
        }
        return TextUtils.equals(this.f82256w, intent.getStringExtra("share_back_flag"));
    }
}
