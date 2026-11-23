package org.hmwebrtc.utils;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import net.lingala.zip4j.util.e;
import org.hmwebrtc.ContextUtils;
import org.hmwebrtc.Logging;

/* JADX INFO: loaded from: classes10.dex */
public class FiledStringParser {
    private static final String TAG = "FiledStringParser";
    private Map<String, String> mFileds;

    public FiledStringParser(File file, String str) throws Throwable {
        String fileByLines = readFileByLines(file);
        if (TextUtils.isEmpty(fileByLines)) {
            str = str == null ? "" : str;
            Logging.e(TAG, "FiledStringParser file content is null. default value:" + str);
            fileByLines = str;
        } else {
            Logging.e(TAG, "FiledStringParser file content:" + fileByLines);
        }
        this.mFileds = new HashMap();
        parseConfig(fileByLines);
    }

    public static boolean createConfigFile(String str, String str2) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ContextUtils.getApplicationContext().getExternalFilesDir(null).getPath());
            String str3 = File.separator;
            sb2.append(str3);
            sb2.append("hm_rtc_debug");
            File file = new File(sb2.toString() + str3 + str);
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

    public static boolean deleteConfigFile(String str) {
        File configFile = getConfigFile(str);
        if (configFile == null) {
            return true;
        }
        configFile.delete();
        return true;
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

    public static File getConfigFile(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ContextUtils.getApplicationContext().getExternalFilesDir(null).getPath());
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append("hm_rtc_debug");
            File file = new File(sb2.toString() + str2 + str);
            if (file.exists() && file.isFile()) {
                return file;
            }
            return null;
        } catch (Exception e10) {
            Logging.e(TAG, "getConfigFile error:" + e10.toString());
            return null;
        }
    }

    public static String getConfigFilePath(String str) {
        try {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(ContextUtils.getApplicationContext().getExternalFilesDir(null).getPath());
            String str2 = File.separator;
            sb2.append(str2);
            sb2.append("hm_rtc_debug");
            return sb2.toString() + str2 + str;
        } catch (Exception e10) {
            Logging.e(TAG, "ggetConfigFilePath error:" + e10.toString());
            return null;
        }
    }

    public static boolean isExistConfigFile(String str) {
        return getConfigFile(str) != null;
    }

    private void parseConfig(String str) {
        String[] strArrSplit;
        if (str == null || (strArrSplit = str.split(",")) == null || strArrSplit.length == 0) {
            return;
        }
        for (String str2 : strArrSplit) {
            String[] strArrSplit2 = str2.split(":");
            if (strArrSplit2.length == 2) {
                this.mFileds.put(strArrSplit2[0], strArrSplit2[1]);
            }
        }
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

    public boolean getBoolValue(String str, boolean z10) {
        String str2;
        if (this.mFileds.containsKey(str) && (str2 = this.mFileds.get(str)) != null) {
            try {
                if (str2.equalsIgnoreCase("true")) {
                    return true;
                }
                return (str2.equalsIgnoreCase("false") || Integer.parseInt(str2) == 0) ? false : true;
            } catch (NumberFormatException unused) {
            }
        }
        return z10;
    }

    public int getIntValue(String str, int i10) {
        String str2;
        if (this.mFileds.containsKey(str) && (str2 = this.mFileds.get(str)) != null) {
            try {
                return Integer.parseInt(str2);
            } catch (Exception unused) {
            }
        }
        return i10;
    }

    public long getLongValue(String str, long j10) {
        String str2;
        if (this.mFileds.containsKey(str) && (str2 = this.mFileds.get(str)) != null) {
            try {
                return Long.parseLong(str2);
            } catch (Exception unused) {
            }
        }
        return j10;
    }

    public String getPathValue(String str, String str2) {
        String stringValue = getStringValue(str, str2);
        return stringValue != null ? stringValue.replace("\\", e.F0) : stringValue;
    }

    public String getStringValue(String str, String str2) {
        String str3;
        return (!this.mFileds.containsKey(str) || (str3 = this.mFileds.get(str)) == null) ? str2 : str3;
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

    public FiledStringParser(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("FiledStringParser:");
        sb2.append(str == null ? "null" : str);
        Logging.e(TAG, sb2.toString());
        this.mFileds = new HashMap();
        parseConfig(str);
    }
}
