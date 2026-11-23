package com.windmill.sdk.strategy;

import android.text.TextUtils;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.windmill.sdk.models.WaterfallResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f87123a;

    private b() {
    }

    public static b a() {
        if (f87123a == null) {
            synchronized (b.class) {
                if (f87123a == null) {
                    f87123a = new b();
                }
            }
        }
        return f87123a;
    }

    public Map<String, Object> a(String str) {
        HashMap map;
        HashMap map2;
        File file = new File(com.windmill.sdk.utils.e.c() + File.separator + str);
        synchronized (this) {
            map = null;
            map = null;
            map = null;
            ObjectInputStream objectInputStream = null;
            if (file.exists()) {
                try {
                    long jCurrentTimeMillis = (System.currentTimeMillis() - file.lastModified()) / 1000;
                    ObjectInputStream objectInputStream2 = new ObjectInputStream(new FileInputStream(file));
                    try {
                        WaterfallResponse waterfallResponseDecode = WaterfallResponse.ADAPTER.decode(objectInputStream2);
                        if (waterfallResponseDecode != null && waterfallResponseDecode.waterfall != null) {
                            map2 = new HashMap();
                            try {
                                map2.put(HmInputMappingContent.FIELD_VALUE, waterfallResponseDecode);
                                if (jCurrentTimeMillis < waterfallResponseDecode.waterfall.strategy_expire_timestamp.intValue()) {
                                    map2.put("key", Boolean.FALSE);
                                } else {
                                    map2.put("key", Boolean.TRUE);
                                }
                                map = map2;
                            } catch (Throwable th) {
                                th = th;
                                objectInputStream = objectInputStream2;
                                try {
                                    th.printStackTrace();
                                    if (objectInputStream != null) {
                                        try {
                                            objectInputStream.close();
                                        } catch (Throwable th2) {
                                            th2.printStackTrace();
                                        }
                                    }
                                    map = map2;
                                } catch (Throwable th3) {
                                    if (objectInputStream != null) {
                                        try {
                                            objectInputStream.close();
                                        } catch (Throwable th4) {
                                            th4.printStackTrace();
                                        }
                                    }
                                    throw th3;
                                }
                            }
                        }
                        try {
                            objectInputStream2.close();
                        } catch (Throwable th5) {
                            th5.printStackTrace();
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        map2 = null;
                    }
                } catch (Throwable th7) {
                    th = th7;
                    map2 = null;
                }
            }
        }
        return map;
    }

    public void a(WaterfallResponse waterfallResponse, String fileName) {
        try {
            if (waterfallResponse.waterfall != null) {
                File file = new File(com.windmill.sdk.utils.e.c() + File.separator + fileName);
                if (waterfallResponse.waterfall.strategy_expire_timestamp.intValue() > 0) {
                    synchronized (this) {
                        ObjectOutputStream objectOutputStream = null;
                        try {
                            try {
                                if (file.exists()) {
                                    file.delete();
                                }
                                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(new FileOutputStream(file));
                                try {
                                    waterfallResponse.encode(objectOutputStream2);
                                    try {
                                        objectOutputStream2.close();
                                    } catch (Exception e10) {
                                        e = e10;
                                        e.printStackTrace();
                                    }
                                } catch (Exception e11) {
                                    e = e11;
                                    objectOutputStream = objectOutputStream2;
                                    e.printStackTrace();
                                    if (objectOutputStream != null) {
                                        try {
                                            objectOutputStream.close();
                                        } catch (Exception e12) {
                                            e = e12;
                                            e.printStackTrace();
                                        }
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    objectOutputStream = objectOutputStream2;
                                    if (objectOutputStream != null) {
                                        try {
                                            objectOutputStream.close();
                                        } catch (Exception e13) {
                                            e13.printStackTrace();
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } catch (Exception e14) {
                            e = e14;
                        }
                    }
                    return;
                }
                if (file.exists()) {
                    file.delete();
                }
            }
        } catch (Exception e15) {
            e15.printStackTrace();
        }
    }

    public WaterfallResponse a(String sign, String fileName) {
        ObjectInputStream objectInputStream;
        if (!TextUtils.isEmpty(sign)) {
            File file = new File(com.windmill.sdk.utils.e.c() + File.separator + fileName);
            synchronized (this) {
                if (file.exists()) {
                    try {
                        objectInputStream = new ObjectInputStream(new FileInputStream(file));
                        try {
                            WaterfallResponse waterfallResponseDecode = WaterfallResponse.ADAPTER.decode(objectInputStream);
                            if (waterfallResponseDecode != null && sign.equals(waterfallResponseDecode.sign)) {
                                file.setLastModified(System.currentTimeMillis());
                                try {
                                    objectInputStream.close();
                                } catch (Throwable th) {
                                    th.printStackTrace();
                                }
                                return waterfallResponseDecode;
                            }
                            try {
                                objectInputStream.close();
                            } catch (Throwable th2) {
                                th = th2;
                                th.printStackTrace();
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                th.printStackTrace();
                                if (objectInputStream != null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th4) {
                                        th = th4;
                                        th.printStackTrace();
                                    }
                                }
                            } catch (Throwable th5) {
                                if (objectInputStream != null) {
                                    try {
                                        objectInputStream.close();
                                    } catch (Throwable th6) {
                                        th6.printStackTrace();
                                    }
                                }
                                throw th5;
                            }
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        objectInputStream = null;
                    }
                }
            }
        }
        return null;
    }
}
