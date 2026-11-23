package com.netcheck.LDNetDiagnoService;

import com.haima.hmcp.utils.LogUtils;
import com.haima.hmcp.utils.TraceRouterInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class LDNetTraceRoute {
    private static final String MATCH_PING_IP = "(?<=from ).*(?=: icmp_seq=1 ttl=)";
    private static final String MATCH_PING_TIME = "(?<=time=).*?ms";
    private static final String MATCH_TRACE_IP = "(?<=From ).*(?:[0-9]{1,3}\\.){3}[0-9]{1,3}";
    private static final String MATCH_TRACE_IP_2 = "(?:[0-9]{1,3}\\.){3}[0-9]{1,3}";
    private static LDNetTraceRoute instance;
    a listener;
    private final String LOG_TAG = "LDNetTraceRoute";
    private int traceTimes = 30;
    private final int TRACE_TIMES_MAX = 99;
    private final int TRACE_TIMES_MIN = 1;
    public boolean isCTrace = true;

    public interface a {
        void OnNetTraceFinished();

        void OnNetTraceUpdated(String str, TraceRouterInfo traceRouterInfo);
    }

    private class b {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f75830c = "(?<=\\().*?(?=\\))";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f75831a;

        public b(String str) {
            this.f75831a = str;
            Matcher matcher = Pattern.compile(f75830c).matcher(str);
            if (matcher.find()) {
                this.f75831a = matcher.group();
            }
        }

        public String a() {
            return this.f75831a;
        }
    }

    private class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f75833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f75834b;

        public c(String str, int i10) {
            this.f75833a = str;
            this.f75834b = i10;
        }

        public int a() {
            return this.f75834b;
        }

        public String b() {
            return this.f75833a;
        }

        public void c(int i10) {
            this.f75834b = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 2, insn: 0x007a: MOVE (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]) (LINE:123), block:B:36:0x007a */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    private String execPing(b bVar) throws Throwable {
        BufferedReader bufferedReader;
        InterruptedException e10;
        IOException e11;
        BufferedReader bufferedReader2;
        Process process;
        ?? r10;
        String str = "";
        BufferedReader bufferedReader3 = null;
        try {
            try {
                bVar = Runtime.getRuntime().exec("ping -c 1 -w 2 " + bVar.a());
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(bVar.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e12) {
                            e11 = e12;
                            e11.printStackTrace();
                            r10 = bVar;
                            process = bVar;
                            if (bufferedReader != null) {
                            }
                            process.destroy();
                            return str;
                        } catch (InterruptedException e13) {
                            e10 = e13;
                            e10.printStackTrace();
                            process = bVar;
                            if (bufferedReader != null) {
                                r10 = bVar;
                            }
                            process.destroy();
                            return str;
                        }
                    }
                    bufferedReader.close();
                    bVar.waitFor();
                    r10 = bVar;
                } catch (IOException e14) {
                    bufferedReader = null;
                    e11 = e14;
                } catch (InterruptedException e15) {
                    bufferedReader = null;
                    e10 = e15;
                } catch (Throwable th) {
                    th = th;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (Exception unused) {
                            throw th;
                        }
                    }
                    bVar.destroy();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader3 = bufferedReader2;
            }
        } catch (IOException e16) {
            bufferedReader = null;
            e11 = e16;
            bVar = 0;
        } catch (InterruptedException e17) {
            bufferedReader = null;
            e10 = e17;
            bVar = 0;
        } catch (Throwable th3) {
            th = th3;
            bVar = 0;
        }
        try {
            bufferedReader.close();
            process = r10;
            process.destroy();
        } catch (Exception unused2) {
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x0220 A[EXC_TOP_SPLITTER, PHI: r8 r9
      0x0220: PHI (r8v2 java.lang.Process) = (r8v1 java.lang.Process), (r8v7 java.lang.Process), (r8v8 java.lang.Process) binds: [B:58:0x0237, B:46:0x021e, B:52:0x022b] A[DONT_GENERATE, DONT_INLINE]
      0x0220: PHI (r9v3 java.io.BufferedReader) = (r9v2 java.io.BufferedReader), (r9v5 java.io.BufferedReader), (r9v6 java.io.BufferedReader) binds: [B:58:0x0237, B:46:0x021e, B:52:0x022b] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    private void execTrace(c cVar) throws Throwable {
        Pattern pattern;
        Pattern patternCompile = Pattern.compile(MATCH_TRACE_IP);
        Pattern patternCompile2 = Pattern.compile(MATCH_PING_IP);
        Pattern patternCompile3 = Pattern.compile(MATCH_PING_TIME);
        Pattern patternCompile4 = Pattern.compile(MATCH_TRACE_IP_2);
        Process processExec = null;
        BufferedReader bufferedReader = null;
        boolean z10 = false;
        while (!z10) {
            try {
                try {
                    if (cVar.a() > this.traceTimes) {
                        break;
                    }
                    TraceRouterInfo traceRouterInfo = new TraceRouterInfo();
                    String str = "";
                    String str2 = "ping -c 1 -w 2 -t " + cVar.a() + " " + cVar.b();
                    LogUtils.i("LDNetTraceRoute", "command :" + str2);
                    processExec = Runtime.getRuntime().exec(str2);
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            str = str + line;
                        } catch (IOException e10) {
                            e = e10;
                            bufferedReader = bufferedReader2;
                        } catch (InterruptedException e11) {
                            e = e11;
                            bufferedReader = bufferedReader2;
                            e.printStackTrace();
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused) {
                                }
                            }
                            processExec.destroy();
                            this.listener.OnNetTraceFinished();
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused2) {
                                    throw th;
                                }
                            }
                            processExec.destroy();
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    processExec.waitFor();
                    LogUtils.i("LDNetTraceRoute", "str :" + str);
                    Matcher matcher = patternCompile.matcher(str);
                    if (matcher.find()) {
                        matcher = patternCompile4.matcher(matcher.group());
                    }
                    StringBuilder sb2 = new StringBuilder(256);
                    Pattern pattern2 = patternCompile;
                    if (matcher.find()) {
                        String strGroup = matcher.group();
                        LogUtils.i("LDNetTraceRoute", "pingIp :" + strGroup);
                        String strExecPing = execPing(new b(strGroup));
                        StringBuilder sb3 = new StringBuilder();
                        pattern = patternCompile4;
                        sb3.append("status :");
                        sb3.append(strExecPing);
                        LogUtils.i("LDNetTraceRoute", sb3.toString());
                        if (strExecPing.length() == 0) {
                            sb2.append("unknown host or network error\n");
                            traceRouterInfo.setIndex(-1);
                            traceRouterInfo.setError("unknown host or network error");
                            z10 = true;
                        } else {
                            Matcher matcher2 = patternCompile3.matcher(strExecPing);
                            if (matcher2.find()) {
                                String strGroup2 = matcher2.group();
                                sb2.append(cVar.a());
                                traceRouterInfo.setIndex(cVar.a());
                                sb2.append("|");
                                sb2.append(strGroup);
                                traceRouterInfo.setIp(strGroup);
                                sb2.append("|");
                                sb2.append(strGroup2);
                                traceRouterInfo.setTime(strGroup2);
                            } else {
                                sb2.append(cVar.a());
                                traceRouterInfo.setIndex(cVar.a());
                                sb2.append("|");
                                sb2.append(strGroup);
                                traceRouterInfo.setIp(strGroup);
                                sb2.append("|");
                                sb2.append(" timeout;\n");
                                traceRouterInfo.setTime("timeout");
                            }
                            this.listener.OnNetTraceUpdated(sb2.toString(), traceRouterInfo);
                            cVar.c(cVar.a() + 1);
                        }
                    } else {
                        pattern = patternCompile4;
                        Matcher matcher3 = patternCompile2.matcher(str);
                        if (matcher3.find()) {
                            String strGroup3 = matcher3.group();
                            Matcher matcher4 = patternCompile3.matcher(str);
                            if (matcher4.find()) {
                                String strGroup4 = matcher4.group();
                                sb2.append(cVar.a());
                                traceRouterInfo.setIndex(cVar.a());
                                sb2.append("|");
                                sb2.append(strGroup3);
                                traceRouterInfo.setIp(strGroup3);
                                sb2.append("|");
                                sb2.append(strGroup4);
                                traceRouterInfo.setTime(strGroup4);
                                this.listener.OnNetTraceUpdated(sb2.toString(), traceRouterInfo);
                            }
                            z10 = true;
                        } else {
                            if (str.length() == 0) {
                                sb2.append("unknown host or network error\t");
                                z10 = true;
                            } else {
                                sb2.append(cVar.a());
                                traceRouterInfo.setIndex(cVar.a());
                                sb2.append("|");
                                sb2.append("***");
                                traceRouterInfo.setIp("***");
                                cVar.c(cVar.a() + 1);
                            }
                            this.listener.OnNetTraceUpdated(sb2.toString(), traceRouterInfo);
                        }
                    }
                    bufferedReader = bufferedReader2;
                    patternCompile = pattern2;
                    patternCompile4 = pattern;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e12) {
                e = e12;
            } catch (InterruptedException e13) {
                e = e13;
            }
            e.printStackTrace();
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            processExec.destroy();
            this.listener.OnNetTraceFinished();
        }
        if (bufferedReader != null) {
            bufferedReader.close();
        }
        processExec.destroy();
        this.listener.OnNetTraceFinished();
    }

    public void initListenter(a aVar) {
        this.listener = aVar;
    }

    public void printTraceInfo(String str) {
        this.listener.OnNetTraceUpdated(str.toString(), null);
    }

    public void resetInstance() {
        if (instance != null) {
            instance = null;
        }
    }

    public void setTraceTimes(int i10) {
        if (i10 > 99 || i10 < 1) {
            return;
        }
        this.traceTimes = i10;
    }

    public native void startJNICTraceRoute(String str);

    public void startTraceRoute(String str) throws Throwable {
        if (!this.isCTrace) {
            execTrace(new c(str, 1));
        } else {
            LogUtils.i("LDNetTraceRoute", "调用java模拟traceRoute");
            execTrace(new c(str, 1));
        }
    }
}
