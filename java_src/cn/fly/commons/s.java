package cn.fly.commons;

import android.os.Process;
import cn.fly.tools.FlyLog;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.Socket;

/* JADX INFO: loaded from: classes7.dex */
public class s {
    static boolean a() {
        return b() || c() || d();
    }

    static boolean b() {
        File[] fileArrListFiles;
        String[] strArr = {m.a("028nTfe-fkfni+fm^efink(fh%ln4ghflfkfeCf@jmhkChMflff%h*fl"), m.a("031n1fe fkfni:fm1efink+fhLlnMflHhWfnghflfkfe6fZfnhkZhBflff0h'fl"), m.a("030n4feSfkfniFfm5efinkQfhZln;ghflfkfeGf[jm$fTgl:hgk1fnhkfm"), m.a("034nJfe:fkfni+fm:efinkLfh<lniSfkhhghflfkfeJfEjmgl$f>fegl_hk fnhkfm")};
        for (int i10 = 0; i10 < 4; i10++) {
            if (new File(strArr[i10]).exists()) {
                return true;
            }
        }
        try {
            File file = new File(m.a("015nCfe^fkfni3fmGefink'fhIl"));
            if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
                return false;
            }
            for (File file2 : fileArrListFiles) {
                if (file2.getName().startsWith(m.a("012YghflfkfeJfPjmglNf;fegl6hk"))) {
                    return true;
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return false;
    }

    static boolean c() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        FileInputStream fileInputStream;
        String line;
        BufferedReader bufferedReader2 = null;
        try {
            File file = new File(m.a("006nlIflfmAen") + Process.myPid() + m.a("005nQfhZfl4hk"));
            if (!file.exists() || file.length() <= 0) {
                fileInputStream = null;
            } else {
                fileInputStream = new FileInputStream(file);
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
                    do {
                        try {
                            line = bufferedReader.readLine();
                            if (line == null) {
                                bufferedReader2 = bufferedReader;
                            }
                        } catch (Exception unused) {
                            bufferedReader2 = bufferedReader;
                            C1293r.a(bufferedReader2, fileInputStream);
                            return false;
                        } catch (Throwable th2) {
                            th = th2;
                            C1293r.a(bufferedReader, fileInputStream);
                            throw th;
                        }
                    } while (!line.contains(m.a("005UghflfkfeYf")));
                    C1293r.a(bufferedReader, fileInputStream);
                    return true;
                } catch (Exception unused2) {
                } catch (Throwable th3) {
                    bufferedReader = null;
                    th = th3;
                }
            }
            C1293r.a(bufferedReader2, fileInputStream);
            return false;
        } catch (Exception unused3) {
            fileInputStream = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            fileInputStream = null;
        }
    }

    static boolean d() throws Throwable {
        Socket socket = null;
        try {
            Socket socket2 = new Socket(m.a("009i?fmHefij]fmhk1k"), new int[]{27042, 27043}[0]);
            try {
                boolean zIsConnected = socket2.isConnected();
                try {
                    socket2.close();
                } catch (Exception unused) {
                }
                return zIsConnected;
            } catch (Exception unused2) {
                socket = socket2;
                if (socket != null) {
                    try {
                        socket.close();
                    } catch (Exception unused3) {
                    }
                }
                return false;
            } catch (Throwable th) {
                th = th;
                socket = socket2;
                if (socket != null) {
                    try {
                        socket.close();
                    } catch (Exception unused4) {
                    }
                }
                throw th;
            }
        } catch (Exception unused5) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
