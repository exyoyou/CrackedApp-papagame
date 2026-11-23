package com.papa.sim.statistic.http;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.join.mgps.dto.Constant;
import com.papa.sim.statistic.GameWorldResponse;
import com.papa.sim.statistic.JoyStickConfig;
import com.papa.sim.statistic.JoyStickConfigTmp;
import com.papa.sim.statistic.JsonMapper;
import com.papa.sim.statistic.RequestHeaderBean;
import com.papa.sim.statistic.StatRequest;
import com.papa.sim.statistic.StatResult;
import com.papa.sim.statistic.i;
import com.papa.sim.statistic.l;
import com.papa.sim.statistic.m;
import com.papa.sim.statistic.q;
import com.papa.sim.statistic.s;
import com.papa.sim.statistic.u;
import com.tencent.stat.DeviceInfo;
import java.io.File;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.Request;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f77282a;

    class a extends com.papa.sim.statistic.http.b.p<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f77283b;

        a(com.papa.sim.statistic.http.a aVar) {
            this.f77283b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f77283b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String str) {
            this.f77283b.onSuccess(str);
        }
    }

    class b extends com.papa.sim.statistic.http.b.p<GameWorldResponse> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f77285b;

        b(com.papa.sim.statistic.http.a aVar) {
            this.f77285b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f77285b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(GameWorldResponse gameWorldResponse) {
            this.f77285b.onSuccess(gameWorldResponse);
        }
    }

    /* JADX INFO: renamed from: com.papa.sim.statistic.http.c$c, reason: collision with other inner class name */
    class C0999c extends com.papa.sim.statistic.http.b.p<GameWorldResponse> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f77287b;

        C0999c(com.papa.sim.statistic.http.a aVar) {
            this.f77287b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f77287b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(GameWorldResponse gameWorldResponse) {
            this.f77287b.onSuccess(gameWorldResponse);
        }
    }

    class d extends com.papa.sim.statistic.http.b.p<StatResult> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f77289b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f77290c;

        d(String str, com.papa.sim.statistic.http.a aVar) {
            this.f77289b = str;
            this.f77290c = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            this.f77290c.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(StatResult statResult) {
            this.f77290c.onSuccess(statResult);
        }
    }

    class e extends com.papa.sim.statistic.http.b.p<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f77292b;

        e(com.papa.sim.statistic.http.a aVar) {
            this.f77292b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f77292b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String str) {
            this.f77292b.onSuccess(str);
        }
    }

    class f extends com.papa.sim.statistic.http.b.p<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.papa.sim.statistic.http.a f77294b;

        f(com.papa.sim.statistic.http.a aVar) {
            this.f77294b = aVar;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            exc.printStackTrace();
            this.f77294b.a(exc);
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String str) {
            if (str.contains("\"flag\":\"1\"") || str.contains("\"flag\":1")) {
                this.f77294b.onSuccess(str);
            } else {
                this.f77294b.a(null);
            }
        }
    }

    private c() {
    }

    public static String a(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b10 : bArr) {
            String hexString = Integer.toHexString(b10 & 255);
            if (hexString.length() < 2) {
                sb2.append(0);
            }
            sb2.append(hexString);
        }
        return sb2.toString();
    }

    public static String b(String str) {
        try {
            Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
            int blockSize = cipher.getBlockSize();
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            if (length % blockSize != 0) {
                length += blockSize - (length % blockSize);
            }
            byte[] bArr = new byte[length];
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
            cipher.init(1, new SecretKeySpec("625202f9149e061d".getBytes(), "AES"));
            return a(cipher.doFinal(bArr));
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static c c() {
        if (f77282a == null) {
            f77282a = new c();
        }
        return f77282a;
    }

    public void d(String str, File file, com.papa.sim.statistic.http.a aVar) {
        com.papa.sim.statistic.http.b.I().f(str, "file", file, new com.papa.sim.statistic.http.b.n[0], new a(aVar), file.getName());
    }

    public void e(Context context, String str, String str2, String str3, int i10, com.papa.sim.statistic.http.a<String> aVar) {
        com.papa.sim.statistic.http.b.Y(str, new com.papa.sim.statistic.http.b.n[]{new com.papa.sim.statistic.http.b.n("device_id", ""), new com.papa.sim.statistic.http.b.n(bn.f7598j, Build.BRAND), new com.papa.sim.statistic.http.b.n(bn.f7597i, Build.MODEL), new com.papa.sim.statistic.http.b.n("data", str3), new com.papa.sim.statistic.http.b.n("game_id", str2 + ""), new com.papa.sim.statistic.http.b.n("uid", i10 + "")}, new e(aVar));
    }

    public boolean f(Context context) {
        RequestHeaderBean requestHeaderBean;
        String string = context.getSharedPreferences("Papa_Stat_SharedPreferences", 0).getString("RequestHeaders", "");
        if (TextUtils.isEmpty(string) || (requestHeaderBean = (RequestHeaderBean) JsonMapper.getInstance().fromJson(string, RequestHeaderBean.class)) == null) {
            return false;
        }
        com.papa.sim.statistic.http.b.G().d0(requestHeaderBean.getWufankey(), requestHeaderBean.getWf_d(), requestHeaderBean.getWf_a(), requestHeaderBean.getWf_ad(), requestHeaderBean.getWf_m(), requestHeaderBean.getWf_i(), requestHeaderBean.getWf_pm());
        return (requestHeaderBean.getWufankey() == null || requestHeaderBean.getWf_a() == null) ? false : true;
    }

    public void g(String str, String str2, com.papa.sim.statistic.http.a<StatResult> aVar) {
        com.papa.sim.statistic.http.b.G().H().n(str, str2, new d(str2, aVar));
    }

    public void h(Context context, String str, String str2, com.papa.sim.statistic.http.a<String> aVar, List<StatRequest> list) {
        String[] strArrR = u.f(context).r();
        String str3 = strArrR[0] + "_" + strArrR[1];
        StringBuilder sb2 = new StringBuilder();
        if (list != null) {
            for (StatRequest statRequest : list) {
                sb2.append("{\"uid\": \"" + statRequest.getData().getUid() + "\",\"game_id\":\"" + statRequest.getData().getGameId() + "\",\"batch_id\":\"" + statRequest.getExt().getArticleId() + "\",\"play_time\":\"" + statRequest.getExt().getDuration() + "\"},");
            }
        }
        String strB = b("{\"batch_id\":\"" + str2 + "\",\"play_game_time_info\":[" + sb2.substring(0, sb2.length() - 1) + "]}");
        StringBuilder sb3 = new StringBuilder();
        String strB2 = "";
        sb3.append("");
        sb3.append("gzRN53VWRF9BYUXomg2014");
        String str4 = "{\"version\": \"" + str3 + "\",\"deviceid\": \"\",\"sign\": \"" + l.a(sb3.toString()) + "\",\"messages\": {\"args\": {\"info\":\"" + strB + "\"}}}";
        String strB3 = u.f(context).b();
        try {
            strB3 = com.papa.sim.statistic.a.b(strB3, "");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        String str5 = strB3;
        String strA = m.a(context);
        String strA2 = u.f(context).a(context);
        try {
            strA2 = com.papa.sim.statistic.a.b(strA2, "");
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        String str6 = strA2;
        String strG = u.f(context).g();
        try {
            strG = com.papa.sim.statistic.a.b(strG, "");
        } catch (Exception e12) {
            e12.printStackTrace();
        }
        String str7 = strG;
        String strE = i.e();
        try {
            strE = com.papa.sim.statistic.a.b(strE, "");
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        String str8 = strE;
        try {
            strB2 = com.papa.sim.statistic.a.b(Build.MODEL, "");
        } catch (Exception e14) {
            e14.printStackTrace();
        }
        com.papa.sim.statistic.http.b.G().d0("", str5, str6, strA, str7, str8, strB2);
        com.papa.sim.statistic.http.b.U(str, str4, new f(aVar));
    }

    public void i(Context context, JoyStickConfig joyStickConfig, com.papa.sim.statistic.http.a<GameWorldResponse> aVar) {
        JoyStickConfigTmp joyStickConfigTmp = new JoyStickConfigTmp();
        joyStickConfigTmp.setUid(joyStickConfig.getUid() + "");
        joyStickConfigTmp.setDevice_id("");
        joyStickConfigTmp.setVer(u.f(context).p() + "");
        joyStickConfigTmp.setGamepad_mac(joyStickConfig.getGamepad_mac());
        joyStickConfigTmp.setGamepad_name(joyStickConfig.getGamepad_name());
        joyStickConfigTmp.setUpload_time(joyStickConfig.getUpdate_time() + "");
        String strD = q.d(joyStickConfigTmp);
        File file = new File(joyStickConfig.getFile());
        com.papa.sim.statistic.http.b.I().f(s.f77320n + "/v14/user/configure/game_pad_cfg", "file", file, new com.papa.sim.statistic.http.b.n[]{new com.papa.sim.statistic.http.b.n("uid", joyStickConfig.getUid() + ""), new com.papa.sim.statistic.http.b.n(DeviceInfo.TAG_VERSION, u.f(context).p() + ""), new com.papa.sim.statistic.http.b.n("gamepad_mac", joyStickConfig.getGamepad_mac()), new com.papa.sim.statistic.http.b.n("gamepad_name", joyStickConfig.getGamepad_name()), new com.papa.sim.statistic.http.b.n("upload_time", joyStickConfig.getUpdate_time() + ""), new com.papa.sim.statistic.http.b.n("device_id", ""), new com.papa.sim.statistic.http.b.n(Constant.MD5, strD)}, new b(aVar), file.getName());
    }

    public void j(Context context, JoyStickConfig joyStickConfig, com.papa.sim.statistic.http.a<GameWorldResponse> aVar) {
        JoyStickConfigTmp joyStickConfigTmp = new JoyStickConfigTmp();
        joyStickConfigTmp.setUid(joyStickConfig.getUid() + "");
        joyStickConfigTmp.setDevice_id("");
        joyStickConfigTmp.setVer(u.f(context).p() + "");
        joyStickConfigTmp.setGamepad_mac(joyStickConfig.getGamepad_mac());
        joyStickConfigTmp.setGamepad_name(joyStickConfig.getGamepad_name());
        joyStickConfigTmp.setUpload_time(joyStickConfig.getUpdate_time() + "");
        String strD = q.d(joyStickConfigTmp);
        File file = new File(joyStickConfig.getFile());
        com.papa.sim.statistic.http.b.I().f(s.f77320n + "/v14/user/configure/game_pad_info", "file", file, new com.papa.sim.statistic.http.b.n[]{new com.papa.sim.statistic.http.b.n("uid", joyStickConfig.getUid() + ""), new com.papa.sim.statistic.http.b.n(DeviceInfo.TAG_VERSION, u.f(context).p() + ""), new com.papa.sim.statistic.http.b.n("gamepad_mac", joyStickConfig.getGamepad_mac()), new com.papa.sim.statistic.http.b.n("gamepad_name", joyStickConfig.getGamepad_name()), new com.papa.sim.statistic.http.b.n("upload_time", joyStickConfig.getUpdate_time() + ""), new com.papa.sim.statistic.http.b.n("device_id", ""), new com.papa.sim.statistic.http.b.n(Constant.MD5, strD)}, new C0999c(aVar), file.getName());
    }
}
