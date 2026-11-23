package org.hmwebrtc.utils;

import android.os.Environment;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class PathUtils {
    private static final String TAG = "PathUtils";

    public static class Inject {
        private static final String DEBUG_DIR = "hm_rtc_debug";

        public static boolean createConfigFile(String str, String str2) {
            try {
                File file = new File(getDir() + File.separator + str);
                if (!file.exists()) {
                    file.createNewFile();
                }
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, false));
                bufferedWriter.write(str2);
                bufferedWriter.close();
                return true;
            } catch (Exception unused) {
                return false;
            }
        }

        public static boolean deleteConfigFile(String str) {
            File configFile = getConfigFile(str);
            if (configFile == null) {
                return true;
            }
            configFile.delete();
            return true;
        }

        public static File getConfigFile(String str) {
            File file = new File(getDir() + File.separator + str);
            if (file.exists() && file.isFile()) {
                return file;
            }
            return null;
        }

        public static String getConfigFilePath(String str) {
            return getDir() + File.separator + str;
        }

        private static String getDir() {
            try {
                return Environment.getExternalStorageDirectory().getPath() + File.separator + DEBUG_DIR;
            } catch (Exception unused) {
                return "/sdcard/hm_rtc_debug/";
            }
        }

        public static boolean isExistConfigFile(String str) {
            return getConfigFile(str) != null;
        }
    }

    public static boolean createDir(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                return file.isDirectory();
            }
            file.mkdir();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean deleteDir(String str) {
        try {
            File file = new File(str);
            if (file.exists() && !file.isFile()) {
                for (File file2 : file.listFiles()) {
                    deleteFile(file2);
                }
                return file.delete();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean deleteFile(String str) {
        try {
            File file = new File(str);
            if (file.exists() && !file.isDirectory()) {
                return file.delete();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static String readFileByLines(File file) throws Throwable {
        String line = "";
        if (file == null || !file.exists()) {
            return "";
        }
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
                    try {
                        line = bufferedReader2.readLine();
                        bufferedReader2.close();
                        bufferedReader2.close();
                    } catch (IOException e10) {
                        e = e10;
                        bufferedReader = bufferedReader2;
                        e.printStackTrace();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return line;
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused) {
                            }
                        }
                        throw th;
                    }
                } catch (IOException e11) {
                    e = e11;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (IOException unused2) {
        }
        return line;
    }

    public static boolean deleteFile(File file) {
        if (file == null) {
            return false;
        }
        try {
            if (file.exists() && !file.isDirectory()) {
                return file.delete();
            }
        } catch (Exception unused) {
        }
        return false;
    }
}
