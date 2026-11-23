package com.join.android.app.common.db;

import com.byazt.quv.AbsServerManager;
import com.j256.ormlite.android.apptools.OrmLiteConfigUtil;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.table.DatabaseTable;
import com.join.mgps.Util.o0;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class c extends OrmLiteConfigUtil {
    private static boolean classHasAnnotations(Class<?> clazz) {
        while (clazz != null) {
            if (clazz.getAnnotation(DatabaseTable.class) != null) {
                return true;
            }
            try {
                for (Field field : clazz.getDeclaredFields()) {
                    if (field.getAnnotation(DatabaseField.class) != null || field.getAnnotation(ForeignCollectionField.class) != null) {
                        return true;
                    }
                }
                try {
                    clazz = clazz.getSuperclass();
                } catch (Throwable th) {
                    System.err.println("Could not get super class for: " + clazz);
                    System.err.println("     " + th);
                    return false;
                }
            } catch (Throwable th2) {
                System.err.println("Could not load get delcared fields from: " + clazz);
                System.err.println("     " + th2);
            }
        }
        return false;
    }

    private static void findAnnotatedClasses(List<Class<?>> classList, File dir, int level) throws SQLException, IOException {
        for (File file : dir.listFiles()) {
            if (file.isDirectory()) {
                if (level < OrmLiteConfigUtil.maxFindSourceLevel) {
                    findAnnotatedClasses(classList, file, level + 1);
                }
            } else if (file.getName().endsWith(".java")) {
                String packageOfClass = getPackageOfClass(file);
                if (packageOfClass == null) {
                    System.err.println("Could not find package name for: " + file);
                } else {
                    String name = file.getName();
                    try {
                        Class<?> cls = Class.forName(packageOfClass + o0.f49827a + name.substring(0, name.length() - 5));
                        if (classHasAnnotations(cls)) {
                            classList.add(cls);
                        }
                        try {
                            for (Class<?> cls2 : cls.getDeclaredClasses()) {
                                if (classHasAnnotations(cls2)) {
                                    classList.add(cls2);
                                }
                            }
                        } catch (Throwable th) {
                            System.err.println("Could not load inner classes for: " + cls);
                            System.err.println("     " + th);
                        }
                    } catch (Throwable th2) {
                        System.err.println("Could not load class file for: " + file);
                        System.err.println("     " + th2);
                    }
                }
            }
        }
    }

    private static String getPackageOfClass(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
        while (true) {
            try {
                String line = bufferedReader.readLine();
                if (line == null) {
                    bufferedReader.close();
                    return null;
                }
                if (line.contains(AbsServerManager.PACKAGE_QUERY_BINDER)) {
                    String[] strArrSplit = line.split("[ \t;]");
                    if (strArrSplit.length > 1 && strArrSplit[0].equals(AbsServerManager.PACKAGE_QUERY_BINDER)) {
                        String str = strArrSplit[1];
                        bufferedReader.close();
                        return str;
                    }
                }
            } catch (Throwable th) {
                bufferedReader.close();
                throw th;
            }
        }
    }

    public static void main(String[] args) throws SQLException, IOException {
        writeConfigFile("ormlite_config.txt");
    }

    public static void writeConfigFile(String fileName) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, new File("./app/src/main/java/com/github/snowdream/android/app/downloader"), 0);
        findAnnotatedClasses(arrayList, new File("./app/src/main/java/com/join/android/app/common/db"), 0);
        findAnnotatedClasses(arrayList, new File("./app/src/main/java/com/join/mgps/db/tables"), 0);
        writeConfigFile(fileName, (Class<?>[]) arrayList.toArray(new Class[arrayList.size()]));
    }

    public static void writeConfigFile(String fileName, Class<?>[] classes) throws SQLException, IOException {
        File fileFindRawDir = OrmLiteConfigUtil.findRawDir(new File(new File(o0.f49827a), "app/src/main"));
        if (fileFindRawDir == null) {
            System.err.println("Could not find raw directory which is typically in the res directory");
        } else {
            OrmLiteConfigUtil.writeConfigFile(new File(fileFindRawDir, fileName), classes);
        }
    }
}
