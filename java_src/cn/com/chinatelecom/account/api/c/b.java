package cn.com.chinatelecom.account.api.c;

import android.content.Context;
import android.text.TextUtils;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.d.j;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class b extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f791b = "b";

    public b(Context context) {
        super(context);
    }

    public h a(String str, String str2, int i10, g gVar) {
        Throwable th;
        InputStream inputStream;
        IOException iOException;
        UnknownHostException unknownHostException;
        SocketTimeoutException socketTimeoutException;
        h hVar = new h();
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    HttpURLConnection httpURLConnectionB = b(str, str2, i10, gVar);
                    int responseCode = httpURLConnectionB.getResponseCode();
                    int i11 = 0;
                    if (responseCode == 200) {
                        inputStream = httpURLConnectionB.getInputStream();
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(inputStream));
                            while (true) {
                                try {
                                    String line = bufferedReader2.readLine();
                                    if (line == null) {
                                        break;
                                    }
                                    sb2.append(line);
                                    sb2.append("\n");
                                } catch (SocketTimeoutException e10) {
                                    socketTimeoutException = e10;
                                    bufferedReader = bufferedReader2;
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR, cn.com.chinatelecom.account.api.a.d.a(j.f887f) + "-" + gVar.f806c + "-" + socketTimeoutException.getMessage());
                                    CtAuth.warn(f791b, "SocketTimeoutException-" + gVar.f806c + "-" + socketTimeoutException.getMessage(), socketTimeoutException);
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("SocketTimeoutException ：");
                                    sb3.append(socketTimeoutException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb3.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } catch (UnknownHostException e11) {
                                    unknownHostException = e11;
                                    bufferedReader = bufferedReader2;
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_CONTEXT, cn.com.chinatelecom.account.api.a.d.a(j.f888g) + "-" + gVar.f806c + "-" + unknownHostException.getMessage());
                                    CtAuth.warn(f791b, "UnknownHostException-" + gVar.f806c + "-" + unknownHostException.getMessage(), unknownHostException);
                                    StringBuilder sb4 = new StringBuilder();
                                    sb4.append("UnknownHostException ：");
                                    sb4.append(unknownHostException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb4.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } catch (IOException e12) {
                                    iOException = e12;
                                    bufferedReader = bufferedReader2;
                                    hVar.f827b = j.a(80007, cn.com.chinatelecom.account.api.a.d.a(j.f889h) + "-" + gVar.f806c + "-" + iOException.getMessage());
                                    CtAuth.warn(f791b, "IOException-" + gVar.f806c + "-" + iOException.getMessage(), iOException);
                                    StringBuilder sb5 = new StringBuilder();
                                    sb5.append("IOException ：");
                                    sb5.append(iOException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb5.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedReader = bufferedReader2;
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-" + gVar.f806c + "-" + th.getMessage());
                                    CtAuth.warn(f791b, "Throwable-" + gVar.f806c + "-" + th.getMessage(), th);
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("Throwable ：");
                                    sb6.append(th.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb6.toString());
                                    if (bufferedReader != null) {
                                        bufferedReader.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                }
                            }
                            hVar.f826a = 0;
                            String string = sb2.toString();
                            if (!TextUtils.isEmpty(string)) {
                                JSONObject jSONObject = new JSONObject(string);
                                hVar.f827b = jSONObject;
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, jSONObject, null);
                            }
                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, null);
                            d dVarA = cn.com.chinatelecom.account.api.d.a.a(this.f803a, httpURLConnectionB, true);
                            if (dVarA != null) {
                                hVar.f828c = dVarA.f797a;
                                hVar.f829d = dVarA.f801e;
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d).f(dVarA.f799c).b(cn.com.chinatelecom.account.api.d.g.f(this.f803a));
                            }
                            bufferedReader = bufferedReader2;
                        } catch (SocketTimeoutException e13) {
                            socketTimeoutException = e13;
                        } catch (UnknownHostException e14) {
                            unknownHostException = e14;
                        } catch (IOException e15) {
                            iOException = e15;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        if (responseCode == 302) {
                            int i12 = gVar.f805b;
                            if (i12 < 10) {
                                gVar.f805b = i12 + 1;
                                gVar.f809f = false;
                                String headerField = httpURLConnectionB.getHeaderField("Location");
                                d dVarA2 = cn.com.chinatelecom.account.api.d.a.a(httpURLConnectionB);
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d).f(dVarA2.f799c).b(cn.com.chinatelecom.account.api.d.g.f(this.f803a));
                                if (!TextUtils.isEmpty(dVarA2.f800d) && !dVarA2.f800d.equals("0")) {
                                    i11 = 1;
                                }
                                CtAuth.info(f791b, " method : " + i11);
                                return a(headerField, null, i11, gVar, false);
                            }
                            JSONObject jSONObjectA = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-Redirect more than 10 times");
                            hVar.f827b = jSONObjectA;
                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, jSONObjectA, "Redirect more than 10 times");
                        } else {
                            hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_NO_CACHE, cn.com.chinatelecom.account.api.a.d.a(j.f884c) + "-" + gVar.f806c + "-code : " + responseCode);
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append(" Http response code :");
                            sb7.append(responseCode);
                            String string2 = sb7.toString();
                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, string2);
                            CtAuth.info(f791b, string2);
                        }
                        inputStream = null;
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th4) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e16) {
                            e16.printStackTrace();
                            throw th4;
                        }
                    }
                    if (inputStream == null) {
                        throw th4;
                    }
                    inputStream.close();
                    throw th4;
                }
            } catch (SocketTimeoutException e17) {
                socketTimeoutException = e17;
                inputStream = null;
            } catch (UnknownHostException e18) {
                unknownHostException = e18;
                inputStream = null;
            } catch (IOException e19) {
                iOException = e19;
                inputStream = null;
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
            }
        } catch (IOException e20) {
            e20.printStackTrace();
        }
        return hVar;
    }

    /* JADX WARN: Code duplicated, block: B:140:0x0277 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:144:0x02e8 A[Catch: IOException -> 0x0423, TRY_ENTER, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x02ed A[Catch: IOException -> 0x0423, TRY_LEAVE, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:153:0x02ff A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:157:0x0370 A[Catch: IOException -> 0x0423, TRY_ENTER, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:159:0x0375 A[Catch: IOException -> 0x0423, TRY_LEAVE, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:165:0x0389 A[Catch: all -> 0x04bb, TRY_ENTER, TryCatch #12 {all -> 0x04bb, blocks: (B:165:0x0389, B:168:0x038f, B:169:0x0391, B:170:0x03fc, B:172:0x0408, B:174:0x040d, B:173:0x040b, B:138:0x0273, B:141:0x0279, B:142:0x027b, B:151:0x02fb, B:154:0x0301, B:155:0x0303, B:191:0x043b, B:194:0x0441, B:195:0x0443), top: B:216:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x038d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:172:0x0408 A[Catch: all -> 0x04bb, TryCatch #12 {all -> 0x04bb, blocks: (B:165:0x0389, B:168:0x038f, B:169:0x0391, B:170:0x03fc, B:172:0x0408, B:174:0x040d, B:173:0x040b, B:138:0x0273, B:141:0x0279, B:142:0x027b, B:151:0x02fb, B:154:0x0301, B:155:0x0303, B:191:0x043b, B:194:0x0441, B:195:0x0443), top: B:216:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x040b A[Catch: all -> 0x04bb, TryCatch #12 {all -> 0x04bb, blocks: (B:165:0x0389, B:168:0x038f, B:169:0x0391, B:170:0x03fc, B:172:0x0408, B:174:0x040d, B:173:0x040b, B:138:0x0273, B:141:0x0279, B:142:0x027b, B:151:0x02fb, B:154:0x0301, B:155:0x0303, B:191:0x043b, B:194:0x0441, B:195:0x0443), top: B:216:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:178:0x0418 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:179:0x041a A[Catch: all -> 0x0416, TRY_LEAVE, TryCatch #27 {all -> 0x0416, blocks: (B:176:0x0412, B:179:0x041a), top: B:220:0x0412 }] */
    /* JADX WARN: Code duplicated, block: B:181:0x041f A[Catch: IOException -> 0x0423, TRY_ENTER, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:185:0x0428 A[Catch: IOException -> 0x0423, TRY_LEAVE, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:193:0x043f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:197:0x04b2 A[Catch: IOException -> 0x0423, TRY_ENTER, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:199:0x04b7 A[Catch: IOException -> 0x0423, TRY_LEAVE, TryCatch #26 {IOException -> 0x0423, blocks: (B:181:0x041f, B:185:0x0428, B:111:0x0238, B:113:0x023d, B:144:0x02e8, B:146:0x02ed, B:157:0x0370, B:159:0x0375, B:197:0x04b2, B:199:0x04b7), top: B:219:0x0011 }] */
    /* JADX WARN: Code duplicated, block: B:220:0x0412 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 17, insn: 0x04bd: IF  (r17 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:207:0x04c6, block:B:203:0x04bd */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x04c6: IF  (r2 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:232:?, block:B:207:0x04c6 */
    public h b(String str, String str2, int i10, g gVar, boolean z10) {
        Throwable th;
        InputStream inputStream;
        boolean z11;
        IOException iOException;
        boolean z12;
        UnknownHostException unknownHostException;
        String str3;
        boolean z13;
        SocketTimeoutException socketTimeoutException;
        boolean z14;
        BufferedReader bufferedReader;
        InputStream inputStream2;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        BufferedReader bufferedReader4;
        BufferedReader bufferedReader5;
        String strReplace;
        String str4;
        BufferedReader bufferedReader6;
        Context context;
        long jCurrentTimeMillis;
        h hVar = new h();
        boolean z15 = false;
        try {
            try {
                try {
                    boolean zC = cn.com.chinatelecom.account.api.d.g.c(this.f803a);
                    boolean zA = a(gVar.f809f, gVar.f810g);
                    if (zA) {
                        try {
                            try {
                                str4 = str;
                                try {
                                    strReplace = str4.replace(gVar.f811h, gVar.f810g);
                                } catch (UnknownHostException e10) {
                                    e = e10;
                                    unknownHostException = e;
                                    str3 = str4;
                                    inputStream = null;
                                    z13 = zA;
                                    z15 = false;
                                    zA = z13;
                                    strReplace = str3;
                                    bufferedReader5 = null;
                                    if (!z10) {
                                        if (!gVar.f808e && zA) {
                                            hVar.f829d = z15;
                                        }
                                        hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_CONTEXT, cn.com.chinatelecom.account.api.a.d.a(j.f888g) + "-" + gVar.f806c + "-" + unknownHostException.getMessage());
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("UnknownHostException : ");
                                        sb2.append(unknownHostException.getMessage());
                                        cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb2.toString());
                                        CtAuth.warn(f791b, "UnknownHostException-" + gVar.f806c + "-" + unknownHostException.getMessage(), unknownHostException);
                                    }
                                    if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                        hVar.f830e = "1";
                                    } else {
                                        hVar.f830e = "2";
                                    }
                                    hVar.f829d = true;
                                    if (bufferedReader5 != null) {
                                        try {
                                            bufferedReader5.close();
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                        } catch (Throwable unused) {
                                            if (bufferedReader5 != null) {
                                                bufferedReader5.close();
                                            }
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                            return hVar;
                                        }
                                    } else if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (bufferedReader5 != null) {
                                        bufferedReader5.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    return hVar;
                                }
                            } catch (UnknownHostException e11) {
                                e = e11;
                                str4 = str;
                            }
                        } catch (SocketTimeoutException e12) {
                            socketTimeoutException = e12;
                            inputStream = null;
                            z14 = zA;
                            z15 = false;
                            zA = z14;
                            bufferedReader4 = null;
                            if (!gVar.f808e) {
                                hVar.f829d = z15;
                            }
                            hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR, cn.com.chinatelecom.account.api.a.d.a(j.f887f) + "-" + gVar.f806c + "-" + socketTimeoutException.getMessage());
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append("SocketTimeoutException : ");
                            sb3.append(socketTimeoutException.getMessage());
                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb3.toString());
                            CtAuth.warn(f791b, "STE_" + gVar.f806c + "_" + socketTimeoutException.getMessage(), socketTimeoutException);
                            if (bufferedReader4 != null) {
                                bufferedReader4.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return hVar;
                        } catch (IOException e13) {
                            iOException = e13;
                            inputStream = null;
                            z12 = zA;
                            z15 = false;
                            zA = z12;
                            bufferedReader3 = null;
                            if (!gVar.f808e && zA) {
                                hVar.f829d = z15;
                            }
                            hVar.f827b = j.a(80007, cn.com.chinatelecom.account.api.a.d.a(j.f889h) + "-" + gVar.f806c + "-" + iOException.getMessage());
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("IOException : ");
                            sb4.append(iOException.getMessage());
                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb4.toString());
                            CtAuth.warn(f791b, "IOException-" + gVar.f806c + "-" + iOException.getMessage(), iOException);
                            if (bufferedReader3 != null) {
                                bufferedReader3.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return hVar;
                        } catch (Throwable th2) {
                            th = th2;
                            inputStream = null;
                            z11 = zA;
                            z15 = false;
                            zA = z11;
                            bufferedReader2 = null;
                            if (!gVar.f808e && zA) {
                                hVar.f829d = z15;
                            }
                            hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-" + gVar.f806c + "-" + th.getMessage());
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("Throwable : ");
                            sb5.append(th.getMessage());
                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb5.toString());
                            CtAuth.warn(f791b, "Throwable-" + gVar.f806c + "-" + th.getMessage(), th);
                            if (bufferedReader2 != null) {
                                bufferedReader2.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            return hVar;
                        }
                    } else {
                        strReplace = str;
                    }
                    try {
                        if (gVar.f805b > 0 && !zC) {
                            try {
                                if (!a()) {
                                    f.a(this.f803a, strReplace);
                                }
                            } catch (UnknownHostException e14) {
                                unknownHostException = e14;
                                str3 = strReplace;
                                inputStream = null;
                                z13 = zA;
                                z15 = false;
                                zA = z13;
                                strReplace = str3;
                                bufferedReader5 = null;
                                if (!z10) {
                                    if (!gVar.f808e) {
                                        hVar.f829d = z15;
                                    }
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_CONTEXT, cn.com.chinatelecom.account.api.a.d.a(j.f888g) + "-" + gVar.f806c + "-" + unknownHostException.getMessage());
                                    StringBuilder sb6 = new StringBuilder();
                                    sb6.append("UnknownHostException : ");
                                    sb6.append(unknownHostException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb6.toString());
                                    CtAuth.warn(f791b, "UnknownHostException-" + gVar.f806c + "-" + unknownHostException.getMessage(), unknownHostException);
                                }
                                if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                    hVar.f830e = "1";
                                } else {
                                    hVar.f830e = "2";
                                }
                                hVar.f829d = true;
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } else if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return hVar;
                            }
                        }
                        HttpsURLConnection httpsURLConnectionC = c(strReplace, str2, i10, gVar);
                        int responseCode = httpsURLConnectionC.getResponseCode();
                        if (responseCode == 200) {
                            inputStream = httpsURLConnectionC.getInputStream();
                            try {
                                StringBuilder sb7 = new StringBuilder();
                                BufferedReader bufferedReader7 = new BufferedReader(new InputStreamReader(inputStream));
                                while (true) {
                                    try {
                                        String line = bufferedReader7.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        sb7.append(line);
                                        sb7.append("\n");
                                    } catch (SocketTimeoutException e15) {
                                        socketTimeoutException = e15;
                                        bufferedReader4 = bufferedReader7;
                                        z15 = false;
                                        if (!gVar.f808e) {
                                            hVar.f829d = z15;
                                        }
                                        hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR, cn.com.chinatelecom.account.api.a.d.a(j.f887f) + "-" + gVar.f806c + "-" + socketTimeoutException.getMessage());
                                        StringBuilder sb8 = new StringBuilder();
                                        sb8.append("SocketTimeoutException : ");
                                        sb8.append(socketTimeoutException.getMessage());
                                        cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb8.toString());
                                        CtAuth.warn(f791b, "STE_" + gVar.f806c + "_" + socketTimeoutException.getMessage(), socketTimeoutException);
                                        if (bufferedReader4 != null) {
                                            bufferedReader4.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                    } catch (UnknownHostException e16) {
                                        unknownHostException = e16;
                                        bufferedReader5 = bufferedReader7;
                                        z15 = false;
                                        if (!z10) {
                                            if (!gVar.f808e) {
                                                hVar.f829d = z15;
                                            }
                                            hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_CONTEXT, cn.com.chinatelecom.account.api.a.d.a(j.f888g) + "-" + gVar.f806c + "-" + unknownHostException.getMessage());
                                            StringBuilder sb9 = new StringBuilder();
                                            sb9.append("UnknownHostException : ");
                                            sb9.append(unknownHostException.getMessage());
                                            cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb9.toString());
                                            CtAuth.warn(f791b, "UnknownHostException-" + gVar.f806c + "-" + unknownHostException.getMessage(), unknownHostException);
                                        }
                                        if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                            hVar.f830e = "1";
                                        } else {
                                            hVar.f830e = "2";
                                        }
                                        hVar.f829d = true;
                                        if (bufferedReader5 != null) {
                                            bufferedReader5.close();
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                        } else if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (bufferedReader5 != null) {
                                            bufferedReader5.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                    } catch (IOException e17) {
                                        iOException = e17;
                                        bufferedReader3 = bufferedReader7;
                                        z15 = false;
                                        if (!gVar.f808e) {
                                            hVar.f829d = z15;
                                        }
                                        hVar.f827b = j.a(80007, cn.com.chinatelecom.account.api.a.d.a(j.f889h) + "-" + gVar.f806c + "-" + iOException.getMessage());
                                        StringBuilder sb10 = new StringBuilder();
                                        sb10.append("IOException : ");
                                        sb10.append(iOException.getMessage());
                                        cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb10.toString());
                                        CtAuth.warn(f791b, "IOException-" + gVar.f806c + "-" + iOException.getMessage(), iOException);
                                        if (bufferedReader3 != null) {
                                            bufferedReader3.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                    } catch (Throwable th3) {
                                        th = th3;
                                        bufferedReader2 = bufferedReader7;
                                        z15 = false;
                                        if (!gVar.f808e) {
                                            hVar.f829d = z15;
                                        }
                                        hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-" + gVar.f806c + "-" + th.getMessage());
                                        StringBuilder sb11 = new StringBuilder();
                                        sb11.append("Throwable : ");
                                        sb11.append(th.getMessage());
                                        cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb11.toString());
                                        CtAuth.warn(f791b, "Throwable-" + gVar.f806c + "-" + th.getMessage(), th);
                                        if (bufferedReader2 != null) {
                                            bufferedReader2.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                    }
                                }
                                hVar.f826a = 0;
                                String string = sb7.toString();
                                if (!TextUtils.isEmpty(string)) {
                                    JSONObject jSONObject = new JSONObject(string);
                                    hVar.f827b = jSONObject;
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, jSONObject, null);
                                }
                                d dVarA = cn.com.chinatelecom.account.api.d.a.a(this.f803a, httpsURLConnectionC, true);
                                if (dVarA != null) {
                                    hVar.f828c = dVarA.f797a;
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d).f(dVarA.f799c);
                                }
                                if (dVarA.f801e && z10) {
                                    if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                        hVar.f830e = "1";
                                    } else {
                                        hVar.f830e = "2";
                                    }
                                    hVar.f829d = true;
                                }
                                if (!z10) {
                                    if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f838f))) {
                                        context = this.f803a;
                                        jCurrentTimeMillis = 0;
                                    } else {
                                        cn.com.chinatelecom.account.api.d.g.a(this.f803a, "2");
                                        context = this.f803a;
                                        jCurrentTimeMillis = System.currentTimeMillis();
                                    }
                                    cn.com.chinatelecom.account.api.d.g.a(context, jCurrentTimeMillis);
                                }
                                bufferedReader6 = bufferedReader7;
                            } catch (SocketTimeoutException e18) {
                                socketTimeoutException = e18;
                                z14 = zA;
                                z15 = false;
                                zA = z14;
                                bufferedReader4 = null;
                            } catch (UnknownHostException e19) {
                                unknownHostException = e19;
                                str3 = strReplace;
                                z13 = zA;
                                z15 = false;
                                zA = z13;
                                strReplace = str3;
                                bufferedReader5 = null;
                                if (!z10) {
                                    if (!gVar.f808e) {
                                        hVar.f829d = z15;
                                    }
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_CONTEXT, cn.com.chinatelecom.account.api.a.d.a(j.f888g) + "-" + gVar.f806c + "-" + unknownHostException.getMessage());
                                    StringBuilder sb12 = new StringBuilder();
                                    sb12.append("UnknownHostException : ");
                                    sb12.append(unknownHostException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb12.toString());
                                    CtAuth.warn(f791b, "UnknownHostException-" + gVar.f806c + "-" + unknownHostException.getMessage(), unknownHostException);
                                }
                                if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                    hVar.f830e = "1";
                                } else {
                                    hVar.f830e = "2";
                                }
                                hVar.f829d = true;
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } else if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return hVar;
                            } catch (IOException e20) {
                                iOException = e20;
                                z12 = zA;
                                z15 = false;
                                zA = z12;
                                bufferedReader3 = null;
                                if (!gVar.f808e) {
                                    hVar.f829d = z15;
                                }
                                hVar.f827b = j.a(80007, cn.com.chinatelecom.account.api.a.d.a(j.f889h) + "-" + gVar.f806c + "-" + iOException.getMessage());
                                StringBuilder sb13 = new StringBuilder();
                                sb13.append("IOException : ");
                                sb13.append(iOException.getMessage());
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb13.toString());
                                CtAuth.warn(f791b, "IOException-" + gVar.f806c + "-" + iOException.getMessage(), iOException);
                                if (bufferedReader3 != null) {
                                    bufferedReader3.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return hVar;
                            } catch (Throwable th4) {
                                th = th4;
                                z11 = zA;
                                z15 = false;
                                zA = z11;
                                bufferedReader2 = null;
                                if (!gVar.f808e) {
                                    hVar.f829d = z15;
                                }
                                hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-" + gVar.f806c + "-" + th.getMessage());
                                StringBuilder sb14 = new StringBuilder();
                                sb14.append("Throwable : ");
                                sb14.append(th.getMessage());
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb14.toString());
                                CtAuth.warn(f791b, "Throwable-" + gVar.f806c + "-" + th.getMessage(), th);
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                return hVar;
                            }
                        } else {
                            try {
                                if (responseCode == 302) {
                                    int i11 = gVar.f805b;
                                    if (i11 < 10) {
                                        gVar.f805b = i11 + 1;
                                        gVar.f809f = false;
                                        String headerField = httpsURLConnectionC.getHeaderField("Location");
                                        d dVarA2 = cn.com.chinatelecom.account.api.d.a.a(httpsURLConnectionC);
                                        cn.com.chinatelecom.account.api.d.f.a(gVar.f807d).f(dVarA2.f799c).b(cn.com.chinatelecom.account.api.d.g.f(this.f803a));
                                        int i12 = (TextUtils.isEmpty(dVarA2.f800d) || dVarA2.f800d.equals("0")) ? 0 : 1;
                                        CtAuth.info(f791b, "method : " + i12);
                                        return a(headerField, null, i12, gVar, false);
                                    }
                                    JSONObject jSONObjectA = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-Redirect more than 10 times");
                                    hVar.f827b = jSONObjectA;
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, jSONObjectA, "Redirect more than 10 times");
                                    socketTimeoutException = e;
                                    z14 = zA;
                                    inputStream = null;
                                    zA = z14;
                                    bufferedReader4 = null;
                                    if (!gVar.f808e && zA) {
                                        hVar.f829d = z15;
                                    }
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR, cn.com.chinatelecom.account.api.a.d.a(j.f887f) + "-" + gVar.f806c + "-" + socketTimeoutException.getMessage());
                                    StringBuilder sb15 = new StringBuilder();
                                    sb15.append("SocketTimeoutException : ");
                                    sb15.append(socketTimeoutException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb15.toString());
                                    CtAuth.warn(f791b, "STE_" + gVar.f806c + "_" + socketTimeoutException.getMessage(), socketTimeoutException);
                                    if (bufferedReader4 != null) {
                                        bufferedReader4.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    return hVar;
                                }
                                String str5 = strReplace;
                                if (!z10) {
                                    cn.com.chinatelecom.account.api.d.g.a(this.f803a, 0L);
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_NO_CACHE, cn.com.chinatelecom.account.api.a.d.a(j.f884c) + "-" + gVar.f806c + "-code : " + responseCode);
                                    StringBuilder sb16 = new StringBuilder();
                                    sb16.append("response code ：");
                                    sb16.append(responseCode);
                                    String string2 = sb16.toString();
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, string2);
                                    CtAuth.info(f791b, string2);
                                    return hVar;
                                }
                                if (str5.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                    hVar.f830e = "1";
                                } else {
                                    hVar.f830e = "2";
                                }
                                hVar.f829d = true;
                                inputStream = null;
                                bufferedReader6 = null;
                            } catch (SocketTimeoutException e21) {
                                e = e21;
                                socketTimeoutException = e;
                                z14 = zA;
                                inputStream = null;
                                zA = z14;
                                bufferedReader4 = null;
                                if (!gVar.f808e) {
                                    hVar.f829d = z15;
                                }
                                hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_SHOW_ERROR, cn.com.chinatelecom.account.api.a.d.a(j.f887f) + "-" + gVar.f806c + "-" + socketTimeoutException.getMessage());
                                StringBuilder sb17 = new StringBuilder();
                                sb17.append("SocketTimeoutException : ");
                                sb17.append(socketTimeoutException.getMessage());
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb17.toString());
                                CtAuth.warn(f791b, "STE_" + gVar.f806c + "_" + socketTimeoutException.getMessage(), socketTimeoutException);
                                if (bufferedReader4 != null) {
                                    bufferedReader4.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } catch (UnknownHostException e22) {
                                e = e22;
                                unknownHostException = e;
                                z13 = zA;
                                inputStream = null;
                                zA = z13;
                                strReplace = str3;
                                bufferedReader5 = null;
                                if (!z10) {
                                    if (!gVar.f808e) {
                                        hVar.f829d = z15;
                                    }
                                    hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_CONTEXT, cn.com.chinatelecom.account.api.a.d.a(j.f888g) + "-" + gVar.f806c + "-" + unknownHostException.getMessage());
                                    StringBuilder sb18 = new StringBuilder();
                                    sb18.append("UnknownHostException : ");
                                    sb18.append(unknownHostException.getMessage());
                                    cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb18.toString());
                                    CtAuth.warn(f791b, "UnknownHostException-" + gVar.f806c + "-" + unknownHostException.getMessage(), unknownHostException);
                                }
                                if (strReplace.contains(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g))) {
                                    hVar.f830e = "1";
                                } else {
                                    hVar.f830e = "2";
                                }
                                hVar.f829d = true;
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                } else if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } catch (IOException e23) {
                                e = e23;
                                iOException = e;
                                z12 = zA;
                                inputStream = null;
                                zA = z12;
                                bufferedReader3 = null;
                                if (!gVar.f808e) {
                                    hVar.f829d = z15;
                                }
                                hVar.f827b = j.a(80007, cn.com.chinatelecom.account.api.a.d.a(j.f889h) + "-" + gVar.f806c + "-" + iOException.getMessage());
                                StringBuilder sb19 = new StringBuilder();
                                sb19.append("IOException : ");
                                sb19.append(iOException.getMessage());
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb19.toString());
                                CtAuth.warn(f791b, "IOException-" + gVar.f806c + "-" + iOException.getMessage(), iOException);
                                if (bufferedReader3 != null) {
                                    bufferedReader3.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            } catch (Throwable th5) {
                                th = th5;
                                th = th;
                                z11 = zA;
                                inputStream = null;
                                zA = z11;
                                bufferedReader2 = null;
                                if (!gVar.f808e) {
                                    hVar.f829d = z15;
                                }
                                hVar.f827b = j.a(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f883b) + "-" + gVar.f806c + "-" + th.getMessage());
                                StringBuilder sb110 = new StringBuilder();
                                sb110.append("Throwable : ");
                                sb110.append(th.getMessage());
                                cn.com.chinatelecom.account.api.d.f.a(gVar.f807d, hVar.f827b, sb110.toString());
                                CtAuth.warn(f791b, "Throwable-" + gVar.f806c + "-" + th.getMessage(), th);
                                if (bufferedReader2 != null) {
                                    bufferedReader2.close();
                                }
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                            }
                        }
                        if (bufferedReader6 != null) {
                            bufferedReader6.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                    } catch (SocketTimeoutException e24) {
                        e = e24;
                        z15 = false;
                    } catch (UnknownHostException e25) {
                        e = e25;
                        str3 = strReplace;
                        z15 = false;
                    } catch (IOException e26) {
                        e = e26;
                        z15 = false;
                    } catch (Throwable th6) {
                        th = th6;
                        z15 = false;
                    }
                } catch (Throwable th7) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException e27) {
                            e27.printStackTrace();
                            throw th7;
                        }
                    }
                    if (inputStream2 == null) {
                        throw th7;
                    }
                    inputStream2.close();
                    throw th7;
                }
            } catch (SocketTimeoutException e28) {
                z15 = false;
                socketTimeoutException = e28;
                inputStream = null;
                z14 = false;
            } catch (UnknownHostException e29) {
                z15 = false;
                unknownHostException = e29;
                str3 = str;
                inputStream = null;
                z13 = false;
            } catch (IOException e30) {
                z15 = false;
                iOException = e30;
                inputStream = null;
                z12 = false;
            } catch (Throwable th8) {
                z15 = false;
                th = th8;
                inputStream = null;
                z11 = false;
            }
        } catch (IOException e31) {
            e31.printStackTrace();
        }
        return hVar;
    }

    @Override // cn.com.chinatelecom.account.api.c.e
    public h a(String str, String str2, int i10, g gVar, boolean z10) {
        return a(str) ? b(str, str2, i10, gVar, z10) : a(str, str2, i10, gVar);
    }
}
