package com.android.dx;

import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
class AppDataDirGuesser {
    public static final int PER_USER_RANGE = 100000;

    AppDataDirGuesser() {
    }

    private String getPathFromThisClassLoader(ClassLoader classLoader, Class<?> cls) {
        try {
            Field declaredField = cls.getDeclaredField("path");
            declaredField.setAccessible(true);
            return (String) declaredField.get(classLoader);
        } catch (ClassCastException | IllegalAccessException | NoSuchFieldException unused) {
            return processClassLoaderString(classLoader.toString());
        }
    }

    private File getWriteableDirectory(String str) {
        File file = new File(str);
        if (isWriteableDirectory(file)) {
            return file;
        }
        return null;
    }

    private ClassLoader guessSuitableClassLoader() {
        return AppDataDirGuesser.class.getClassLoader();
    }

    static String processClassLoaderString(String str) {
        return str.contains("DexPathList") ? processClassLoaderString43OrLater(str) : processClassLoaderString42OrEarlier(str);
    }

    private static String processClassLoaderString42OrEarlier(String str) {
        int iLastIndexOf = str.lastIndexOf(91);
        if (iLastIndexOf != -1) {
            str = str.substring(iLastIndexOf + 1);
        }
        int iIndexOf = str.indexOf(93);
        return iIndexOf == -1 ? str : str.substring(0, iIndexOf);
    }

    private static String processClassLoaderString43OrLater(String str) {
        int iIndexOf = str.indexOf("DexPathList") + 11;
        if (str.length() <= iIndexOf + 4) {
            return str;
        }
        String strSubstring = str.substring(iIndexOf);
        int iIndexOf2 = strSubstring.indexOf(93);
        if (strSubstring.charAt(0) != '[' || strSubstring.charAt(1) != '[' || iIndexOf2 < 0) {
            return str;
        }
        String[] strArrSplit = strSubstring.substring(2, iIndexOf2).split(",");
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            int iIndexOf3 = strArrSplit[i10].indexOf(34);
            int iLastIndexOf = strArrSplit[i10].lastIndexOf(34);
            if (iIndexOf3 > 0 && iIndexOf3 < iLastIndexOf) {
                strArrSplit[i10] = strArrSplit[i10].substring(iIndexOf3 + 1, iLastIndexOf);
            }
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str2 : strArrSplit) {
            if (sb2.length() > 0) {
                sb2.append(':');
            }
            sb2.append(str2);
        }
        return sb2.toString();
    }

    static String[] splitPathList(String str) {
        if (str.startsWith("dexPath=")) {
            int iIndexOf = str.indexOf(44);
            str = iIndexOf == -1 ? str.substring(8) : str.substring(8, iIndexOf);
        }
        return str.split(":");
    }

    boolean fileOrDirExists(File file) {
        return file.exists();
    }

    Integer getProcessUid() {
        try {
            return (Integer) Class.forName("android.os.Process").getMethod("myUid", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public File guess() {
        try {
            ClassLoader classLoaderGuessSuitableClassLoader = guessSuitableClassLoader();
            Class<?> cls = Class.forName("dalvik.system.PathClassLoader");
            cls.cast(classLoaderGuessSuitableClassLoader);
            File[] fileArrGuessPath = guessPath(getPathFromThisClassLoader(classLoaderGuessSuitableClassLoader, cls));
            if (fileArrGuessPath.length > 0) {
                return fileArrGuessPath[0];
            }
            return null;
        } catch (ClassCastException | ClassNotFoundException unused) {
            return null;
        }
    }

    File[] guessPath(String str) {
        int iLastIndexOf;
        ArrayList arrayList = new ArrayList();
        for (String str2 : splitPathList(str)) {
            if (str2.startsWith("/data/app/") && (iLastIndexOf = str2.lastIndexOf(".apk")) == str2.length() - 4) {
                int iIndexOf = str2.indexOf("-");
                if (iIndexOf != -1) {
                    iLastIndexOf = iIndexOf;
                }
                String strSubstring = str2.substring(10, iLastIndexOf);
                File writeableDirectory = getWriteableDirectory("/data/data/" + strSubstring);
                if (writeableDirectory == null) {
                    writeableDirectory = guessUserDataDirectory(strSubstring);
                }
                if (writeableDirectory != null) {
                    File file = new File(writeableDirectory, "cache");
                    if ((fileOrDirExists(file) || file.mkdir()) && isWriteableDirectory(file)) {
                        arrayList.add(file);
                    }
                }
            }
        }
        return (File[]) arrayList.toArray(new File[arrayList.size()]);
    }

    File guessUserDataDirectory(String str) {
        Integer processUid = getProcessUid();
        if (processUid == null) {
            return null;
        }
        return getWriteableDirectory(String.format("/data/user/%d/%s", Integer.valueOf(processUid.intValue() / 100000), str));
    }

    boolean isWriteableDirectory(File file) {
        return file.isDirectory() && file.canWrite();
    }
}
