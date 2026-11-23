package com.sdk.w;

import android.content.Context;
import com.join.mgps.dto.Constant;
import com.kuaishou.weapon.p0.t;
import com.sdk.a.c;
import com.sdk.a.d;
import com.sdk.a.e;
import com.sdk.base.framework.bean.DataInfo;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.framework.utils.log.MobileLogManager;
import com.sdk.base.module.config.BaseConfig;
import com.sdk.g.b;
import com.sdk.p.f;
import com.sdk.p.g;
import com.windmill.sdk.WMConstants;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.TreeMap;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    /* JADX WARN: Type inference failed for: r4v10, types: [Params[], java.lang.Object[]] */
    public <T> c<T> a(Context context, int i10, List<String> list, com.sdk.e.a<T> aVar) {
        String str;
        c<T> cVar;
        c<T> cVar2;
        boolean z10;
        StringBuffer stringBuffer;
        com.sdk.y.a aVar2 = new com.sdk.y.a(context, list, aVar);
        DataInfo dataInfo = new DataInfo();
        StringBuffer stringBuffer2 = new StringBuffer();
        StringBuffer stringBuffer3 = new StringBuffer();
        if (list.size() != 0) {
            for (int i11 = 0; i11 < list.size(); i11++) {
                String str2 = list.get(i11);
                String strSubstring = str2.substring(0, 3);
                try {
                    byte[] address = InetAddress.getByName(str2).getAddress();
                    if (str2.length() != 0) {
                        if (address.length == 4) {
                            if (!strSubstring.equals("127") && !strSubstring.equals("192")) {
                                stringBuffer2.append(str2);
                                stringBuffer = stringBuffer2;
                                stringBuffer.append("-");
                            }
                        } else if (!str2.contains("%") && !"::1".equals(str2)) {
                            stringBuffer3.append(str2);
                            stringBuffer = stringBuffer3;
                            stringBuffer.append("-");
                        }
                    }
                } catch (UnknownHostException e10) {
                    e10.printStackTrace();
                }
            }
            if (stringBuffer2.length() != 0 && '-' == stringBuffer2.charAt(stringBuffer2.length() - 1)) {
                StringBuffer stringBufferDeleteCharAt = stringBuffer2.deleteCharAt(stringBuffer2.length() - 1);
                int iMin = Math.min(stringBuffer3.length(), 5);
                for (int i12 = 0; i12 < iMin; i12++) {
                    dataInfo.putData("privateIp", stringBufferDeleteCharAt);
                }
            }
            if (stringBuffer3.length() != 0 && '-' == stringBuffer3.charAt(stringBuffer3.length() - 1)) {
                StringBuffer stringBufferDeleteCharAt2 = stringBuffer3.deleteCharAt(stringBuffer3.length() - 1);
                int iMin2 = Math.min(stringBuffer3.length(), 5);
                for (int i13 = 0; i13 < iMin2; i13++) {
                    dataInfo.putData("privateIp_v6", stringBufferDeleteCharAt2);
                }
            }
        }
        dataInfo.putData("serviceType", Integer.valueOf(i10));
        dataInfo.putData("newVersion", "11");
        if (com.sdk.t.a.f78589f) {
            int iA = com.sdk.n.a.a(context);
            if (iA > 3 || iA < 1) {
                iA = 0;
            }
            dataInfo.putData("operator", String.valueOf(iA));
            str = "/dro/netm/v2.0/qc";
        } else {
            str = "/dro/netm/v1.0/qc";
        }
        LogUtils.d_yl(com.sdk.y.a.f78644l, "public HttpHandler<T> getAuthoriseCodeCucc : dataInfo \n" + dataInfo, 3);
        String str3 = aVar2.f78537g;
        com.sdk.g.a aVar3 = new com.sdk.g.a(aVar2);
        if (com.sdk.r.a.a(str3).booleanValue()) {
            aVar2.a(1, 101008, "未检测到域名");
            return null;
        }
        LogUtils.d_yl(b.f78529j, "public HttpHandler<T> sendRequest() 开始", 0);
        try {
            TreeMap<String, Object> treeMap = new TreeMap<>();
            String strA = com.sdk.i.a.a(aVar2.f78536f, BaseConfig.apk);
            String[] strArr = {strA, com.sdk.t.a.f78585b};
            int i14 = 0;
            while (true) {
                if (i14 >= 2) {
                    z10 = false;
                    break;
                }
                String str4 = strArr[i14];
                if ((str4 == null || str4.length() < 1) && com.sdk.r.a.a(str4).booleanValue()) {
                    z10 = true;
                    break;
                }
                i14++;
            }
            if (!z10) {
                String strSubstring2 = com.sdk.t.a.f78590g;
                if (com.sdk.r.a.a(strSubstring2).booleanValue()) {
                    strSubstring2 = (strA + strA).substring(strA.length() - 16, strA.length() + 16);
                    com.sdk.t.a.f78590g = strSubstring2;
                }
                String strSubstring3 = strSubstring2.substring(0, 16);
                String strSubstring4 = strSubstring2.substring(16, 32);
                c.C.clear();
                c.C.put("InitTime", Long.valueOf(System.currentTimeMillis()));
                c.C.put("ifProtal", 0);
                String strA2 = aVar2.a(dataInfo, strSubstring3, strSubstring4);
                try {
                    f fVarA = f.a();
                    String strA3 = fVarA.f78578a.a(fVarA.f78579b, strSubstring3 + strSubstring4);
                    treeMap.put(WMConstants.API_KEY, strA);
                    treeMap.put("params", strA2);
                    treeMap.put("paramsKey", strA3);
                    treeMap.put(t.f74879d, Long.valueOf(System.currentTimeMillis()));
                    String strA4 = g.a(strA, str, treeMap);
                    HashMap<String, Object> map = new HashMap<>(16);
                    if (com.sdk.r.a.b(strA4).booleanValue()) {
                        treeMap.put(Constant.MD5, strA4);
                        treeMap.put("sign_Type", com.sdk.t.a.f78587d);
                        map.put(Constant.MD5, strA4);
                        map.put("api-protocol", "1.1");
                    }
                    e eVar = new e();
                    if (com.sdk.r.a.b("POST").booleanValue()) {
                        eVar.f78435a = "POST";
                    }
                    eVar.f78436b = str3 + str;
                    eVar.f78441g = aVar3;
                    eVar.f78440f = 0;
                    eVar.f78437c = treeMap;
                    try {
                        eVar.f78438d = null;
                        eVar.f78439e = map;
                        com.sdk.n.a.c cVar3 = com.sdk.n.a.c.f78562b;
                        if (com.sdk.t.a.f78589f) {
                            int iIntValue = Integer.valueOf((String) dataInfo.get("operator")).intValue();
                            String str5 = com.sdk.n.a.f78555a;
                            if (iIntValue == 1) {
                                cVar3 = com.sdk.n.a.c.f78561a;
                            } else if (iIntValue == 2) {
                                cVar3 = com.sdk.n.a.c.f78563c;
                            }
                        }
                        eVar.f78442h = cVar3;
                        d dVar = new d(aVar2.f78536f, eVar);
                        c<T> cVar4 = new c<>(dVar);
                        try {
                            ?? r10 = {dVar};
                            Executor executor = com.sdk.d.c.f78484h;
                            if (cVar4.f78489e) {
                                throw new IllegalStateException("Cannot execute task: the task is already executed.");
                            }
                            cVar4.f78489e = true;
                            cVar4.f78485a.f78495a = r10;
                            executor.execute(new com.sdk.d.g(null, cVar4.f78486b));
                            return cVar4;
                        } catch (Exception e11) {
                            e = e11;
                            cVar2 = cVar4;
                            MobileLogManager.status302002(e.toString());
                            aVar2.a(1, 302002, "网络访问异常:" + e.getMessage());
                            LogUtils.e(b.f78529j + "BaseProtocol sendRequest", e.toString() + "，" + e.getMessage(), Boolean.valueOf(b.f78530k));
                            return cVar2;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        cVar = null;
                        cVar2 = cVar;
                        MobileLogManager.status302002(e.toString());
                        aVar2.a(1, 302002, "网络访问异常:" + e.getMessage());
                        LogUtils.e(b.f78529j + "BaseProtocol sendRequest", e.toString() + "，" + e.getMessage(), Boolean.valueOf(b.f78530k));
                        return cVar2;
                    }
                } catch (Exception e13) {
                    cVar = null;
                    try {
                        aVar2.a(1, 101006, "公钥出错");
                        LogUtils.e(b.f78529j, "公钥出错：" + e13, Boolean.valueOf(b.f78530k));
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("公钥出错: ");
                        sb2.append(e13.getMessage());
                        return cVar;
                    } catch (Exception e14) {
                        e = e14;
                        cVar2 = cVar;
                        MobileLogManager.status302002(e.toString());
                        aVar2.a(1, 302002, "网络访问异常:" + e.getMessage());
                        LogUtils.e(b.f78529j + "BaseProtocol sendRequest", e.toString() + "，" + e.getMessage(), Boolean.valueOf(b.f78530k));
                        return cVar2;
                    }
                }
            }
            aVar2.a(1, 101004, "ApiKey或PublicKey不能为空");
            cVar = null;
            return cVar;
        } catch (Exception e15) {
            e = e15;
            cVar = null;
        }
    }
}
