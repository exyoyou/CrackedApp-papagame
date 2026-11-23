package cn.sharesdk.sina.weibo.utils;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.IBinder;
import android.text.TextUtils;
import cn.sharesdk.framework.ShareSDKCallback;
import cn.sharesdk.framework.authorize.SSOAuthorizeActivity;
import cn.sharesdk.framework.authorize.SSOListener;
import cn.sharesdk.framework.authorize.c;
import com.mob.MobSDK;
import com.mob.tools.utils.DH;
import com.sina.weibo.BuildConfig;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes7.dex */
public class b extends c implements ServiceConnection {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f2804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f2805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String[] f2806f;

    public b(SSOAuthorizeActivity sSOAuthorizeActivity) {
        super(sSOAuthorizeActivity);
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            Class<?> cls = Class.forName("com.sina.sso.RemoteSSO$Stub");
            Method method = cls.getMethod("asInterface", IBinder.class);
            method.setAccessible(true);
            Object objInvoke = method.invoke(null, iBinder);
            Method method2 = cls.getMethod("getPackageName", new Class[0]);
            method2.setAccessible(true);
            String strValueOf = String.valueOf(method2.invoke(objInvoke, new Object[0]));
            Method method3 = cls.getMethod("getActivityName", new Class[0]);
            method3.setAccessible(true);
            a(strValueOf, String.valueOf(method3.invoke(objInvoke, new Object[0])), new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.sina.weibo.utils.b.1
                @Override // cn.sharesdk.framework.ShareSDKCallback
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onCallback(Boolean bool) {
                    if (bool.booleanValue()) {
                        return;
                    }
                    ((c) b.this).f2616a.finish();
                    if (((c) b.this).f2618c != null) {
                        ((c) b.this).f2618c.onFailed(new Throwable());
                    }
                }
            });
        } catch (Throwable th) {
            this.f2616a.finish();
            SSOListener sSOListener = this.f2618c;
            if (sSOListener != null) {
                sSOListener.onFailed(th);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f2616a.finish();
        SSOListener sSOListener = this.f2618c;
        if (sSOListener != null) {
            sSOListener.onFailed(new Throwable());
        }
    }

    private void b(Intent intent) {
        if (this.f2618c == null) {
            return;
        }
        String stringExtra = intent.getStringExtra("error");
        if (stringExtra == null) {
            stringExtra = intent.getStringExtra("error_type");
        }
        if (stringExtra == null) {
            this.f2618c.onComplete(intent.getExtras());
            return;
        }
        if (stringExtra.equals("access_denied") || stringExtra.equals("OAuthAccessDeniedException")) {
            this.f2618c.onCancel();
            return;
        }
        String stringExtra2 = intent.getStringExtra("error_description");
        if (stringExtra2 != null) {
            stringExtra = stringExtra + ": " + stringExtra2;
        }
        this.f2618c.onFailed(new Throwable(stringExtra));
    }

    private void c(Intent intent) {
        if (intent == null) {
            SSOListener sSOListener = this.f2618c;
            if (sSOListener != null) {
                sSOListener.onCancel();
                return;
            }
            return;
        }
        Throwable th = new Throwable(intent.getStringExtra("error") + " (" + intent.getIntExtra("error_code", -1) + ")");
        SSOListener sSOListener2 = this.f2618c;
        if (sSOListener2 != null) {
            sSOListener2.onFailed(th);
        }
    }

    public void a(String str, String str2, String[] strArr) {
        this.f2804d = str;
        this.f2805e = str2;
        this.f2806f = strArr;
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a() {
        boolean zBindService;
        Intent intent = new Intent();
        intent.setClassName(BuildConfig.APPLICATION_ID, "com.sina.weibo.business.RemoteSSOService");
        try {
            zBindService = this.f2616a.getContext().getApplicationContext().bindService(intent, this, 1);
        } catch (Throwable unused) {
            zBindService = false;
        }
        if (zBindService) {
            return;
        }
        this.f2616a.finish();
        SSOListener sSOListener = this.f2618c;
        if (sSOListener != null) {
            sSOListener.onFailed(new Throwable());
        }
    }

    private void a(String str, String str2, final ShareSDKCallback<Boolean> shareSDKCallback) {
        final Intent intent = new Intent();
        intent.setClassName(str, str2);
        intent.putExtra("appKey", this.f2804d);
        intent.putExtra("redirectUri", this.f2805e);
        String[] strArr = this.f2806f;
        if (strArr != null && strArr.length > 0) {
            intent.putExtra("scope", TextUtils.join(",", strArr));
        }
        a(intent, new ShareSDKCallback<Boolean>() { // from class: cn.sharesdk.sina.weibo.utils.b.2
            @Override // cn.sharesdk.framework.ShareSDKCallback
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onCallback(Boolean bool) {
                if (!bool.booleanValue()) {
                    ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                    if (shareSDKCallback2 != null) {
                        shareSDKCallback2.onCallback(Boolean.FALSE);
                        return;
                    }
                    return;
                }
                try {
                    ((c) b.this).f2616a.startActivityForResult(intent, ((c) b.this).f2617b);
                    ((c) b.this).f2616a.getContext().getApplicationContext().unbindService(b.this);
                    ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                    if (shareSDKCallback3 != null) {
                        shareSDKCallback3.onCallback(Boolean.TRUE);
                    }
                } catch (Throwable unused) {
                    ShareSDKCallback shareSDKCallback4 = shareSDKCallback;
                    if (shareSDKCallback4 != null) {
                        shareSDKCallback4.onCallback(Boolean.FALSE);
                    }
                }
            }
        });
    }

    private void a(Intent intent, final ShareSDKCallback<Boolean> shareSDKCallback) {
        DH.requester(this.f2616a.getContext()).resolveActivity(intent, 0).request(new DH.DHResponder() { // from class: cn.sharesdk.sina.weibo.utils.b.3
            @Override // com.mob.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                try {
                    ResolveInfo resolveInfoResolveActivity = dHResponse.resolveActivity(new int[0]);
                    if (resolveInfoResolveActivity != null) {
                        DH.requester(MobSDK.getContext()).getPInfoForce(true, resolveInfoResolveActivity.activityInfo.packageName, 64).request(new DH.DHResponder() { // from class: cn.sharesdk.sina.weibo.utils.b.3.1
                            @Override // com.mob.tools.utils.DH.DHResponder
                            public void onResponse(DH.DHResponse dHResponse2) {
                                try {
                                    for (Signature signature : dHResponse2.getPInfoForce(new int[0]).signatures) {
                                        if ("30820295308201fea00302010202044b4ef1bf300d06092a864886f70d010105050030818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c74643020170d3130303131343130323831355a180f32303630303130323130323831355a30818d310b300906035504061302434e3110300e060355040813074265694a696e673110300e060355040713074265694a696e67312c302a060355040a132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c7464312c302a060355040b132353696e612e436f6d20546563686e6f6c6f677920284368696e612920436f2e204c746430819f300d06092a864886f70d010101050003818d00308189028181009d367115bc206c86c237bb56c8e9033111889b5691f051b28d1aa8e42b66b7413657635b44786ea7e85d451a12a82a331fced99c48717922170b7fc9bc1040753c0d38b4cf2b22094b1df7c55705b0989441e75913a1a8bd2bc591aa729a1013c277c01c98cbec7da5ad7778b2fad62b85ac29ca28ced588638c98d6b7df5a130203010001300d06092a864886f70d0101050500038181000ad4b4c4dec800bd8fd2991adfd70676fce8ba9692ae50475f60ec468d1b758a665e961a3aedbece9fd4d7ce9295cd83f5f19dc441a065689d9820faedbb7c4a4c4635f5ba1293f6da4b72ed32fb8795f736a20c95cda776402099054fccefb4a1a558664ab8d637288feceba9508aa907fc1fe2b1ae5a0dec954ed831c0bea4".equals(signature.toCharsString())) {
                                            ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                                            if (shareSDKCallback2 != null) {
                                                shareSDKCallback2.onCallback(Boolean.TRUE);
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                    ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                                    if (shareSDKCallback3 != null) {
                                        shareSDKCallback3.onCallback(Boolean.FALSE);
                                    }
                                } catch (Throwable unused) {
                                    ShareSDKCallback shareSDKCallback4 = shareSDKCallback;
                                    if (shareSDKCallback4 != null) {
                                        shareSDKCallback4.onCallback(Boolean.FALSE);
                                    }
                                }
                            }
                        });
                    } else {
                        ShareSDKCallback shareSDKCallback2 = shareSDKCallback;
                        if (shareSDKCallback2 != null) {
                            shareSDKCallback2.onCallback(Boolean.FALSE);
                        }
                    }
                } catch (Throwable unused) {
                    ShareSDKCallback shareSDKCallback3 = shareSDKCallback;
                    if (shareSDKCallback3 != null) {
                        shareSDKCallback3.onCallback(Boolean.FALSE);
                    }
                }
            }
        });
    }

    @Override // cn.sharesdk.framework.authorize.c
    public void a(int i10, int i11, Intent intent) {
        this.f2616a.finish();
        if (i10 == this.f2617b) {
            if (i11 == -1) {
                b(intent);
            } else {
                if (i11 != 0) {
                    return;
                }
                c(intent);
            }
        }
    }
}
