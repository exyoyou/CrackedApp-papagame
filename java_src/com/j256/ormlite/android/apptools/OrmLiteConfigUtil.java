package com.j256.ormlite.android.apptools;

import com.byazt.quv.AbsServerManager;
import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.db.SqliteAndroidDatabaseType;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.DatabaseFieldConfig;
import com.j256.ormlite.field.ForeignCollectionField;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import com.j256.ormlite.table.DatabaseTableConfigLoader;
import com.join.mgps.Util.o0;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileFilter;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.lang.reflect.Field;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class OrmLiteConfigUtil {
    protected static final String RAW_DIR_NAME = "raw";
    protected static final String RESOURCE_DIR_NAME = "res";
    protected static int maxFindSourceLevel = 20;
    private static final DatabaseType databaseType = new SqliteAndroidDatabaseType();
    private static final ClassComparator classComparator = new ClassComparator();

    private static class ClassComparator implements Comparator<Class<?>> {
        private ClassComparator() {
        }

        @Override // java.util.Comparator
        public int compare(Class<?> cls, Class<?> cls2) {
            return cls.getName().compareTo(cls2.getName());
        }
    }

    private static boolean classHasAnnotations(Class<?> cls) {
        while (cls != null) {
            if (cls.getAnnotation(DatabaseTable.class) != null) {
                return true;
            }
            try {
                for (Field field : cls.getDeclaredFields()) {
                    if (field.getAnnotation(DatabaseField.class) != null || field.getAnnotation(ForeignCollectionField.class) != null) {
                        return true;
                    }
                }
                try {
                    cls = cls.getSuperclass();
                } catch (Throwable th) {
                    System.err.println("Could not get super class for: " + cls);
                    System.err.println("     " + th);
                    return false;
                }
            } catch (Throwable th2) {
                System.err.println("Could not load get delcared fields from: " + cls);
                System.err.println("     " + th2);
            }
        }
        return false;
    }

    private static void findAnnotatedClasses(List<Class<?>> list, File file, int i10) throws SQLException, IOException {
        for (File file2 : file.listFiles()) {
            if (file2.isDirectory()) {
                if (i10 < maxFindSourceLevel) {
                    findAnnotatedClasses(list, file2, i10 + 1);
                }
            } else if (file2.getName().endsWith(".java")) {
                String packageOfClass = getPackageOfClass(file2);
                if (packageOfClass == null) {
                    System.err.println("Could not find package name for: " + file2);
                } else {
                    String name = file2.getName();
                    try {
                        Class<?> cls = Class.forName(packageOfClass + o0.f49827a + name.substring(0, name.length() - 5));
                        if (classHasAnnotations(cls)) {
                            list.add(cls);
                        }
                        try {
                            for (Class<?> cls2 : cls.getDeclaredClasses()) {
                                if (classHasAnnotations(cls2)) {
                                    list.add(cls2);
                                }
                            }
                        } catch (Throwable th) {
                            System.err.println("Could not load inner classes for: " + cls);
                            System.err.println("     " + th);
                        }
                    } catch (Throwable th2) {
                        System.err.println("Could not load class file for: " + file2);
                        System.err.println("     " + th2);
                    }
                }
            }
        }
    }

    protected static File findRawDir(File file) {
        for (int i10 = 0; file != null && i10 < 20; i10++) {
            File fileFindResRawDir = findResRawDir(file);
            if (fileFindResRawDir != null) {
                return fileFindResRawDir;
            }
            file = file.getParentFile();
        }
        return null;
    }

    private static File findResRawDir(File file) {
        for (File file2 : file.listFiles()) {
            if (file2.getName().equals("res") && file2.isDirectory()) {
                File[] fileArrListFiles = file2.listFiles(new FileFilter() { // from class: com.j256.ormlite.android.apptools.OrmLiteConfigUtil.1
                    @Override // java.io.FileFilter
                    public boolean accept(File file3) {
                        return file3.getName().equals(OrmLiteConfigUtil.RAW_DIR_NAME) && file3.isDirectory();
                    }
                });
                if (fileArrListFiles.length == 1) {
                    return fileArrListFiles[0];
                }
            }
        }
        return null;
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

    public static void main(String[] strArr) throws Exception {
        int i10 = 0;
        boolean z10 = false;
        while (i10 < strArr.length && strArr[i10].equals("-s")) {
            i10++;
            z10 = true;
        }
        if (i10 != strArr.length - 1) {
            throw new IllegalArgumentException("Usage: OrmLiteConfigUtil [-s] config-file-name");
        }
        writeConfigFile(strArr[i10], z10);
    }

    public static void writeConfigFile(String str) throws SQLException, IOException {
        writeConfigFile(str, false);
    }

    private static void writeConfigForTable(BufferedWriter bufferedWriter, Class<?> cls, boolean z10) throws SQLException, IOException {
        String strExtractTableName = DatabaseTableConfig.extractTableName(databaseType, cls);
        ArrayList arrayList = new ArrayList();
        for (Class<?> superclass = cls; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                for (Field field : superclass.getDeclaredFields()) {
                    DatabaseFieldConfig databaseFieldConfigFromField = DatabaseFieldConfig.fromField(databaseType, strExtractTableName, field);
                    if (databaseFieldConfigFromField != null) {
                        arrayList.add(databaseFieldConfigFromField);
                    }
                }
            } catch (Error e10) {
                System.err.println("Skipping " + cls + " because we got an error finding its definition: " + e10.getMessage());
                return;
            }
        }
        if (arrayList.isEmpty()) {
            System.out.println("Skipping " + cls + " because no annotated fields found");
            return;
        }
        DatabaseTableConfigLoader.write(bufferedWriter, new DatabaseTableConfig(cls, strExtractTableName, arrayList));
        bufferedWriter.append("#################################");
        bufferedWriter.newLine();
        System.out.println("Wrote config for " + cls);
    }

    private static void writeHeader(BufferedWriter bufferedWriter) throws IOException {
        bufferedWriter.append('#');
        bufferedWriter.newLine();
        bufferedWriter.append("# generated on ").append((CharSequence) new SimpleDateFormat("yyyy/MM/dd hh:mm:ss").format(new Date()));
        bufferedWriter.newLine();
        bufferedWriter.append('#');
        bufferedWriter.newLine();
    }

    public static void writeConfigFile(String str, boolean z10) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, new File(o0.f49827a), 0);
        writeConfigFile(str, (Class<?>[]) arrayList.toArray(new Class[arrayList.size()]), z10);
    }

    public static void writeConfigFile(String str, Class<?>[] clsArr) throws SQLException, IOException {
        writeConfigFile(str, clsArr, false);
    }

    public static void writeConfigFile(String str, Class<?>[] clsArr, boolean z10) throws SQLException, IOException {
        File fileFindRawDir = findRawDir(new File(o0.f49827a));
        if (fileFindRawDir == null) {
            System.err.println("Could not find raw directory which is typically in the res directory");
        } else {
            writeConfigFile(new File(fileFindRawDir, str), clsArr, z10);
        }
    }

    public static void writeConfigFile(File file) throws SQLException, IOException {
        writeConfigFile(file, false);
    }

    public static void writeConfigFile(File file, boolean z10) throws SQLException, IOException {
        writeConfigFile(file, new File(o0.f49827a), z10);
    }

    public static void writeConfigFile(File file, File file2) throws SQLException, IOException {
        writeConfigFile(file, file2, false);
    }

    public static void writeConfigFile(File file, File file2, boolean z10) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, file2, 0);
        writeConfigFile(file, (Class<?>[]) arrayList.toArray(new Class[arrayList.size()]), z10);
    }

    public static void writeConfigFile(File file, Class<?>[] clsArr) throws SQLException, IOException {
        writeConfigFile(file, clsArr, false);
    }

    public static void writeConfigFile(File file, Class<?>[] clsArr, boolean z10) throws SQLException, IOException {
        System.out.println("Writing configurations to " + file.getAbsolutePath());
        writeConfigFile(new FileOutputStream(file), clsArr, z10);
    }

    public static void writeConfigFile(OutputStream outputStream, File file) throws SQLException, IOException {
        writeConfigFile(outputStream, file, false);
    }

    public static void writeConfigFile(OutputStream outputStream, File file, boolean z10) throws SQLException, IOException {
        ArrayList arrayList = new ArrayList();
        findAnnotatedClasses(arrayList, file, 0);
        writeConfigFile(outputStream, (Class<?>[]) arrayList.toArray(new Class[arrayList.size()]), z10);
    }

    public static void writeConfigFile(OutputStream outputStream, Class<?>[] clsArr) throws SQLException, IOException {
        writeConfigFile(outputStream, clsArr, false);
    }

    public static void writeConfigFile(OutputStream outputStream, Class<?>[] clsArr, boolean z10) throws SQLException, IOException {
        if (z10) {
            Class<?>[] clsArr2 = new Class[clsArr.length];
            System.arraycopy(clsArr, 0, clsArr2, 0, clsArr.length);
            Arrays.sort(clsArr2, classComparator);
            clsArr = clsArr2;
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 4096);
        try {
            writeHeader(bufferedWriter);
            for (Class<?> cls : clsArr) {
                writeConfigForTable(bufferedWriter, cls, z10);
            }
            System.out.println("Done.");
        } finally {
            bufferedWriter.close();
        }
    }
}
