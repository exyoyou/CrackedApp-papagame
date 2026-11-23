package com.xinzhu.overmind.utils;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f90144a = "su";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f90145b = "sh";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f90146c = "exit\n";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f90147d = "\n";

    private x() {
        throw new AssertionError();
    }

    public static boolean a() {
        return c("echo root", true, false).f90148a == 0;
    }

    public static a b(String str, boolean z10) {
        return g(new String[]{str}, z10, true);
    }

    public static a c(String str, boolean z10, boolean z11) {
        return g(new String[]{str}, z10, z11);
    }

    public static a d(List<String> list, boolean z10) {
        return g(list == null ? null : (String[]) list.toArray(new String[0]), z10, true);
    }

    public static a e(List<String> list, boolean z10, boolean z11) {
        return g(list == null ? null : (String[]) list.toArray(new String[0]), z10, z11);
    }

    public static a f(String[] strArr, boolean z10) {
        return g(strArr, z10, true);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0128  */
    /* JADX WARN: Code duplicated, block: B:113:0x013e A[Catch: IOException -> 0x013a, TRY_LEAVE, TryCatch #1 {IOException -> 0x013a, blocks: (B:109:0x0136, B:113:0x013e), top: B:121:0x0136 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x0147  */
    /* JADX WARN: Code duplicated, block: B:127:0x00f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x010d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00b4 A[Catch: IOException -> 0x00b8, TRY_LEAVE, TryCatch #3 {IOException -> 0x00b8, blocks: (B:47:0x00af, B:49:0x00b4), top: B:125:0x00af }] */
    /* JADX WARN: Code duplicated, block: B:78:0x00f6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:79:0x00f8 A[Catch: IOException -> 0x00f4, TRY_LEAVE, TryCatch #5 {IOException -> 0x00f4, blocks: (B:75:0x00f0, B:79:0x00f8), top: B:127:0x00f0 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x0113 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x0115 A[Catch: IOException -> 0x0111, TRY_LEAVE, TryCatch #7 {IOException -> 0x0111, blocks: (B:90:0x010d, B:94:0x0115), top: B:129:0x010d }] */
    /* JADX WARN: Code duplicated, block: B:98:0x011e A[PHI: r2 r3 r9 r10
      0x011e: PHI (r2v5 ??) = (r2v3 ??), (r2v6 ??) binds: [B:82:0x00ff, B:97:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x011e: PHI (r3v7 ??) = (r3v5 ??), (r3v8 ??) binds: [B:82:0x00ff, B:97:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x011e: PHI (r9v12 java.lang.StringBuilder) = (r9v10 java.lang.StringBuilder), (r9v13 java.lang.StringBuilder) binds: [B:82:0x00ff, B:97:0x011c] A[DONT_GENERATE, DONT_INLINE]
      0x011e: PHI (r10v14 ??) = (r10v12 ??), (r10v15 ??) binds: [B:82:0x00ff, B:97:0x011c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r10v15 */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v24 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r10v34 */
    /* JADX WARN: Type inference failed for: r10v35 */
    /* JADX WARN: Type inference failed for: r10v36 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v11, types: [int] */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v27, types: [int] */
    /* JADX WARN: Type inference failed for: r1v30, types: [int] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.io.DataOutputStream] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v31 */
    /* JADX WARN: Type inference failed for: r9v32 */
    public static a g(String[] strArr, boolean z10, boolean z11) throws Throwable {
        ?? r10;
        ?? r11;
        StringBuilder sb2;
        Process process;
        BufferedReader bufferedReader;
        Process process2;
        BufferedReader bufferedReader2;
        Object obj;
        Object obj2;
        Process process3;
        BufferedReader bufferedReader3;
        ?? r12;
        Process process4;
        BufferedReader bufferedReader4;
        ?? r13;
        BufferedReader bufferedReader5;
        BufferedReader bufferedReader6;
        BufferedReader bufferedReader7;
        BufferedReader bufferedReader8;
        BufferedReader bufferedReader9;
        BufferedReader bufferedReader10;
        ?? r14 = 0;
        r14 = 0;
        ?? WaitFor = -1;
        if (strArr != null) {
            try {
                if (strArr.length != 0) {
                    try {
                        Process processExec = Runtime.getRuntime().exec(z10 ? "su" : f90145b);
                        try {
                            DataOutputStream dataOutputStream = new DataOutputStream(processExec.getOutputStream());
                            try {
                                try {
                                    for (String str : strArr) {
                                        if (str != null) {
                                            dataOutputStream.write(str.getBytes());
                                            dataOutputStream.writeBytes("\n");
                                            dataOutputStream.flush();
                                        }
                                    }
                                    dataOutputStream.writeBytes(f90146c);
                                    dataOutputStream.flush();
                                    WaitFor = processExec.waitFor();
                                    try {
                                        if (z11 != 0) {
                                            try {
                                                sb2 = new StringBuilder();
                                                try {
                                                    bufferedReader7 = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                                                    while (true) {
                                                        try {
                                                            String line = bufferedReader7.readLine();
                                                            bufferedReader10 = bufferedReader7;
                                                            if (line == null) {
                                                                break;
                                                            }
                                                            sb2.append(line + "\n");
                                                        } catch (IOException e10) {
                                                            e = e10;
                                                            bufferedReader9 = bufferedReader7;
                                                            z11 = processExec;
                                                            bufferedReader6 = bufferedReader9;
                                                            r12 = WaitFor;
                                                            r13 = dataOutputStream;
                                                            e.printStackTrace();
                                                            if (r13 != 0) {
                                                                try {
                                                                    r13.close();
                                                                    if (bufferedReader6 != null) {
                                                                        bufferedReader6.close();
                                                                    }
                                                                } catch (IOException e11) {
                                                                    e11.printStackTrace();
                                                                    if (z11 != 0) {
                                                                        z11.destroy();
                                                                    }
                                                                    sb2 = sb2;
                                                                    WaitFor = r12;
                                                                    return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                                                                }
                                                            } else if (bufferedReader6 != null) {
                                                                bufferedReader6.close();
                                                            }
                                                            if (z11 != 0) {
                                                                z11.destroy();
                                                            }
                                                            sb2 = sb2;
                                                            WaitFor = r12;
                                                        } catch (Exception e12) {
                                                            e = e12;
                                                            bufferedReader8 = bufferedReader7;
                                                            z11 = processExec;
                                                            bufferedReader5 = bufferedReader8;
                                                            r12 = WaitFor;
                                                            r13 = dataOutputStream;
                                                            e.printStackTrace();
                                                            if (r13 != 0) {
                                                                try {
                                                                    r13.close();
                                                                    if (bufferedReader5 != null) {
                                                                        bufferedReader5.close();
                                                                    }
                                                                } catch (IOException e13) {
                                                                    e13.printStackTrace();
                                                                    if (z11 != 0) {
                                                                        z11.destroy();
                                                                    }
                                                                    sb2 = sb2;
                                                                    WaitFor = r12;
                                                                    return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                                                                }
                                                            } else if (bufferedReader5 != null) {
                                                                bufferedReader5.close();
                                                            }
                                                            if (z11 != 0) {
                                                                z11.destroy();
                                                            }
                                                            sb2 = sb2;
                                                            WaitFor = r12;
                                                        } catch (Throwable th) {
                                                            th = th;
                                                            r14 = dataOutputStream;
                                                            r10 = processExec;
                                                            r11 = bufferedReader7;
                                                            if (r14 != 0) {
                                                                try {
                                                                    r14.close();
                                                                    if (r11 != 0) {
                                                                        r11.close();
                                                                    }
                                                                } catch (IOException e14) {
                                                                    e14.printStackTrace();
                                                                    if (r10 != 0) {
                                                                        throw th;
                                                                    }
                                                                    r10.destroy();
                                                                    throw th;
                                                                }
                                                            } else if (r11 != 0) {
                                                                r11.close();
                                                            }
                                                            if (r10 != 0) {
                                                                throw th;
                                                            }
                                                            r10.destroy();
                                                            throw th;
                                                        }
                                                    }
                                                    dataOutputStream.close();
                                                    if (bufferedReader10 != null) {
                                                        bufferedReader10.close();
                                                    }
                                                    processExec.destroy();
                                                } catch (IOException e15) {
                                                    bufferedReader9 = null;
                                                    e = e15;
                                                } catch (Exception e16) {
                                                    bufferedReader8 = null;
                                                    e = e16;
                                                }
                                            } catch (IOException e17) {
                                                e = e17;
                                                z11 = processExec;
                                                sb2 = null;
                                                r13 = dataOutputStream;
                                                r12 = WaitFor;
                                                bufferedReader6 = null;
                                            } catch (Exception e18) {
                                                e = e18;
                                                z11 = processExec;
                                                sb2 = null;
                                                r13 = dataOutputStream;
                                                r12 = WaitFor;
                                                bufferedReader5 = null;
                                            }
                                            return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                                        }
                                        sb2 = null;
                                        bufferedReader10 = null;
                                        dataOutputStream.close();
                                        if (bufferedReader10 != null) {
                                            bufferedReader10.close();
                                        }
                                    } catch (IOException e19) {
                                        e19.printStackTrace();
                                    }
                                    processExec.destroy();
                                } catch (Throwable th2) {
                                    th = th2;
                                    bufferedReader7 = null;
                                }
                            } catch (IOException e20) {
                                e = e20;
                                process4 = processExec;
                                sb2 = null;
                                bufferedReader4 = null;
                                obj2 = dataOutputStream;
                                r12 = -1;
                                bufferedReader6 = bufferedReader4;
                                r13 = obj2;
                                z11 = process4;
                                e.printStackTrace();
                                if (r13 != 0) {
                                    r13.close();
                                    if (bufferedReader6 != null) {
                                        bufferedReader6.close();
                                    }
                                } else if (bufferedReader6 != null) {
                                    bufferedReader6.close();
                                }
                                if (z11 != 0) {
                                    z11.destroy();
                                }
                                sb2 = sb2;
                                WaitFor = r12;
                                return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                            } catch (Exception e21) {
                                e = e21;
                                process3 = processExec;
                                sb2 = null;
                                bufferedReader3 = null;
                                obj = dataOutputStream;
                                r12 = -1;
                                bufferedReader5 = bufferedReader3;
                                r13 = obj;
                                z11 = process3;
                                e.printStackTrace();
                                if (r13 != 0) {
                                    r13.close();
                                    if (bufferedReader5 != null) {
                                        bufferedReader5.close();
                                    }
                                } else if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                }
                                if (z11 != 0) {
                                    z11.destroy();
                                }
                                sb2 = sb2;
                                WaitFor = r12;
                                return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                            }
                        } catch (IOException e22) {
                            e = e22;
                            process2 = processExec;
                            sb2 = null;
                            bufferedReader2 = null;
                            obj2 = bufferedReader2;
                            bufferedReader4 = bufferedReader2;
                            process4 = process2;
                            r12 = -1;
                            bufferedReader6 = bufferedReader4;
                            r13 = obj2;
                            z11 = process4;
                            e.printStackTrace();
                            if (r13 != 0) {
                                r13.close();
                                if (bufferedReader6 != null) {
                                    bufferedReader6.close();
                                }
                            } else if (bufferedReader6 != null) {
                                bufferedReader6.close();
                            }
                            if (z11 != 0) {
                                z11.destroy();
                            }
                            sb2 = sb2;
                            WaitFor = r12;
                            return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                        } catch (Exception e23) {
                            e = e23;
                            process = processExec;
                            sb2 = null;
                            bufferedReader = null;
                            obj = bufferedReader;
                            bufferedReader3 = bufferedReader;
                            process3 = process;
                            r12 = -1;
                            bufferedReader5 = bufferedReader3;
                            r13 = obj;
                            z11 = process3;
                            e.printStackTrace();
                            if (r13 != 0) {
                                r13.close();
                                if (bufferedReader5 != null) {
                                    bufferedReader5.close();
                                }
                            } else if (bufferedReader5 != null) {
                                bufferedReader5.close();
                            }
                            if (z11 != 0) {
                                z11.destroy();
                            }
                            sb2 = sb2;
                            WaitFor = r12;
                            return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                        } catch (Throwable th3) {
                            th = th3;
                            r11 = 0;
                            r10 = processExec;
                        }
                    } catch (IOException e24) {
                        e = e24;
                        sb2 = null;
                        process2 = null;
                        bufferedReader2 = null;
                    } catch (Exception e25) {
                        e = e25;
                        sb2 = null;
                        process = null;
                        bufferedReader = null;
                    } catch (Throwable th4) {
                        th = th4;
                        r10 = 0;
                        r11 = 0;
                    }
                    return new a(WaitFor, sb2 != null ? sb2.toString() : null);
                }
            } catch (Throwable th5) {
                th = th5;
                r10 = z11;
                r11 = WaitFor;
                r14 = r13;
            }
        }
        return new a(-1, null);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f90148a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f90149b;

        public a(int i10) {
            this.f90148a = i10;
        }

        public a(int i10, String str) {
            this.f90148a = i10;
            this.f90149b = str;
        }
    }
}
