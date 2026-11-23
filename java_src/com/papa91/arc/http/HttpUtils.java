package com.papa91.arc.http;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.join.mgps.mod.utils.d;
import com.papa91.arc.bean.AchievementBean;
import com.papa91.arc.bean.EndGameAllowBean;
import com.papa91.arc.bean.EndGameAwardArgs;
import com.papa91.arc.bean.PopwindowBean;
import com.papa91.arc.bean.ReqRealNameArgs;
import com.papa91.arc.bean.ReqSubmitRealNameArgs;
import com.papa91.arc.bean.Request;
import com.papa91.arc.bean.RequestAchievementArgs;
import com.papa91.arc.bean.RequestEndGameAllowArgs;
import com.papa91.arc.bean.RequestHeaders;
import com.papa91.arc.bean.RequestUpdateAchievementArgs;
import com.papa91.arc.bean.RequestUpdateEndGameResultArgs;
import com.papa91.arc.bean.Response;
import com.papa91.arc.http.http.DNSDataResult;
import com.papa91.arc.http.rpc.RpcConstant;
import com.papa91.arc.http.utils.PrefUtil;
import com.papa91.arc.util.StringUtils;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtils {
    private static Gson gson;
    private static boolean initSuccess;
    private static RequestHeaders mHeaders;

    public interface OnResult {
        void onFailure(String str);

        void onSuccess(String str);
    }

    public static Response<PopwindowBean> checkRealName(Request<ReqRealNameArgs> request) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getGoldenFinger: ");
        sb2.append(request.toString());
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v9/realName/auth/check", gson.toJson(request), PopwindowBean.class);
    }

    public static Response<EndGameAllowBean> endGameAllow(Request<RequestEndGameAllowArgs> request) {
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/endgame/challenge/allow", gson.toJson(request), EndGameAllowBean.class);
    }

    public static Response<EndGameAllowBean> endGameStart(Request<RequestEndGameAllowArgs> request) {
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/endgame/challenge/create", gson.toJson(request), EndGameAllowBean.class);
    }

    private static void ensureGsonCreated() {
        if (gson == null) {
            gson = new Gson();
        }
    }

    public static void get(final String str, final OnResult onResult) {
        new Thread(new Runnable() { // from class: com.papa91.arc.http.a
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                HttpUtils.lambda$get$0(str, onResult);
            }
        }).start();
    }

    public static Response<AchievementBean> getAchievements(Request<RequestAchievementArgs> request) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getAchievements: ");
        sb2.append(request.toString());
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/achievement/index", gson.toJson(request), AchievementBean.class);
    }

    public static Response<EndGameAllowBean> getVideoAward(Request<EndGameAwardArgs> request) {
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/endgame/challenge/awards", gson.toJson(request), EndGameAllowBean.class);
    }

    public static void init(Context context) {
        boolean z10;
        boolean z11;
        if (initSuccess) {
            return;
        }
        ensureGsonCreated();
        String dNSHttpUrl = PrefUtil.getInstance(context).getDNSHttpUrl();
        String requestHeaders = PrefUtil.getInstance(context).getRequestHeaders();
        if (StringUtils.isNotEmpty(dNSHttpUrl)) {
            ((DNSDataResult) gson.fromJson(dNSHttpUrl, DNSDataResult.class)).updateRpcConstant();
            z10 = true;
        } else {
            z10 = false;
        }
        if (StringUtils.isNotEmpty(requestHeaders)) {
            mHeaders = (RequestHeaders) gson.fromJson(requestHeaders, RequestHeaders.class);
            z11 = true;
        } else {
            z11 = false;
        }
        initSuccess = z10 && z11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$get$0(String str, OnResult onResult) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                try {
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                    try {
                        httpURLConnection2.setRequestMethod("GET");
                        int responseCode = httpURLConnection2.getResponseCode();
                        if (responseCode == 200) {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                            StringBuilder sb2 = new StringBuilder();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                } else {
                                    sb2.append(line);
                                }
                            }
                            bufferedReader.close();
                            String string = sb2.toString();
                            if (onResult != null) {
                                onResult.onSuccess(string);
                            }
                        } else if (onResult != null) {
                            onResult.onFailure("" + responseCode);
                        }
                        httpURLConnection2.disconnect();
                    } catch (Exception unused) {
                        httpURLConnection = httpURLConnection2;
                        if (onResult != null) {
                            onResult.onFailure("网络连接异常，请检查网络连接");
                        }
                        if (httpURLConnection == null) {
                        } else {
                            httpURLConnection.disconnect();
                        }
                    } catch (Throwable th) {
                        th = th;
                        httpURLConnection = httpURLConnection2;
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            } catch (Exception unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$post$1(String str, HashMap map, String str2, OnResult onResult) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setDoOutput(true);
                    if (map == null || map.isEmpty()) {
                        httpURLConnection2.setRequestProperty("Content-Type", "application/json;charset=utf-8");
                    } else {
                        for (Map.Entry entry : map.entrySet()) {
                            httpURLConnection2.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        str2 = "";
                    }
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    outputStream.write(str2.getBytes());
                    outputStream.flush();
                    outputStream.close();
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode == 200) {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream(), StandardCharsets.UTF_8));
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            } else {
                                sb2.append(line);
                            }
                        }
                        bufferedReader.close();
                        String string = sb2.toString();
                        if (onResult != null) {
                            onResult.onSuccess(string);
                        }
                    } else if (onResult != null) {
                        onResult.onFailure(responseCode + "");
                    }
                    httpURLConnection2.disconnect();
                } catch (Exception unused) {
                    httpURLConnection = httpURLConnection2;
                    if (onResult != null) {
                        onResult.onFailure("网络连接异常，请检查网络连接");
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused2) {
        }
    }

    static <T> Response<T> parse(String str, Class<T> cls) {
        try {
            ensureGsonCreated();
            return (Response) gson.fromJson(str, type(Response.class, cls));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static String post(String str, HashMap<String, String> map, String str2) throws Exception {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str).openConnection();
                try {
                    httpURLConnection2.setRequestMethod("POST");
                    httpURLConnection2.setDoOutput(true);
                    if (map == null) {
                        httpURLConnection2.setRequestProperty("Content-Type", "application/json");
                    } else {
                        for (Map.Entry<String, String> entry : map.entrySet()) {
                            httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                        }
                    }
                    if (TextUtils.isEmpty(str2)) {
                        str2 = "";
                    }
                    OutputStream outputStream = httpURLConnection2.getOutputStream();
                    outputStream.write(str2.getBytes());
                    outputStream.flush();
                    outputStream.close();
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (responseCode != 200) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("error: ");
                        sb2.append(responseCode);
                        httpURLConnection2.disconnect();
                        return "";
                    }
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream(), StandardCharsets.UTF_8));
                    StringBuilder sb3 = new StringBuilder();
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            bufferedReader.close();
                            String string = sb3.toString();
                            httpURLConnection2.disconnect();
                            return string;
                        }
                        sb3.append(line);
                    }
                } catch (Exception unused) {
                    throw new Exception("网络连接异常，请检查网络连接");
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused2) {
        }
    }

    public static void postSync(String str, String str2, OnResult onResult) {
        post(str, null, str2, onResult);
    }

    public static Response<PopwindowBean> submitRealName(Request<ReqSubmitRealNameArgs> request) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("getGoldenFinger: ");
        sb2.append(request.toString());
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v9/realName/auth/submit", gson.toJson(request), PopwindowBean.class);
    }

    static ParameterizedType type(final Class cls, final Type... typeArr) {
        return new ParameterizedType() { // from class: com.papa91.arc.http.HttpUtils.1
            @Override // java.lang.reflect.ParameterizedType
            public Type[] getActualTypeArguments() {
                return typeArr;
            }

            @Override // java.lang.reflect.ParameterizedType
            public Type getOwnerType() {
                return null;
            }

            @Override // java.lang.reflect.ParameterizedType
            public Type getRawType() {
                return cls;
            }
        };
    }

    public static Response<AchievementBean> updateAchievement(Request<RequestUpdateAchievementArgs> request) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("updateAchievement: ");
        sb2.append(request.toString());
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/achievement", gson.toJson(request), AchievementBean.class);
    }

    public static Response<EndGameAllowBean> updateEndGameResult(Request<RequestUpdateEndGameResultArgs> request) {
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/endgame/challenge/update", gson.toJson(request), EndGameAllowBean.class);
    }

    public static Response<EndGameAllowBean> updateEndGameResultV2(Request<RequestUpdateEndGameResultArgs> request) {
        ensureGsonCreated();
        return post(RpcConstant.gameUrl + "/v7/game/endgame/challenge/updateV2", gson.toJson(request), EndGameAllowBean.class);
    }

    public static void post(final String str, final HashMap<String, String> map, final String str2, final OnResult onResult) {
        new Thread(new Runnable() { // from class: com.papa91.arc.http.b
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                HttpUtils.lambda$post$1(str, map, str2, onResult);
            }
        }).start();
    }

    public static <T> Response<T> post(String str, String str2, Class<T> cls) {
        HashMap map = new HashMap();
        try {
            try {
                RequestHeaders requestHeaders = mHeaders;
                if (requestHeaders != null) {
                    try {
                        map.put("wufankey", requestHeaders.getWufankey());
                        map.put("wf-d", mHeaders.getWf_d());
                        map.put("wf-a", mHeaders.getWf_a());
                        map.put("wf-ad", mHeaders.getWf_ad());
                        map.put("wf-m", mHeaders.getWf_m());
                        map.put("wf-i", mHeaders.getWf_i());
                        map.put("wf-pm", mHeaders.getWf_pm());
                        map.put("android-ver", mHeaders.getAndroid_ver());
                        map.put("wf-o", mHeaders.getWf_o());
                        map.put(d.f71902d, mHeaders.getArm64());
                        map.put("wf-single", String.valueOf(mHeaders.getWf_single()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                map.put("Content-type", "application/json;charset=utf-8");
                map.put("Accept", "application/json");
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            String strPost = post(str, (HashMap<String, String>) map, str2);
            if (!TextUtils.isEmpty(strPost) && strPost.trim().startsWith("{")) {
                return parse(strPost, cls);
            }
            return null;
        } catch (Exception e12) {
            e12.printStackTrace();
            return null;
        }
    }
}
