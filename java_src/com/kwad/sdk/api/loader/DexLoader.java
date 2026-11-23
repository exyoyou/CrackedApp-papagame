package com.kwad.sdk.api.loader;

import android.content.Context;
import android.content.res.AssetManager;
import androidx.annotation.Keep;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
@Keep
public class DexLoader {
    private static final String DEX_ROOT_DIR_NAME = "ksad_dex";
    private static final String TAG = "DexLoader";
    private static final String TARGET_DEX_NAME = "dexJar.jar";
    private static final String dexJarCheckFileName = "ksaddex_makejar.check";
    private static final String dexJarFileName = "ksad_data.jar";
    private static String sDexPathRoot;

    private static boolean checkLocal(Context context, String str, int i10) {
        StringBuilder sb2 = new StringBuilder("checkLocal start assetCheckFileMd5: ");
        sb2.append(str);
        sb2.append(", assetCheckVersionCode: ");
        sb2.append(i10);
        if (i10 != 5041001) {
            return false;
        }
        File file = new File(getTargetDexFilePath(context));
        return file.exists() && Objects.equals(y.getFileMD5(file), str);
    }

    private static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private static File copyAssetsToData(Context context, String str, DexLoadError dexLoadError) throws Throwable {
        FileOutputStream fileOutputStream;
        InputStream inputStreamOpen;
        InputStream inputStream = null;
        try {
            AssetManager assets = context.getAssets();
            File file = new File(getDexRootPath(context));
            if (!file.exists()) {
                file.mkdir();
            }
            File file2 = new File(getTargetDexFilePath(context));
            if (file2.exists()) {
                file2.delete();
            }
            file2.createNewFile();
            inputStreamOpen = assets.open(str);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    try {
                        int iA = p.a(getTargetDexFilePath(context), inputStreamOpen, p.bs(context));
                        if (iA != 1 && dexLoadError != null) {
                            dexLoadError.setErrorCode(iA);
                        }
                        fileOutputStream.flush();
                        file2.setReadable(true);
                        file2.setWritable(false);
                        closeQuietly(inputStreamOpen);
                        closeQuietly(fileOutputStream);
                        return file2;
                    } catch (IOException e10) {
                        e = e10;
                        e.printStackTrace();
                        if (dexLoadError != null) {
                            dexLoadError.setErrorCode(-3);
                            dexLoadError.setErrorMsg(e.getMessage());
                        }
                        closeQuietly(inputStreamOpen);
                        closeQuietly(fileOutputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStreamOpen;
                    closeQuietly(inputStream);
                    closeQuietly(fileOutputStream);
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
                inputStream = inputStreamOpen;
                closeQuietly(inputStream);
                closeQuietly(fileOutputStream);
                throw th;
            }
        } catch (IOException e12) {
            e = e12;
            inputStreamOpen = null;
            fileOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
            closeQuietly(inputStream);
            closeQuietly(fileOutputStream);
            throw th;
        }
    }

    private static void copyFile(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 == -1) {
                return;
            } else {
                outputStream.write(bArr, 0, i10);
            }
        }
    }

    private static ClassLoader createDexClassLoader(Context context, ClassLoader classLoader, String str, DexLoadError dexLoadError) {
        try {
            String strB = z.b(classLoader);
            StringBuilder sb2 = new StringBuilder("createDexClassLoader parent classLoader is: ");
            sb2.append(classLoader);
            sb2.append(", defaultLibPaths is:  ");
            sb2.append(strB);
            ClassLoader classLoaderA = g.a(context, classLoader, str, context.getCacheDir().getAbsolutePath(), strB);
            new StringBuilder("createDexClassLoader KsAdSDKImpl class is: ").append(classLoaderA.loadClass("com.kwad.sdk.KsAdSDKImpl"));
            return classLoaderA;
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            if (dexLoadError == null) {
                return null;
            }
            dexLoadError.setErrorMsg(e10.getMessage());
            dexLoadError.setErrorCode(-1);
            return null;
        } catch (Throwable th) {
            th.printStackTrace();
            if (dexLoadError == null) {
                return null;
            }
            dexLoadError.setErrorMsg(th.getMessage());
            dexLoadError.setErrorCode(-2);
            return null;
        }
    }

    private static String getDexRootPath(Context context) {
        String str = sDexPathRoot;
        if (str != null) {
            return str;
        }
        return context.getApplicationInfo().dataDir + File.separator + DEX_ROOT_DIR_NAME;
    }

    public static String getTargetDexFilePath(Context context) {
        return getDexRootPath(context) + File.separator + TARGET_DEX_NAME;
    }

    public static ClassLoader initDex(Context context, ClassLoader classLoader) {
        q qVarHH = r.HH();
        if (qVarHH != null) {
            qVarHH.onInit(context);
        }
        new StringBuilder("initDex liteApi: ").append(qVarHH);
        DexLoadError dexLoadError = new DexLoadError();
        String strPrepareDexFile = prepareDexFile(context, dexLoadError);
        new StringBuilder("initDex after prepareDexFile error: ").append(dexLoadError);
        if (!dexLoadError.success()) {
            if (qVarHH != null) {
                qVarHH.reportDexLoadError(context, dexLoadError);
            }
            return null;
        }
        ClassLoader classLoaderCreateDexClassLoader = createDexClassLoader(context, classLoader, strPrepareDexFile, dexLoadError);
        new StringBuilder("initDex after createDexClassLoader error: ").append(dexLoadError);
        if (dexLoadError.success()) {
            return classLoaderCreateDexClassLoader;
        }
        if (qVarHH != null) {
            qVarHH.reportDexLoadError(context, dexLoadError);
        }
        return null;
    }

    private static boolean isTargetDexFileExist(Context context) {
        return false;
    }

    private static String obtainCheckMd5(String str) {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return null;
        }
        return strArrSplit[0];
    }

    private static int obtainVersionCode(String str) {
        if (str == null) {
            return -1;
        }
        String[] strArrSplit = str.split("\n");
        if (strArrSplit.length == 0) {
            return -1;
        }
        int length = strArrSplit.length;
        for (int i10 = 0; i10 < length; i10++) {
            String str2 = strArrSplit[i10];
            if (str2.startsWith("versionCode:")) {
                try {
                    return Integer.parseInt(str2.replace("versionCode:", "").trim());
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
            }
        }
        return -1;
    }

    private static String prepareDexFile(Context context, DexLoadError dexLoadError) throws Throwable {
        String targetDexFilePath = getTargetDexFilePath(context);
        String checkFile = readCheckFile(context);
        String strObtainCheckMd5 = obtainCheckMd5(checkFile);
        int iObtainVersionCode = obtainVersionCode(checkFile);
        new StringBuilder("prepareDexFile after read check md5: ").append(strObtainCheckMd5);
        if (checkLocal(context, strObtainCheckMd5, iObtainVersionCode)) {
            return targetDexFilePath;
        }
        File fileCopyAssetsToData = copyAssetsToData(context, dexJarFileName, dexLoadError);
        if (fileCopyAssetsToData != null && fileCopyAssetsToData.exists()) {
            String fileMD5 = y.getFileMD5(fileCopyAssetsToData);
            if (Objects.equals(fileMD5, strObtainCheckMd5)) {
                targetDexFilePath = fileCopyAssetsToData.getAbsolutePath();
            } else {
                dexLoadError.setErrorCode(-4);
                dexLoadError.setErrorMsg("targetMd5:" + fileMD5 + ", assetJarFileMd5:" + strObtainCheckMd5);
            }
        }
        new StringBuilder("prepareDexFile end with: ").append(targetDexFilePath);
        return targetDexFilePath;
    }

    private static String readCheckFile(Context context) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        InputStream inputStreamOpen;
        try {
            inputStreamOpen = context.getAssets().open(dexJarCheckFileName);
            try {
                StringBuilder sb2 = new StringBuilder();
                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, "UTF-8"));
                while (true) {
                    try {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                String strTrim = sb2.toString().trim();
                                closeQuietly(inputStreamOpen);
                                closeQuietly(bufferedReader);
                                return strTrim;
                            }
                            sb2.append(line);
                            sb2.append("\n");
                        } catch (IOException e10) {
                            e = e10;
                            e.printStackTrace();
                            closeQuietly(inputStreamOpen);
                            closeQuietly(bufferedReader);
                            return null;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    th = th2;
                    closeQuietly(inputStreamOpen);
                    closeQuietly(bufferedReader);
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
                bufferedReader = null;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
            }
        } catch (IOException e12) {
            e = e12;
            inputStreamOpen = null;
            bufferedReader = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            inputStreamOpen = null;
        }
    }
}
