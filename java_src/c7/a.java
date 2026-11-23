package c7;

import android.os.Environment;
import android.text.TextUtils;
import com.MApplication;
import com.google.gson.Gson;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.o1;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.p;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.HeaderModeBean;
import com.join.mgps.mod.utils.d;
import com.join.mgps.pref.h;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes3.dex */
public class a implements Interceptor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f518b = "";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Gson f519a;

    private String a() {
        MApplication mApplication = MApplication.f3182z;
        if (mApplication == null || !TextUtils.isEmpty(f518b)) {
            return f518b;
        }
        try {
            String strH = h.n(mApplication).H();
            f518b = strH;
            if (!TextUtils.isEmpty(strH)) {
                return f518b;
            }
            File file = new File(Environment.getExternalStorageDirectory(), ".papakey");
            if (o3.a()) {
                f518b = o3.z(MApplication.f3182z, file.getAbsolutePath());
            }
            if (!TextUtils.isEmpty(f518b)) {
                return f518b;
            }
            try {
                f518b = o1.f49829a.b(mApplication, "papakey", "");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return f518b;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request requestBuild;
        MediaType mediaType;
        Request request = chain.request();
        try {
            a();
            requestBuild = request.newBuilder().header("wufankey", !TextUtils.isEmpty(f518b) ? p.b(f518b.getBytes()) : "").header("wf-d", MApplication.A).header("wf-a", t2.g(MApplication.J)).header("wf-ad", t2.g(MApplication.B)).header("wf-m", t2.g(MApplication.C)).header("wf-i", t2.g(MApplication.D)).header("wf-pm", t2.g(MApplication.E)).header("android-ver", MApplication.H).header("wf-o", MApplication.L).header(d.f71902d, MApplication.M).header("wf-sn", MApplication.F).header("wf-single", String.valueOf(MApplication.G)).header("wf-position", request.url().url().toString().contains("/v7/home/home_page") ? "home" : "").header("wf-uid", AccountUtil_.getInstance_(MApplication.f3182z).getUid()).header("wf-v", "517_6.1.7.0").header("wf-pf", MApplication.O).header("wf-arm-v", MApplication.I).build();
        } catch (Exception e10) {
            e10.printStackTrace();
            requestBuild = null;
        }
        if (requestBuild == null) {
            requestBuild = request.newBuilder().build();
        }
        Response responseProceed = chain.proceed(requestBuild);
        try {
            String string = requestBuild.url().url().toString();
            String strHeader = responseProceed.header("mode");
            if (!TextUtils.isEmpty(strHeader)) {
                try {
                    String strA = com.join.mgps.Util.a.a(strHeader, "");
                    if (this.f519a == null) {
                        this.f519a = new Gson();
                    }
                    HeaderModeBean headerModeBean = (HeaderModeBean) this.f519a.fromJson(strA, HeaderModeBean.class);
                    if (TextUtils.equals(headerModeBean.getMode(), "encryption") && !TextUtils.isEmpty(headerModeBean.getUri()) && string.contains(headerModeBean.getUri())) {
                        BufferedSource bufferedSource = responseProceed.body().getSource();
                        bufferedSource.request(Long.MAX_VALUE);
                        Buffer buffer = bufferedSource.getBuffer();
                        Charset charset = StandardCharsets.UTF_8;
                        MediaType mediaType2 = responseProceed.body().get$contentType();
                        if (mediaType2 != null) {
                            charset = mediaType2.charset(charset);
                        }
                        String strC = com.join.mgps.Util.a.c(buffer.clone().readString(charset), "9d34201f969e5062");
                        if (mediaType2 == null || mediaType2.charset() == null || mediaType2.charset() == StandardCharsets.UTF_8) {
                            mediaType = MediaType.parse(mediaType2 + ";charset=" + StandardCharsets.UTF_8.name());
                        } else {
                            mediaType = MediaType.parse(mediaType2.getMediaType().replace(mediaType2.charset().name(), StandardCharsets.UTF_8.name()));
                        }
                        return responseProceed.newBuilder().body(ResponseBody.create(mediaType, strC.trim())).build();
                    }
                } catch (Exception unused) {
                }
            }
            return responseProceed;
        } catch (Exception e11) {
            e11.printStackTrace();
            return responseProceed;
        }
    }
}
