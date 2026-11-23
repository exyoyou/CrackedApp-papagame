package com.wufun.union.ad;

import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.core.app.NotificationCompat;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class AdService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static HashMap<AdChannel.Type, AdChannel> f88148b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static HashMap<String, Messenger> f88149c = new HashMap<>();

    class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Context f88150a;

        public a(Context context) {
            this.f88150a = context;
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            try {
                int i10 = message.what;
                String string = message.getData() != null ? message.getData().getString("fromPkg") : "";
                Messenger messenger = message.replyTo;
                if (!TextUtils.isEmpty(string) && messenger != null && !AdService.f88149c.containsKey(string)) {
                    AdService.f88149c.put(string, messenger);
                }
                if (i10 == 0) {
                    Messenger messenger2 = message.replyTo;
                    if (TextUtils.isEmpty(string)) {
                        return;
                    }
                    if (messenger2 == null) {
                        AdService.f88149c.remove(string);
                        return;
                    } else {
                        AdService.f88149c.put(string, messenger2);
                        AdService.i(this.f88150a, string, "smallGameStartSDK", "0");
                        return;
                    }
                }
                if (i10 == 1) {
                    AdService.this.a(message.getData());
                    return;
                }
                if (i10 == 2) {
                    AdService.this.g(message.getData());
                    return;
                }
                if (i10 == 3) {
                    Object obj = message.obj;
                    AdService.this.j((obj == null || !(obj instanceof Activity)) ? null : (Activity) obj, message.getData());
                } else {
                    if (i10 == 4 && !TextUtils.isEmpty(string)) {
                        AdService.f88149c.remove(string);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static void b(Context context, List<i8.b> list) {
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<i8.b> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().d());
        }
        Bundle bundle = new Bundle();
        bundle.putStringArrayList("data", arrayList);
        h(context, "initChannels", bundle);
    }

    public static void d(Context context, String str) {
        if (TextUtils.isEmpty(str) || context == null) {
            return;
        }
        Intent intent = new Intent(context.getPackageName() + ".action.commonService");
        intent.setPackage(context.getPackageName());
        intent.putExtra("action", "launchVGame");
        intent.putExtra("packageName", str);
        context.startService(intent);
    }

    public static void e(Context context, String str, AdChannel.Type type) {
        f(context, str, type, "", 0);
    }

    public static void f(Context context, String str, AdChannel.Type type, String str2, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("codeId", str);
        bundle.putInt("channelType", type.val);
        bundle.putString("adId", str2);
        bundle.putInt("adType", i10);
        h(context, MediationConstant.KEY_USE_POLICY_AD_LOAD, bundle);
    }

    static void h(Context context, String str, Bundle bundle) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent("com.wufun.union.ad.action.AdService");
        intent.setPackage(context.getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        if (!TextUtils.isEmpty(str)) {
            intent.putExtra("action", str);
        }
        context.startService(intent);
    }

    public static void i(Context context, String str, String str2, String str3) {
        Intent intent = new Intent(context.getPackageName() + ".action.commonService");
        intent.setPackage(context.getPackageName());
        intent.putExtra("action", "adStatisticEvent");
        intent.putExtra("fromPkg", str);
        intent.putExtra(NotificationCompat.CATEGORY_EVENT, str2);
        intent.putExtra("adId", str3);
        context.startService(intent);
    }

    public static void k(Context context, String str, AdChannel.Type type, String str2, int i10) {
        Bundle bundle = new Bundle();
        bundle.putString("codeId", str);
        bundle.putInt("channelType", type.val);
        bundle.putString("adId", str2);
        bundle.putInt("adType", i10);
        h(context, "adShow", bundle);
    }

    void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putAll(bundle);
        bundle2.putString("action", "getMiniGameConfig");
        l(bundle2);
    }

    void c(List<String> list) {
        if (list == null) {
            return;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            try {
                JSONObject jSONObject = new JSONObject(it2.next());
                int iOptInt = jSONObject.optInt("type");
                String strOptString = jSONObject.optString("appId", "");
                if (!TextUtils.isEmpty(strOptString)) {
                    AdChannel.Type type = AdChannel.Type.TT;
                    if (iOptInt == type.val) {
                        com.wufun.union.ad.bytedance.a aVar = new com.wufun.union.ad.bytedance.a();
                        aVar.j(new com.wufun.union.ad.a(this, aVar));
                        aVar.d(this, strOptString);
                        f88148b.put(type, aVar);
                    } else {
                        AdChannel.Type type2 = AdChannel.Type.GDT;
                        if (iOptInt == type2.val) {
                            com.wufun.union.ad.gdt.a aVar2 = new com.wufun.union.ad.gdt.a();
                            aVar2.j(new com.wufun.union.ad.a(this, aVar2));
                            aVar2.d(this, strOptString);
                            f88148b.put(type2, aVar2);
                        }
                    }
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
    }

    void g(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String string = bundle.getString("fromPkg");
        String string2 = bundle.getString("sdk_app_id", "");
        String string3 = bundle.getString("sdk_key", "");
        int i10 = -1;
        int i11 = bundle.getInt(bm.f84418u, -1);
        String string4 = bundle.getString(MediationConstant.EXTRA_ADID);
        bundle.getInt("ad_type", 0);
        if (i11 == 1) {
            i10 = 0;
        } else if (i11 == 2) {
            i10 = 1;
        }
        AdChannel adChannel = f88148b.get(AdChannel.Type.parse(i10));
        if (adChannel != null) {
            AdChannel.a aVarA = adChannel.a();
            if (aVarA != null && (aVarA instanceof com.wufun.union.ad.a)) {
                ((com.wufun.union.ad.a) aVarA).d(f88149c.get(string));
            }
            if (!adChannel.e()) {
                adChannel.d(this, string2);
            }
            try {
                adChannel.k(Integer.parseInt(string4));
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
            }
            adChannel.l(string);
            adChannel.g(string3);
            i(this, string, "smallRequestAdSDK", string4);
        }
    }

    void j(Activity activity, Bundle bundle) {
        if (bundle == null) {
            return;
        }
        if (activity == null) {
            h(this, "adShow", bundle);
            return;
        }
        String string = bundle.getString("fromPkg");
        bundle.getString("sdk_app_id", "");
        bundle.getString("sdk_key", "");
        int i10 = -1;
        int i11 = bundle.getInt(bm.f84418u, -1);
        String string2 = bundle.getString(MediationConstant.EXTRA_ADID);
        bundle.getInt("ad_type", 0);
        if (i11 == 1) {
            i10 = 0;
        } else if (i11 == 2) {
            i10 = 1;
        }
        AdChannel adChannel = f88148b.get(AdChannel.Type.parse(i10));
        if (adChannel == null) {
            activity.finish();
            d(this, string);
            return;
        }
        AdChannel.a aVarA = adChannel.a();
        if (aVarA != null && (aVarA instanceof com.wufun.union.ad.a)) {
            ((com.wufun.union.ad.a) aVarA).d(f88149c.get(string));
        }
        try {
            if (!TextUtils.isEmpty(string2)) {
                adChannel.k(Integer.parseInt(string2));
            }
        } catch (NumberFormatException e10) {
            e10.printStackTrace();
        }
        adChannel.l(string);
        adChannel.m(activity);
    }

    void l(Bundle bundle) {
        Intent intent = new Intent(getPackageName() + ".action.commonService");
        intent.setPackage(getPackageName());
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        startService(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new Messenger(new a(this)).getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        Messenger messenger;
        if (intent == null) {
            return super.onStartCommand(intent, i10, i11);
        }
        String stringExtra = intent.getStringExtra("action");
        if (TextUtils.isEmpty(stringExtra)) {
            return 1;
        }
        if (stringExtra.equals("initChannels")) {
            c(intent.getStringArrayListExtra("data"));
        } else if (stringExtra.equals(MediationConstant.KEY_USE_POLICY_AD_LOAD)) {
            g(intent.getExtras());
        } else if (stringExtra.equals("adShow")) {
            Intent intent2 = new Intent(this, (Class<?>) AdStubActivity.class);
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            intent2.putExtras(intent.getExtras());
            startActivity(intent2);
        } else if (stringExtra.equals("getMiniGameAdConfigResult") && !TextUtils.isEmpty(intent.getStringExtra("data"))) {
            String stringExtra2 = intent.getStringExtra("fromPkg");
            if (!TextUtils.isEmpty(stringExtra2) && (messenger = f88149c.get(stringExtra2)) != null) {
                Message message = new Message();
                message.what = 0;
                message.setData(intent.getExtras());
                try {
                    messenger.send(message);
                } catch (RemoteException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return 1;
    }
}
