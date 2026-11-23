package de.robv.android.xposed;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import android.os.Environment;
import com.android.internal.util.XmlUtils;
import de.robv.android.xposed.services.FileResult;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes8.dex */
public final class XSharedPreferences implements SharedPreferences {
    private static final String TAG = "XSharedPreferences";
    private final File mFile;
    private long mFileSize;
    private final String mFilename;
    private long mLastModified;
    private boolean mLoaded;
    private Map<String, Object> mMap;

    public XSharedPreferences(File file) {
        this.mLoaded = false;
        this.mFile = file;
        this.mFilename = file.getAbsolutePath();
        startLoadFromDisk();
    }

    private void awaitLoadedLocked() {
        while (!this.mLoaded) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadFromDiskLocked() throws Throwable {
        FileResult fileInputStream;
        Throwable th;
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3;
        Map<String, Object> mapXml;
        InputStream inputStream4;
        if (this.mLoaded) {
            return;
        }
        FileResult fileResult = null;
        try {
            try {
                fileInputStream = SELinuxHelper.getAppDataFileService().getFileInputStream(this.mFilename, this.mFileSize, this.mLastModified);
                try {
                    InputStream inputStream5 = fileInputStream.stream;
                    if (inputStream5 != null) {
                        mapXml = XmlUtils.readMapXml(inputStream5);
                        fileInputStream.stream.close();
                    } else {
                        mapXml = this.mMap;
                    }
                    InputStream inputStream6 = fileInputStream.stream;
                    if (inputStream6 != null) {
                        try {
                            inputStream6.close();
                        } catch (RuntimeException e10) {
                            throw e10;
                        } catch (Exception unused) {
                        }
                    }
                } catch (FileNotFoundException unused2) {
                    fileResult = fileInputStream;
                    if (fileResult != null && (inputStream4 = fileResult.stream) != null) {
                        try {
                            inputStream4.close();
                        } catch (RuntimeException e11) {
                            throw e11;
                        }
                    }
                    fileInputStream = fileResult;
                    mapXml = null;
                } catch (IOException unused3) {
                    fileResult = fileInputStream;
                    if (fileResult != null && (inputStream3 = fileResult.stream) != null) {
                        try {
                            inputStream3.close();
                        } catch (RuntimeException e12) {
                            throw e12;
                        }
                    }
                    fileInputStream = fileResult;
                    mapXml = null;
                } catch (XmlPullParserException unused4) {
                    fileResult = fileInputStream;
                    if (fileResult != null && (inputStream2 = fileResult.stream) != null) {
                        try {
                            inputStream2.close();
                        } catch (RuntimeException e13) {
                            throw e13;
                        }
                    }
                    fileInputStream = fileResult;
                    mapXml = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream != null && (inputStream = fileInputStream.stream) != null) {
                        try {
                            inputStream.close();
                        } catch (RuntimeException e14) {
                            throw e14;
                        } catch (Exception unused5) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused6) {
                fileInputStream = fileResult;
                mapXml = null;
            }
        } catch (FileNotFoundException unused7) {
        } catch (IOException unused8) {
        } catch (XmlPullParserException unused9) {
        } catch (Throwable th3) {
            fileInputStream = null;
            th = th3;
        }
        this.mLoaded = true;
        if (mapXml != null) {
            this.mMap = mapXml;
            this.mLastModified = fileInputStream.mtime;
            this.mFileSize = fileInputStream.size;
        } else {
            this.mMap = new HashMap();
        }
        notifyAll();
    }

    private void startLoadFromDisk() {
        synchronized (this) {
            this.mLoaded = false;
        }
        new Thread("XSharedPreferences-load") { // from class: de.robv.android.xposed.XSharedPreferences.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (XSharedPreferences.this) {
                    XSharedPreferences.this.loadFromDiskLocked();
                }
            }
        }.start();
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        boolean zContainsKey;
        synchronized (this) {
            awaitLoadedLocked();
            zContainsKey = this.mMap.containsKey(str);
        }
        return zContainsKey;
    }

    @Override // android.content.SharedPreferences
    @Deprecated
    public SharedPreferences.Editor edit() {
        throw new UnsupportedOperationException("read-only implementation");
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        HashMap map;
        synchronized (this) {
            awaitLoadedLocked();
            map = new HashMap(this.mMap);
        }
        return map;
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z10) {
        synchronized (this) {
            awaitLoadedLocked();
            Boolean bool = (Boolean) this.mMap.get(str);
            if (bool != null) {
                z10 = bool.booleanValue();
            }
        }
        return z10;
    }

    public File getFile() {
        return this.mFile;
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f10) {
        synchronized (this) {
            awaitLoadedLocked();
            Float f11 = (Float) this.mMap.get(str);
            if (f11 != null) {
                f10 = f11.floatValue();
            }
        }
        return f10;
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i10) {
        synchronized (this) {
            awaitLoadedLocked();
            Integer num = (Integer) this.mMap.get(str);
            if (num != null) {
                i10 = num.intValue();
            }
        }
        return i10;
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j10) {
        synchronized (this) {
            awaitLoadedLocked();
            Long l10 = (Long) this.mMap.get(str);
            if (l10 != null) {
                j10 = l10.longValue();
            }
        }
        return j10;
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        synchronized (this) {
            awaitLoadedLocked();
            String str3 = (String) this.mMap.get(str);
            if (str3 != null) {
                str2 = str3;
            }
        }
        return str2;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        synchronized (this) {
            awaitLoadedLocked();
            Set<String> set2 = (Set) this.mMap.get(str);
            if (set2 != null) {
                set = set2;
            }
        }
        return set;
    }

    public synchronized boolean hasFileChanged() {
        boolean z10;
        z10 = true;
        try {
            FileResult fileResultStatFile = SELinuxHelper.getAppDataFileService().statFile(this.mFilename);
            if (this.mLastModified == fileResultStatFile.mtime && this.mFileSize == fileResultStatFile.size) {
                z10 = false;
            }
        } catch (FileNotFoundException unused) {
            return true;
        } catch (IOException unused2) {
            return true;
        }
        return z10;
    }

    @SuppressLint({"SetWorldReadable"})
    public boolean makeWorldReadable() {
        if (SELinuxHelper.getAppDataFileService().hasDirectFileAccess() && this.mFile.exists()) {
            return this.mFile.setReadable(true, false);
        }
        return false;
    }

    @Override // android.content.SharedPreferences
    @Deprecated
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("listeners are not supported in this implementation");
    }

    public synchronized void reload() {
        if (hasFileChanged()) {
            startLoadFromDisk();
        }
    }

    @Override // android.content.SharedPreferences
    @Deprecated
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException("listeners are not supported in this implementation");
    }

    public XSharedPreferences(String str) {
        this(str, str + "_preferences");
    }

    public XSharedPreferences(String str, String str2) {
        this.mLoaded = false;
        File file = new File(Environment.getDataDirectory(), "data/" + str + "/shared_prefs/" + str2 + ".xml");
        this.mFile = file;
        this.mFilename = file.getAbsolutePath();
        startLoadFromDisk();
    }
}
