package org.hmwebrtc.log;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.LinkedList;
import java.util.Locale;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes10.dex */
class LogFileSink extends LogApi.LogSink {
    public static final long MAX_FILE_SZIE = 10485760;
    private FileLogObserve mFileLogObserve;
    private long mFileSize;
    private FileOutputStream mFileStream;
    private String mFilepathSuffix;
    private long mLogBaseTimeMs;
    private String mLogBaseTimeMsString;
    private long mMaxFileSize;
    private String mRawFilepath;

    public class FileComparator implements Comparator<FileInfo> {
        public FileComparator() {
        }

        @Override // java.util.Comparator
        public int compare(FileInfo fileInfo, FileInfo fileInfo2) {
            return fileInfo.lastModified < fileInfo2.lastModified ? -1 : 1;
        }
    }

    private static class FileInfo {
        File file;
        long lastModified;

        private FileInfo() {
        }
    }

    public interface FileLogObserve {
        void onFileSizeChange(String str, long j10);
    }

    public LogFileSink(String str, long j10, FileLogObserve fileLogObserve) {
        this.mRawFilepath = str;
        this.mFileStream = createLogFile(getLatelyLogFilePath());
        this.mMaxFileSize = Math.max(j10, 10485760L);
        this.mFileLogObserve = fileLogObserve;
        this.mFileSize = 0L;
        this.mFilepathSuffix = "";
        this.mLogBaseTimeMsString = "";
        this.mLogBaseTimeMs = 0L;
    }

    private void checkLogFile() {
        long j10 = this.mMaxFileSize;
        if (j10 <= 0 || this.mFileSize < j10) {
            return;
        }
        FileLogObserve fileLogObserve = this.mFileLogObserve;
        if (fileLogObserve != null) {
            fileLogObserve.onFileSizeChange(this.mRawFilepath + this.mFilepathSuffix, this.mFileSize);
            return;
        }
        if (this.mFileStream != null) {
            deleteExpriedLogFile();
            closeLogFile();
            this.mFileStream = createLogFile(this.mRawFilepath + getFilepathSuffix());
        }
    }

    private void closeLogFile() {
        FileOutputStream fileOutputStream = this.mFileStream;
        if (fileOutputStream == null) {
            return;
        }
        try {
            fileOutputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.mFileStream = null;
    }

    private FileOutputStream createLogFile(String str) {
        File file = new File(str);
        try {
            if (!file.exists()) {
                file.createNewFile();
            } else if (file.isDirectory()) {
                return null;
            }
            this.mFileSize = file.length();
            return new FileOutputStream(file, true);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void deleteExpriedLogFile() {
        LinkedList<FileInfo> linkedListEnumLogFiles = enumLogFiles();
        if (linkedListEnumLogFiles == null) {
            return;
        }
        while (linkedListEnumLogFiles.size() > 10) {
            try {
                linkedListEnumLogFiles.remove(0).file.delete();
            } catch (Exception e10) {
                e10.toString();
                return;
            }
        }
    }

    private LinkedList<FileInfo> enumLogFiles() {
        int iLastIndexOf = this.mRawFilepath.lastIndexOf(e.F0);
        String strSubstring = this.mRawFilepath.substring(iLastIndexOf + 1);
        try {
            File[] fileArrListFiles = new File(this.mRawFilepath.substring(0, iLastIndexOf)).listFiles();
            LinkedList<FileInfo> linkedList = new LinkedList<>();
            for (File file : fileArrListFiles) {
                if (!file.isDirectory() && file.getName().startsWith(strSubstring)) {
                    FileInfo fileInfo = new FileInfo();
                    fileInfo.lastModified = file.lastModified();
                    fileInfo.file = file;
                    linkedList.add(fileInfo);
                }
            }
            Collections.sort(linkedList, new FileComparator());
            return linkedList;
        } catch (Exception e10) {
            e10.toString();
            return null;
        }
    }

    private String getFilepathSuffix() {
        try {
            Date date = new Date(System.currentTimeMillis());
            this.mFilepathSuffix = "_" + new SimpleDateFormat("MMddHHmmss", Locale.getDefault()).format(date);
        } catch (Exception unused) {
            this.mFilepathSuffix = "_" + System.currentTimeMillis();
        }
        return this.mFilepathSuffix;
    }

    private String getFormatTime(long j10) {
        String str;
        long j11 = this.mLogBaseTimeMs;
        long j12 = j10 - j11;
        if (j11 == 0 || j12 >= 60000 || this.mLogBaseTimeMsString.length() < 5) {
            String str2 = new SimpleDateFormat("MM-dd HH:mm:ss:SSS", Locale.getDefault()).format(new Date(j10));
            this.mLogBaseTimeMsString = str2.substring(0, str2.length() - 7);
            this.mLogBaseTimeMs = (j10 / 60000) * 60000;
            return str2;
        }
        String str3 = this.mLogBaseTimeMsString + ":";
        long j13 = j12 / 1000;
        if (j13 >= 10) {
            str = str3 + j13;
        } else {
            str = str3 + "0" + j13;
        }
        long j14 = j12 % 1000;
        String str4 = str + ":";
        if (j14 >= 100) {
            return str4 + j14;
        }
        if (j14 >= 10) {
            return str4 + "0" + j14;
        }
        return str4 + com.sigmob.sdk.archives.tar.e.V + j14;
    }

    private String getLatelyLogFilePath() {
        LinkedList<FileInfo> linkedListEnumLogFiles = enumLogFiles();
        if (linkedListEnumLogFiles != null && linkedListEnumLogFiles.size() != 0) {
            return linkedListEnumLogFiles.get(linkedListEnumLogFiles.size() - 1).file.getAbsolutePath();
        }
        return this.mRawFilepath + getFilepathSuffix();
    }

    private synchronized void writeData(byte[] bArr, int i10, int i11) {
        FileOutputStream fileOutputStream = this.mFileStream;
        if (fileOutputStream == null) {
            return;
        }
        try {
            fileOutputStream.write(bArr, i10, i11);
            this.mFileSize += (long) i11;
            checkLogFile();
        } catch (Exception unused) {
        }
    }

    public boolean isOpend() {
        return this.mFileStream != null;
    }

    @Override // org.hmwebrtc.log.LogApi.LogSink
    public void onLog(int i10, LogApi.LogMessage logMessage) {
        String str = (((LogApi.getLevelString(i10) + " " + getFormatTime(logMessage.time) + "  ") + " [" + logMessage.pid + ":" + logMessage.tid + "]") + "  " + logMessage.tag) + "  " + logMessage.msg;
        writeData(str.getBytes(), 0, str.length());
    }

    public LogFileSink(String str, FileLogObserve fileLogObserve) {
        this.mFileStream = createLogFile(str);
        this.mMaxFileSize = 10485760L;
        this.mFileLogObserve = fileLogObserve;
        this.mFileSize = 0L;
        this.mFilepathSuffix = "";
        this.mLogBaseTimeMsString = "";
        this.mLogBaseTimeMs = 0L;
    }
}
