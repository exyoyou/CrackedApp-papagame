package com.papa91.utils;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpUtils {
    public static String EXIT_AD_URL = "http://anv9.ctapi.5fun.com";
    public static String GAME_URL = "http://anctapi.5fun.com";
    public static String REWARD_CONFIG_URL = "http://anv3btapi.5fun.com";
    public static String RealName_URL = "http://anctapi.5fun.com";
    protected static final int SHOW_RESPONSE = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$post$0(String str, HashMap map, String str2, com.papa91.arc.http.HttpUtils.OnResult onResult) throws Throwable {
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
                    } else {
                        String str3 = responseCode + "";
                        if (onResult != null) {
                            onResult.onFailure(str3);
                        }
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

    public static void post(final String str, final HashMap<String, String> map, final String str2, final com.papa91.arc.http.HttpUtils.OnResult onResult) {
        new Thread(new Runnable() { // from class: com.papa91.utils.a
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                HttpUtils.lambda$post$0(str, map, str2, onResult);
            }
        }).start();
    }

    public void getUserRewardConfig(final String str, final String str2, final String str3, final HttpFinishInterface httpFinishInterface) {
        new Thread(new Runnable() { // from class: com.papa91.utils.HttpUtils.2
            public String inputStream2String(InputStream inputStream) {
                InputStreamReader inputStreamReader;
                BufferedReader bufferedReader;
                StringBuilder sb2;
                try {
                    inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            sb2.append(line);
                        } catch (IOException e10) {
                            e10.printStackTrace();
                        }
                    }
                } catch (UnsupportedEncodingException e11) {
                    e11.printStackTrace();
                    inputStreamReader = null;
                }
                bufferedReader = new BufferedReader(inputStreamReader);
                sb2 = new StringBuilder();
                return sb2.toString();
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(HttpUtils.REWARD_CONFIG_URL + "/user/activity/banana_peel/get_user_reward_info?uid=" + str + "&game_id=" + str2 + "&device_id=" + str3).openConnection();
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setRequestMethod("GET");
                    if (httpURLConnection.getResponseCode() == 200) {
                        String strInputStream2String = inputStream2String(httpURLConnection.getInputStream());
                        HttpFinishInterface httpFinishInterface2 = httpFinishInterface;
                        if (httpFinishInterface2 != null) {
                            httpFinishInterface2.onRequestSuccess(strInputStream2String);
                        }
                    } else {
                        HttpFinishInterface httpFinishInterface3 = httpFinishInterface;
                        if (httpFinishInterface3 != null) {
                            httpFinishInterface3.onRequestError("");
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }).start();
    }

    public void sendRequestWithHttpClient(String str, String str2, final HttpFinishInterface httpFinishInterface) {
        post(str, new HashMap(), str2, new com.papa91.arc.http.HttpUtils.OnResult() { // from class: com.papa91.utils.HttpUtils.1
            @Override // com.papa91.arc.http.HttpUtils.OnResult
            public void onFailure(String str3) {
                HttpFinishInterface httpFinishInterface2 = httpFinishInterface;
                if (httpFinishInterface2 == null) {
                    httpFinishInterface2.onRequestError(str3);
                }
            }

            @Override // com.papa91.arc.http.HttpUtils.OnResult
            public void onSuccess(String str3) {
                HttpFinishInterface httpFinishInterface2 = httpFinishInterface;
                if (httpFinishInterface2 == null) {
                    httpFinishInterface2.onRequestSuccess(str3);
                }
            }
        });
    }
}
