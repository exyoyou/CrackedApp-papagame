package com.join.mgps.Util;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.join.mgps.dto.RomArchived;
import com.join.mgps.enums.ConstantIntEnum;
import com.kuaishou.weapon.p0.bg;
import com.papa91.arc.util.StoreUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class o3 {
    public static String A(String path) {
        try {
            FileInputStream fileInputStream = new FileInputStream(path);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int i10 = fileInputStream.read(bArr);
                if (i10 == -1) {
                    return new String(byteArrayOutputStream.toByteArray());
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static String B(String filePath) throws IOException {
        StringBuffer stringBuffer = new StringBuffer();
        File file = new File(filePath);
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                stringBuffer.append(line);
            }
            fileInputStream.close();
        }
        return stringBuffer.toString();
    }

    public static void D(File file, String content) {
        if (file == null || file.getParentFile() == null || TextUtils.isEmpty(content)) {
            return;
        }
        try {
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(content.getBytes());
            fileOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void E(String fileName, String filepath, String content) throws IOException {
        if (fileName == null || content == null || TextUtils.isEmpty(filepath) || ContextCompat.checkSelfPermission(MApplication.f3182z, com.kuaishou.weapon.p0.g.f74786j) != 0) {
            return;
        }
        File file = new File(filepath, fileName);
        if (file.exists()) {
            delete(file);
            file.createNewFile();
        } else {
            File file2 = new File(filepath);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            file.createNewFile();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        fileOutputStream.write(content.getBytes());
        fileOutputStream.close();
    }

    public static boolean a() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            return true;
        }
        MApplication mApplication = MApplication.f3182z;
        if (mApplication == null) {
            return false;
        }
        if (i10 < 30 || mApplication.getApplicationInfo().targetSdkVersion < 30) {
            return ContextCompat.checkSelfPermission(mApplication, com.kuaishou.weapon.p0.g.f74785i) == 0;
        }
        return Environment.isExternalStorageManager();
    }

    public static boolean b() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            return true;
        }
        MApplication mApplication = MApplication.f3182z;
        if (mApplication == null) {
            return false;
        }
        return (i10 >= 30 && mApplication.getApplicationInfo().targetSdkVersion >= 30 && Environment.isExternalStorageManager()) || ContextCompat.checkSelfPermission(mApplication, com.kuaishou.weapon.p0.g.f74786j) == 0;
    }

    public static void c(String sourceDir, String targetDir) throws IOException {
        new File(targetDir).mkdirs();
        File[] fileArrListFiles = new File(sourceDir).listFiles();
        for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
            if (fileArrListFiles[i10].isFile()) {
                f(fileArrListFiles[i10], new File(new File(targetDir).getAbsolutePath() + File.separator + fileArrListFiles[i10].getName()));
            }
            if (fileArrListFiles[i10].isDirectory()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sourceDir);
                String str = File.separator;
                sb2.append(str);
                sb2.append(fileArrListFiles[i10].getName());
                c(sb2.toString(), new File(targetDir).getAbsolutePath() + str + fileArrListFiles[i10].getName());
            }
        }
    }

    public static void d(String sourceDir, String targetDir, String packageName) throws IOException {
        new File(targetDir).mkdirs();
        File[] fileArrListFiles = new File(sourceDir).listFiles();
        for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
            if (fileArrListFiles[i10].isFile()) {
                e(fileArrListFiles[i10], new File(new File(targetDir).getAbsolutePath() + File.separator + fileArrListFiles[i10].getName()), packageName);
            }
            if (fileArrListFiles[i10].isDirectory()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(sourceDir);
                String str = File.separator;
                sb2.append(str);
                sb2.append(fileArrListFiles[i10].getName());
                d(sb2.toString(), new File(targetDir).getAbsolutePath() + str + fileArrListFiles[i10].getName(), packageName);
            }
        }
    }

    public static void delete(File file) {
        if (file.isFile()) {
            File file2 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
            file.renameTo(file2);
            try {
                file2.delete();
                return;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                try {
                    File file3 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
                    file.renameTo(file3);
                    file3.delete();
                    return;
                } catch (Exception e11) {
                    e11.printStackTrace();
                    return;
                }
            }
            for (File file4 : fileArrListFiles) {
                delete(file4);
            }
            File file5 = new File(file.getParent() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis());
            file.renameTo(file5);
            try {
                file5.delete();
            } catch (Exception e12) {
                e12.printStackTrace();
            }
        }
    }

    private static void e(File sourcefile, File targetFile, String packageName) throws IOException {
        String path = sourcefile.getPath();
        if (path.startsWith(o0.f49827a)) {
            return;
        }
        if (t2.i(packageName)) {
            if (path.endsWith(packageName + ".zip")) {
                return;
            }
            if (path.endsWith(packageName + ".iso")) {
                return;
            }
            if (path.endsWith(packageName + ".ISO")) {
                return;
            }
            if (path.endsWith(packageName + ".bin")) {
                return;
            }
            if (path.endsWith(packageName + ".cue")) {
                return;
            }
            if (path.endsWith(packageName + ".pbp")) {
                return;
            }
            if (path.endsWith(packageName + ".img")) {
                return;
            }
            if (path.endsWith(packageName + ".mdf")) {
                return;
            }
            if (path.endsWith(packageName + ".wsc")) {
                return;
            }
            if (path.endsWith(packageName + ".ws")) {
                return;
            }
            if (path.endsWith(packageName + ".nds")) {
                return;
            }
            if (path.endsWith(packageName + ".z64")) {
                return;
            }
            if (path.endsWith(packageName + ".n64")) {
                return;
            }
        }
        if (sourcefile.length() > 20971520) {
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(sourcefile);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        FileOutputStream fileOutputStream = new FileOutputStream(targetFile);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        byte[] bArr = new byte[5120];
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 == -1) {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                fileOutputStream.close();
                fileInputStream.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, i10);
        }
    }

    private static void f(File sourcefile, File targetFile) throws IOException {
        sourcefile.getPath();
        FileInputStream fileInputStream = new FileInputStream(sourcefile);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
        FileOutputStream fileOutputStream = new FileOutputStream(targetFile);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream);
        byte[] bArr = new byte[5120];
        while (true) {
            int i10 = bufferedInputStream.read(bArr);
            if (i10 == -1) {
                bufferedOutputStream.flush();
                bufferedInputStream.close();
                bufferedOutputStream.close();
                fileOutputStream.close();
                fileInputStream.close();
                return;
            }
            bufferedOutputStream.write(bArr, 0, i10);
        }
    }

    private static void g(String strSrc, String strDes) {
        File file = new File(strSrc);
        if (file.isDirectory()) {
            File[] fileArrListFiles = file.listFiles();
            for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
                String str = strDes + net.lingala.zip4j.util.e.F0 + fileArrListFiles[i10].getName();
                long jLastModified = fileArrListFiles[i10].lastModified();
                File file2 = new File(str);
                fileArrListFiles[i10].renameTo(file2);
                file2.setLastModified(jLastModified);
            }
        }
    }

    public static void h(String romPath, String packageName, int romeType) {
        try {
            File file = new File(romPath);
            String parent = file.getParent();
            new ArrayList();
            String emuRoot = StoreUtils.getEmuRoot(MApplication.n());
            String strSubstring = file.getName().substring(0, file.getName().lastIndexOf(o0.f49827a));
            String str = emuRoot + net.lingala.zip4j.util.e.F0 + UtilsMy.d2(romeType) + File.separator + strSubstring;
            File file2 = new File(str);
            if (!file2.exists()) {
                file2.mkdirs();
            }
            File[] fileArrListFiles = new File(parent).listFiles();
            for (int i10 = 0; i10 < fileArrListFiles.length; i10++) {
                if (fileArrListFiles[i10].isFile()) {
                    e(fileArrListFiles[i10], new File(str + File.separator + fileArrListFiles[i10].getName()), packageName);
                }
                if (fileArrListFiles[i10].isDirectory()) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(parent);
                    String str2 = File.separator;
                    sb2.append(str2);
                    sb2.append(fileArrListFiles[i10].getName());
                    d(sb2.toString(), str + str2 + fileArrListFiles[i10].getName(), packageName);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static synchronized boolean i(String fileNewPath) {
        boolean z10;
        File file = new File(fileNewPath);
        File file2 = new File(file.getParent());
        z10 = false;
        try {
            if ((file2.exists() || file2.mkdirs()) && (file.exists() || file.createNewFile())) {
                z10 = true;
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        return z10;
    }

    private static File j(Context context, InputStream inputStream, String fileName) throws IOException {
        if (inputStream == null) {
            return null;
        }
        byte[] bArr = new byte[8192];
        File file = new File(context.getCacheDir(), fileName);
        if (file.exists()) {
            file.delete();
        }
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                fileOutputStream.flush();
                try {
                    fileOutputStream.close();
                    return file;
                } catch (IOException e10) {
                    e10.printStackTrace();
                    return file;
                }
            }
            fileOutputStream.write(bArr, 0, i10);
        }
    }

    private static boolean k(String path) {
        if (path.endsWith("hookj") || path.endsWith("nbbatman") || path.endsWith("uccops") || path.endsWith("inhunt") || path.endsWith("ssoldier")) {
            return true;
        }
        return new File(path.substring(0, path.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1) + "fba_v2.cfg").exists();
    }

    private static String l(String path) {
        String[] strArr = {"ftsc3", "lkrexe2"};
        if (Build.VERSION.SDK_INT >= 23) {
            return "vba";
        }
        StringBuilder sb2 = new StringBuilder();
        String str = File.separator;
        sb2.append(str);
        sb2.append("kdygmyhbs3");
        if (path.endsWith(sb2.toString())) {
            return "vba";
        }
        if (path.substring(path.lastIndexOf(str) + 1).startsWith("kdyg")) {
            return "";
        }
        for (int i10 = 0; i10 < 2; i10++) {
            if (path.endsWith(File.separator + strArr[i10])) {
                return "";
            }
        }
        Date date = null;
        Date date2 = null;
        for (int i11 = 0; i11 <= 100; i11++) {
            File file = new File(path + o0.f49827a + i11);
            if (file.exists()) {
                Date date3 = new Date(file.lastModified());
                if (date2 == null || date3.after(date2)) {
                    date2 = date3;
                }
            }
        }
        for (int i12 = 0; i12 <= 100; i12++) {
            File file2 = new File(path + "vba." + i12);
            if (file2.exists()) {
                Date date4 = new Date(file2.lastModified());
                if (date == null || date4.after(date)) {
                    date = date4;
                }
            }
        }
        if (date2 == null || date == null) {
            return date2 == null ? "vba" : "";
        }
        return date2.after(date) ? "" : "vba";
    }

    /* JADX WARN: Code duplicated, block: B:68:0x020a  */
    public static List<RomArchived> m(String plugNumber, String gameZipPath) {
        long length;
        ArrayList arrayList = new ArrayList();
        if (t2.h(gameZipPath)) {
            return arrayList;
        }
        String strM4 = UtilsMy.M4(gameZipPath);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ConstantIntEnum.MD.value());
        sb2.append("");
        boolean zW = sb2.toString().equals(plugNumber) ? w(strM4) : false;
        if ((ConstantIntEnum.FBA.value() + "").equals(plugNumber)) {
            zW = k(strM4);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(ConstantIntEnum.GBA.value());
        sb3.append("");
        boolean z10 = sb3.toString().equals(plugNumber) ? !t2.h(l(strM4)) : false;
        String strD2 = UtilsMy.d2(Integer.parseInt(plugNumber));
        File externalStorageDirectory = Environment.getExternalStorageDirectory();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(externalStorageDirectory.getAbsolutePath());
        String str = File.separator;
        sb4.append(str);
        sb4.append("papa91");
        sb4.append(str);
        sb4.append(strD2);
        sb4.append(str);
        String string = sb4.toString();
        String strSubstring = strM4.substring(strM4.lastIndexOf(47) + 1, strM4.length());
        File file = new File(string + strSubstring);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str2 = new String(string + strSubstring + str + strSubstring);
        for (File file2 : file.listFiles()) {
            String name = file2.getName();
            StringBuilder sb5 = new StringBuilder();
            sb5.append(ConstantIntEnum.GBA.value());
            sb5.append("");
            boolean zMatches = sb5.toString().equals(plugNumber) ? Pattern.compile("save.*dat").matcher(name).matches() : false;
            if (name.endsWith(".fs") || name.endsWith(".sav") || name.endsWith(".dsv") || name.endsWith(".brm") || name.endsWith(".srm") || name.endsWith(".eep") || zMatches) {
                RomArchived romArchived = new RomArchived();
                romArchived.setArchivedPath(file2.getAbsolutePath());
                if (!TextUtils.isEmpty(romArchived.getArchivedPath())) {
                    File file3 = new File(romArchived.getArchivedPath());
                    if (file3.exists()) {
                        romArchived.setSize(file3.length());
                        romArchived.setMd5(i1.c(file3));
                        romArchived.setFileName(file3.getName());
                    }
                }
                arrayList.add(romArchived);
            }
        }
        String strX = x(str2, z10, zW);
        if (TextUtils.isEmpty(strX)) {
            return arrayList;
        }
        for (String str3 : strX.split(";")) {
            String[] strArrSplit = str3.split(",");
            RomArchived romArchived2 = new RomArchived();
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                try {
                    if (i10 == 0) {
                        romArchived2.setArchivedPath(strArrSplit[0]);
                    }
                    if (i10 == 1) {
                        romArchived2.setArchivedImagePath(strArrSplit[1]);
                    }
                    if (i10 == 2) {
                        romArchived2.setArchivedTime(strArrSplit[2]);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(romArchived2.getArchivedPath())) {
                length = 0;
            } else {
                File file4 = new File(romArchived2.getArchivedPath());
                if (file4.exists()) {
                    length = file4.length();
                    romArchived2.setFileName(file4.getName());
                    romArchived2.setMd5(i1.c(file4));
                } else {
                    length = 0;
                }
            }
            if (!TextUtils.isEmpty(romArchived2.getArchivedImagePath())) {
                File file5 = new File(romArchived2.getArchivedImagePath());
                if (file5.exists()) {
                    length += file5.length();
                }
            }
            romArchived2.setSize(length);
            arrayList.add(romArchived2);
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0161  */
    public static List<RomArchived> n(String plugNumber, String gameZipPath) {
        long length;
        ArrayList arrayList = new ArrayList();
        if (t2.h(gameZipPath)) {
            return arrayList;
        }
        String strM4 = UtilsMy.M4(gameZipPath);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(ConstantIntEnum.MD.value());
        sb2.append("");
        boolean zW = sb2.toString().equals(plugNumber) ? w(strM4) : false;
        if ((ConstantIntEnum.FBA.value() + "").equals(plugNumber)) {
            zW = k(strM4);
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append(ConstantIntEnum.GBA.value());
        sb3.append("");
        boolean z10 = sb3.toString().equals(plugNumber) ? !t2.h(l(strM4)) : false;
        String strD2 = UtilsMy.d2(Integer.parseInt(plugNumber));
        File file = new File(z.f50164c);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(file.getAbsolutePath());
        String str = File.separator;
        sb4.append(str);
        sb4.append("papa91");
        sb4.append(str);
        sb4.append(strD2);
        sb4.append(str);
        String string = sb4.toString();
        String strSubstring = strM4.substring(strM4.lastIndexOf(47) + 1, strM4.length());
        File file2 = new File(string + strSubstring);
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String strY = y(new String(string + strSubstring + str + strSubstring), z10, zW);
        if (TextUtils.isEmpty(strY)) {
            return arrayList;
        }
        for (String str2 : strY.split(";")) {
            String[] strArrSplit = str2.split(",");
            RomArchived romArchived = new RomArchived();
            for (int i10 = 0; i10 < strArrSplit.length; i10++) {
                try {
                    if (i10 == 0) {
                        romArchived.setArchivedPath(strArrSplit[0]);
                    }
                    if (i10 == 1) {
                        romArchived.setArchivedImagePath(strArrSplit[1]);
                    }
                    if (i10 == 2) {
                        romArchived.setArchivedTime(strArrSplit[2]);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (TextUtils.isEmpty(romArchived.getArchivedPath())) {
                length = 0;
            } else {
                File file3 = new File(romArchived.getArchivedPath());
                if (file3.exists()) {
                    length = file3.length();
                    romArchived.setFileName(file3.getName());
                    romArchived.setMd5(i1.c(file3));
                } else {
                    length = 0;
                }
            }
            if (!TextUtils.isEmpty(romArchived.getArchivedImagePath())) {
                File file4 = new File(romArchived.getArchivedImagePath());
                if (file4.exists()) {
                    length += file4.length();
                }
            }
            romArchived.setSize(length);
            arrayList.add(romArchived);
        }
        return arrayList;
    }

    private static File o(Uri contentUri, Context context) throws Throwable {
        String strQ;
        if (contentUri == null) {
            return null;
        }
        String[] strArr = {"_data", "_display_name"};
        Cursor cursorQuery = context.getContentResolver().query(contentUri, strArr, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        cursorQuery.moveToFirst();
        try {
            strQ = cursorQuery.getString(cursorQuery.getColumnIndex(strArr[0]));
        } catch (Exception unused) {
            strQ = null;
        }
        String string = cursorQuery.getString(cursorQuery.getColumnIndex(strArr[1]));
        cursorQuery.close();
        File file = t2.h(strQ) ? null : new File(strQ);
        if (file == null || !file.exists() || file.length() <= 0 || TextUtils.isEmpty(strQ)) {
            strQ = q(context, contentUri, string);
        }
        return !TextUtils.isEmpty(strQ) ? new File(strQ) : file;
    }

    public static File p(Uri uri, Context context) {
        if (uri == null) {
            return null;
        }
        String scheme = uri.getScheme();
        scheme.hashCode();
        if (scheme.equals("file")) {
            return new File(uri.getPath());
        }
        if (scheme.equals("content")) {
            return o(uri, context);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0019 A[EXC_TOP_SPLITTER, PHI: r1 r3
      0x0019: PHI (r1v3 java.lang.String) = (r1v10 java.lang.String), (r1v6 java.lang.String) binds: [B:16:0x0028, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE]
      0x0019: PHI (r3v3 java.io.InputStream) = (r3v2 java.io.InputStream), (r3v4 java.io.InputStream) binds: [B:16:0x0028, B:6:0x0017] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public static String q(Context context, Uri uri, String str) throws Throwable {
        InputStream inputStreamOpenInputStream;
        String path = null;
        path = null;
        path = null;
        InputStream inputStream = null;
        if (uri.getAuthority() != null) {
            try {
                inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                try {
                    path = j(context, inputStreamOpenInputStream, str).getPath();
                    if (inputStreamOpenInputStream != null) {
                        try {
                            inputStreamOpenInputStream.close();
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception unused2) {
                    if (inputStreamOpenInputStream != null) {
                        inputStreamOpenInputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamOpenInputStream;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Exception unused3) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused4) {
                inputStreamOpenInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return path;
    }

    public static List<String> r(String Path, String Extension, List<String> apklist) {
        try {
            for (File file : new File(Path).listFiles()) {
                if (file.isFile()) {
                    if (file.getPath().substring(file.getPath().length() - Extension.length()).equals(Extension)) {
                        apklist.add(file.getAbsolutePath());
                    }
                } else if (file.isDirectory() && file.getPath().indexOf(bg.f74501j) == -1) {
                    r(file.getPath(), Extension, apklist);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return apklist;
    }

    public static List<String> s(String Path, List<String> extensions, List<String> apklist) {
        try {
            File[] fileArrListFiles = new File(Path).listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length != 0) {
                for (File file : fileArrListFiles) {
                    if (file.isFile()) {
                        if (file.getPath().endsWith(net.lingala.zip4j.util.e.F0)) {
                            file.getPath().substring(0, file.getPath().length() - 1);
                        }
                        if (extensions.contains(file.getPath().substring(file.getPath().lastIndexOf(net.lingala.zip4j.util.e.F0) + 1))) {
                            apklist.add(file.getAbsolutePath());
                        }
                    } else if (file.isDirectory() && file.getPath().indexOf(bg.f74501j) == -1) {
                        s(file.getPath(), extensions, apklist);
                    }
                }
                return apklist;
            }
            return apklist;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String t(String gameZipPath, int romeType) {
        File file = new File(gameZipPath);
        String emuRoot = StoreUtils.getEmuRoot(MApplication.n());
        String strSubstring = file.getName().substring(0, file.getName().lastIndexOf(o0.f49827a));
        return emuRoot + net.lingala.zip4j.util.e.F0 + UtilsMy.d2(romeType) + File.separator + strSubstring;
    }

    public static List<File> u(String Path, List<File> apklist) {
        try {
            for (File file : new File(Path).listFiles()) {
                if (file.isFile()) {
                    String path = file.getPath();
                    if (!path.startsWith(o0.f49827a)) {
                        if (!path.endsWith(".zip")) {
                            if (!path.endsWith(".iso")) {
                                if (!path.endsWith(".ISO")) {
                                    if (!path.endsWith(".bin")) {
                                        if (!path.endsWith(".cue")) {
                                            if (!path.endsWith(".pbp")) {
                                                if (!path.endsWith(".img")) {
                                                    if (!path.endsWith(".mdf")) {
                                                        if (!path.endsWith(".wsc")) {
                                                            if (!path.endsWith(".ws") && file.length() <= 20971520) {
                                                                apklist.add(file);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (file.isDirectory()) {
                    u(file.getPath(), apklist);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return apklist;
    }

    public static boolean v(String path) {
        MApplication mApplication = MApplication.f3182z;
        if (!TextUtils.isEmpty(path) && mApplication != null) {
            try {
                String parent = mApplication.getFilesDir().getParent();
                String parent2 = mApplication.getExternalFilesDir("").getParent();
                if (path.startsWith(parent) || path.startsWith(parent2)) {
                    return true;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    private static boolean w(String path) {
        String[] strArr = {"szfy", "sgz3", "lb3", "qgqs97", "qgqs98", "mhzx4"};
        for (int i10 = 0; i10 < 6; i10++) {
            if (path.endsWith(strArr[i10])) {
                return true;
            }
        }
        return new File(path.substring(0, path.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1) + "md_v2.cfg").exists();
    }

    /* JADX WARN: Code duplicated, block: B:72:0x0321  */
    private static String x(String path, boolean isVBA, boolean isV2) {
        String str;
        String str2;
        String str3;
        String str4;
        int i10;
        String str5 = path;
        String str6 = "";
        if (str5 != null && path.length() > 0) {
            String str7 = net.lingala.zip4j.util.e.F0;
            int i11 = 0;
            File file = new File(str5.substring(0, str5.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] fileArrListFiles = file.listFiles();
            int i12 = 0;
            while (i12 < fileArrListFiles.length - 1) {
                int i13 = i12 + 1;
                for (int i14 = i13; i14 < fileArrListFiles.length; i14++) {
                    if (fileArrListFiles[i12].lastModified() > fileArrListFiles[i14].lastModified()) {
                        File file2 = fileArrListFiles[i14];
                        fileArrListFiles[i14] = fileArrListFiles[i12];
                        fileArrListFiles[i12] = file2;
                    }
                }
                i12 = i13;
            }
            if (isVBA) {
                str = str5 + "vba";
                str5 = str5 + "vba";
            } else {
                str = str5;
            }
            String str8 = "_v2";
            if (isV2) {
                str5 = str5 + "_v2";
                str = str + "_v2";
            }
            String str9 = null;
            String str10 = null;
            int i15 = 0;
            while (i15 < fileArrListFiles.length) {
                if (fileArrListFiles[i15].isFile() && fileArrListFiles[i15].getName().contains(o0.f49827a)) {
                    String absolutePath = fileArrListFiles[i15].getAbsolutePath();
                    String strSubstring = absolutePath.substring(absolutePath.lastIndexOf(o0.f49827a) + 1, absolutePath.length());
                    String strSubstring2 = absolutePath.substring(i11, absolutePath.lastIndexOf(o0.f49827a));
                    if (strSubstring2.equals(str5 + "_lob")) {
                        str3 = str5 + "_lob";
                        str4 = str + "_lob";
                    } else {
                        if (strSubstring2.equals(str5 + "_net")) {
                            str3 = str5 + "_net";
                            str4 = str + "_net";
                        } else {
                            if (strSubstring2.equals(str5 + str8)) {
                                str3 = str5 + str8;
                                str4 = str + str8;
                            } else {
                                str3 = str5;
                                str4 = str;
                            }
                        }
                    }
                    if (strSubstring2.equals(str3)) {
                        try {
                            i10 = Integer.parseInt(fileArrListFiles[i15].getName().substring(fileArrListFiles[i15].getName().lastIndexOf(o0.f49827a) + 1));
                        } catch (Exception unused) {
                            i10 = -1;
                        }
                        if (i10 != -1) {
                            str2 = str8;
                            String str11 = new SimpleDateFormat("yyyy-MM-dd HH:mm").format((java.util.Date) new Date(fileArrListFiles[i15].lastModified()));
                            if (i10 == 0) {
                                str6 = (fileArrListFiles[i15].getAbsolutePath() + "," + fileArrListFiles[i15].getAbsolutePath() + ".png," + str11 + ";") + str6;
                            } else {
                                int iLastIndexOf = strSubstring2.lastIndexOf(47);
                                if (str9 == null) {
                                    str9 = new String(strSubstring2.substring(0, iLastIndexOf));
                                }
                                if (str10 == null) {
                                    str10 = new String(strSubstring2 + "TmpState");
                                }
                                File file3 = new File(strSubstring2 + "TmpState");
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                                String str12 = str10 + str7 + strSubstring2.substring(strSubstring2.lastIndexOf(47) + 1, str4.length()) + o0.f49827a + strSubstring;
                                String str13 = str12 + ".png";
                                String str14 = strSubstring2 + o0.f49827a + strSubstring;
                                String str15 = str14 + ".png";
                                fileArrListFiles[i15].toString();
                                String str16 = fileArrListFiles[i15].toString() + ".png";
                                long jLastModified = fileArrListFiles[i15].lastModified();
                                File file4 = new File(str12);
                                if (fileArrListFiles[i15].exists()) {
                                    fileArrListFiles[i15].renameTo(file4);
                                    file4.setLastModified(jLastModified);
                                }
                                File file5 = new File(str16);
                                long jLastModified2 = file5.lastModified();
                                File file6 = new File(str13);
                                if (file5.exists()) {
                                    file5.renameTo(file6);
                                    file6.setLastModified(jLastModified2);
                                }
                                str6 = (str6 + str14 + "," + str15 + "," + str11) + ";";
                            }
                        } else {
                            str2 = str8;
                        }
                    } else {
                        str2 = str8;
                    }
                } else {
                    str2 = str8;
                }
                i15++;
                str8 = str2;
                str = str;
                str5 = str5;
                str7 = str7;
                i11 = 0;
            }
            if (str9 != null && str10 != null) {
                g(str10, str9);
            }
        }
        return str6;
    }

    /* JADX WARN: Code duplicated, block: B:66:0x02b5  */
    private static String y(String path, boolean isVBA, boolean isV2) {
        String str;
        String str2;
        String str3;
        String str4;
        int i10;
        String str5 = path;
        String str6 = "";
        if (str5 != null && path.length() > 0) {
            String str7 = net.lingala.zip4j.util.e.F0;
            int i11 = 0;
            File file = new File(str5.substring(0, str5.lastIndexOf(net.lingala.zip4j.util.e.F0)));
            if (!file.isDirectory()) {
                return "";
            }
            File[] fileArrListFiles = file.listFiles();
            int i12 = 0;
            while (i12 < fileArrListFiles.length - 1) {
                int i13 = i12 + 1;
                for (int i14 = i13; i14 < fileArrListFiles.length; i14++) {
                    if (fileArrListFiles[i12].lastModified() > fileArrListFiles[i14].lastModified()) {
                        File file2 = fileArrListFiles[i14];
                        fileArrListFiles[i14] = fileArrListFiles[i12];
                        fileArrListFiles[i12] = file2;
                    }
                }
                i12 = i13;
            }
            if (isVBA) {
                str = str5 + "vba";
                str5 = str5 + "vba";
            } else {
                str = str5;
            }
            String str8 = "_v2";
            if (isV2) {
                str5 = str5 + "_v2";
                str = str + "_v2";
            }
            String str9 = null;
            String str10 = null;
            int i15 = 0;
            while (i15 < fileArrListFiles.length) {
                if (fileArrListFiles[i15].isFile() && fileArrListFiles[i15].getName().contains(o0.f49827a)) {
                    String absolutePath = fileArrListFiles[i15].getAbsolutePath();
                    String strSubstring = absolutePath.substring(absolutePath.lastIndexOf(o0.f49827a) + 1, absolutePath.length());
                    String strSubstring2 = absolutePath.substring(i11, absolutePath.lastIndexOf(o0.f49827a));
                    if (strSubstring2.equals(str5 + str8)) {
                        str3 = str5 + str8;
                        str4 = str + str8;
                    } else {
                        str3 = str5;
                        str4 = str;
                    }
                    if (strSubstring2.equals(str3)) {
                        try {
                            i10 = Integer.parseInt(fileArrListFiles[i15].getName().substring(fileArrListFiles[i15].getName().lastIndexOf(o0.f49827a) + 1));
                        } catch (Exception unused) {
                            i10 = -1;
                        }
                        if (i10 != -1) {
                            str2 = str8;
                            String str11 = new SimpleDateFormat("MM月dd日 HH:mm").format((java.util.Date) new Date(fileArrListFiles[i15].lastModified()));
                            if (i10 == 0) {
                                str6 = (fileArrListFiles[i15].getAbsolutePath() + "," + fileArrListFiles[i15].getAbsolutePath() + ".png," + str11 + ";") + str6;
                            } else {
                                int iLastIndexOf = strSubstring2.lastIndexOf(47);
                                if (str9 == null) {
                                    str9 = new String(strSubstring2.substring(0, iLastIndexOf));
                                }
                                if (str10 == null) {
                                    str10 = new String(strSubstring2 + "TmpState");
                                }
                                File file3 = new File(strSubstring2 + "TmpState");
                                if (!file3.exists()) {
                                    file3.mkdirs();
                                }
                                String str12 = str10 + str7 + strSubstring2.substring(strSubstring2.lastIndexOf(47) + 1, str4.length()) + o0.f49827a + strSubstring;
                                String str13 = str12 + ".png";
                                String str14 = strSubstring2 + o0.f49827a + strSubstring;
                                String str15 = str14 + ".png";
                                fileArrListFiles[i15].toString();
                                String str16 = fileArrListFiles[i15].toString() + ".png";
                                long jLastModified = fileArrListFiles[i15].lastModified();
                                File file4 = new File(str12);
                                if (fileArrListFiles[i15].exists()) {
                                    fileArrListFiles[i15].renameTo(file4);
                                    file4.setLastModified(jLastModified);
                                }
                                File file5 = new File(str16);
                                long jLastModified2 = file5.lastModified();
                                File file6 = new File(str13);
                                if (file5.exists()) {
                                    file5.renameTo(file6);
                                    file6.setLastModified(jLastModified2);
                                }
                                str6 = (str6 + str14 + "," + str15 + "," + str11) + ";";
                            }
                        } else {
                            str2 = str8;
                        }
                    } else {
                        str2 = str8;
                    }
                } else {
                    str2 = str8;
                }
                i15++;
                str8 = str2;
                str = str;
                str5 = str5;
                str7 = str7;
                i11 = 0;
            }
            if (str9 != null && str10 != null) {
                g(str10, str9);
            }
        }
        return str6;
    }

    public static String z(Context context, String filePath) throws IOException {
        if (context == null) {
            context = MApplication.f3182z;
        }
        if (ContextCompat.checkSelfPermission(context, com.kuaishou.weapon.p0.g.f74786j) != 0 || !new File(filePath).exists()) {
            return "";
        }
        FileInputStream fileInputStream = new FileInputStream(filePath);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = fileInputStream.read(bArr);
            if (i10 == -1) {
                return new String(byteArrayOutputStream.toByteArray());
            }
            byteArrayOutputStream.write(bArr, 0, i10);
        }
    }

    public void C(Context context, String fileName, String content) throws IOException {
        FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(fileName, 0);
        fileOutputStreamOpenFileOutput.write(content.getBytes());
        fileOutputStreamOpenFileOutput.close();
    }
}
