package com.aggmoread.sdk.z.a.u;

import android.content.Context;
import android.content.Intent;
import com.bykv.vk.component.ttvideo.player.C;

/* JADX INFO: loaded from: classes7.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f4079a = "com.aggmoread.sdk.a.adcomm.amsdk.AmCustomWebviewActivity";

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f4080a = new C0103a();

        /* JADX INFO: renamed from: com.aggmoread.sdk.z.a.u.c$a$a, reason: collision with other inner class name */
        static class C0103a implements a {
            C0103a() {
            }

            @Override // com.aggmoread.sdk.z.a.u.c.a
            public void onShow() {
            }
        }

        void onShow();
    }

    public interface b extends a {
        void a(String str);
    }

    public static void a(Context context, String str, String str2, a aVar) {
        try {
            Class<?> cls = Class.forName(f4079a);
            cls.getDeclaredMethod("setWebViewStateListener", a.class).invoke(cls, aVar);
            Intent intent = new Intent(context, cls);
            intent.putExtra("mClickUrl", str2);
            intent.putExtra("title", str);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            context.getApplicationContext().startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
            if (aVar instanceof b) {
                ((b) aVar).a("err_" + e10.getMessage());
            }
        }
    }
}
