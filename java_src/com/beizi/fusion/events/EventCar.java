package com.beizi.fusion.events;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.mobads.sdk.internal.bn;
import com.beizi.fusion.model.Messenger;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.model.ResponseInfo;
import com.beizi.fusion.tool.aa;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.al;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.tool.e;
import com.beizi.fusion.tool.g;
import com.beizi.fusion.tool.v;
import com.beizi.fusion.tool.x;
import com.join.mgps.Util.o0;
import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class EventCar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static EventCar f10231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f10232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<Messenger.EventsBean> f10233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f10234d = 128;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f10235e = bn.f7593e;

    private EventCar(Context context) {
        this.f10232b = context;
        RequestInfo requestInfoInit = RequestInfo.getInstance(context).init();
        if (requestInfoInit.isInit()) {
            return;
        }
        requestInfoInit.init();
    }

    public static EventCar getInstance(Context context) {
        if (f10231a == null) {
            synchronized (EventCar.class) {
                if (f10231a == null) {
                    f10231a = new EventCar(context);
                }
            }
        }
        return f10231a;
    }

    public void doUpLoadLogs() throws Throwable {
        int i10;
        int i11;
        try {
            ac.a("BeiZis", "===================doUpLoadLogs===================:" + Thread.currentThread().getName());
            long jCurrentTimeMillis = System.currentTimeMillis();
            File fileA = g.a(this.f10232b);
            ac.a("BeiZis", "doUpLoadLogs storagePath == " + fileA);
            if (fileA != null) {
                String str = fileA.getPath() + "/BeiZi/offline/";
                File[] fileArrListFiles = new File(str).listFiles();
                if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
                    return;
                }
                int length = fileArrListFiles.length;
                int i12 = 0;
                int i13 = 0;
                while (i13 < length) {
                    File file = fileArrListFiles[i13];
                    if (file.isDirectory()) {
                        String strA = "";
                        File file2 = new File(str, file.getName() + "/10000.txt");
                        if (file2.exists()) {
                            strA = a(file2);
                        } else {
                            al.a(file);
                        }
                        if (TextUtils.isEmpty(strA)) {
                            i10 = i13;
                        } else {
                            File[] fileArrListFiles2 = file.listFiles();
                            int length2 = fileArrListFiles2.length;
                            int i14 = 0;
                            while (i14 < length2) {
                                File file3 = fileArrListFiles2[i14];
                                if (file3.getName().equals("10000.txt")) {
                                    i11 = i13;
                                } else {
                                    i11 = i13;
                                    if (jCurrentTimeMillis - Long.valueOf(file3.getName().substring(i12, file3.getName().indexOf(o0.f49827a))).longValue() < this.f10235e) {
                                        String strA2 = x.a(strA, file3);
                                        if (!TextUtils.isEmpty(strA2)) {
                                            try {
                                                if (new JSONObject(strA2).optInt("code") == 200) {
                                                    file3.delete();
                                                }
                                            } catch (JSONException unused) {
                                            }
                                        }
                                    } else {
                                        file3.delete();
                                    }
                                }
                                i14++;
                                i13 = i11;
                                i12 = 0;
                            }
                            i10 = i13;
                            if (file.listFiles().length <= 1) {
                                al.a(file);
                            }
                        }
                    } else {
                        i10 = i13;
                    }
                    i13 = i10 + 1;
                    i12 = 0;
                }
            }
        } catch (Exception unused2) {
        }
    }

    public void goRoad(final EventBean eventBean) {
        e.b().e().execute(new Runnable() { // from class: com.beizi.fusion.events.EventCar.1
            @Override // java.lang.Runnable
            public void run() {
                EventCar.this.a(eventBean);
            }
        });
    }

    public void goRoadWithoutThread(EventBean eventBean) {
        a(eventBean);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(EventBean eventBean) {
        try {
            ResponseInfo responseInfo = ResponseInfo.getInstance(this.f10232b);
            String strA = a(eventBean.getEventCode());
            if (responseInfo.getMessenger() != null) {
                this.f10233c = responseInfo.getMessenger().getEvents();
                this.f10234d = Long.valueOf(responseInfo.getMessenger().getFileMaxSize()).longValue();
                this.f10235e = responseInfo.getMessenger().getExpireTime();
                List<Messenger.EventsBean> list = this.f10233c;
                if (list == null || list.size() <= 0) {
                    return;
                }
                for (int i10 = 0; i10 < this.f10233c.size(); i10++) {
                    Messenger.EventsBean eventsBean = this.f10233c.get(i10);
                    List<String> codes = eventsBean.getCodes();
                    if (codes != null && codes.size() > 0) {
                        for (int i11 = 0; i11 < codes.size(); i11++) {
                            if (!TextUtils.isEmpty(eventBean.getEventCode()) && !TextUtils.isEmpty(codes.get(i11)) && (eventBean.getEventCode().equals(codes.get(i11)) || strA.equals(codes.get(i11)))) {
                                if (eventsBean.getIsOnline().equals("1")) {
                                    eventBean.setUrl(eventsBean.getUploadUrl());
                                    a(eventsBean, eventBean);
                                } else {
                                    a(eventsBean, eventBean, true);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Throwable unused) {
        }
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return str.substring(0, str.indexOf(o0.f49827a) + 1) + WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD;
    }

    private void a(Messenger.EventsBean eventsBean, EventBean eventBean) {
        String strA;
        if (eventBean != null) {
            try {
                if (TextUtils.isEmpty(eventBean.getUrl())) {
                    return;
                }
                String url = eventBean.getUrl();
                if ("590.200".equalsIgnoreCase(eventBean.getEventCode())) {
                    url = eventBean.getTaskReqUrl();
                }
                int iIndexOf = url.indexOf("?");
                String strSubstring = url.substring(0, iIndexOf);
                String strSubstring2 = url.substring(iIndexOf + 1);
                if ("590.200".equalsIgnoreCase(eventBean.getEventCode())) {
                    strA = at.a(this.f10232b, strSubstring2, eventBean, eventBean.getAppLinks());
                } else {
                    strA = at.a(this.f10232b, strSubstring2, eventBean);
                }
                String strA2 = com.beizi.fusion.tool.b.a(aa.a(), v.a(strA));
                if (strA2 != null) {
                    String strA3 = x.a(strSubstring, strA2.getBytes());
                    if (!TextUtils.isEmpty(strA3)) {
                        if (new JSONObject(strA3).optInt("code") != 200) {
                            a(eventsBean, eventBean, true);
                            return;
                        }
                        return;
                    }
                    a(eventsBean, eventBean, true);
                }
            } catch (JSONException | Exception unused) {
            }
        }
    }

    private static String a(File file) {
        StringBuilder sb2 = new StringBuilder();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                sb2.append(line);
            }
            fileInputStream.close();
        } catch (Exception unused) {
        }
        return sb2.toString();
    }

    private void a(Messenger.EventsBean eventsBean, EventBean eventBean, boolean z10) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("===================doOffline===================:");
        sb2.append(eventBean.getEventCode());
        try {
            File fileA = g.a(this.f10232b);
            ac.a("BeiZis", "doOffline storagePath == " + fileA);
            if (fileA != null) {
                String offlineUrl = z10 ? eventsBean.getOfflineUrl() : eventsBean.getUploadUrl();
                String strSubstring = offlineUrl.substring(0, offlineUrl.indexOf("?"));
                String strA = com.beizi.fusion.tool.b.a(aa.a(), at.a(this.f10232b, offlineUrl.substring(offlineUrl.indexOf("?") + 1), eventBean));
                String str = fileA.getPath() + "/BeiZi/offline/" + at.a(eventsBean.toString()) + net.lingala.zip4j.util.e.F0;
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, "10000.txt");
                synchronized (EventCar.class) {
                    if (!file2.exists()) {
                        file2.createNewFile();
                        FileWriter fileWriter = new FileWriter(file2, true);
                        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
                        bufferedWriter.write(strSubstring);
                        bufferedWriter.newLine();
                        bufferedWriter.close();
                        fileWriter.close();
                    }
                }
                long jLongValue = 0;
                for (File file3 : file.listFiles()) {
                    String strSubstring2 = file3.getName().substring(0, file3.getName().indexOf(o0.f49827a));
                    if (Long.valueOf(strSubstring2).longValue() > jLongValue) {
                        jLongValue = Long.valueOf(strSubstring2).longValue();
                    }
                }
                if (jLongValue != 0 && jLongValue != 10000) {
                    File file4 = new File(str + jLongValue + ".txt");
                    if (file4.exists() && file4.length() < this.f10234d * 1000) {
                        FileWriter fileWriter2 = new FileWriter(file4, true);
                        BufferedWriter bufferedWriter2 = new BufferedWriter(fileWriter2);
                        bufferedWriter2.write(strA);
                        bufferedWriter2.newLine();
                        bufferedWriter2.close();
                        fileWriter2.close();
                        file4.renameTo(new File(file, System.currentTimeMillis() + ".txt"));
                        return;
                    }
                }
                File file5 = new File(file, System.currentTimeMillis() + ".txt");
                file5.createNewFile();
                FileWriter fileWriter3 = new FileWriter(file5, true);
                BufferedWriter bufferedWriter3 = new BufferedWriter(fileWriter3);
                bufferedWriter3.write(strA);
                bufferedWriter3.newLine();
                bufferedWriter3.close();
                fileWriter3.close();
            }
        } catch (Throwable unused) {
        }
    }
}
