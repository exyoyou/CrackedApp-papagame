package com.tencent.cos.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.join.mgps.Util.o0;
import com.sdk.base.framework.utils.log.LogFile;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class RecordLog {
    private static final long BUFFER_SIZE = 32768;
    private static final long LOG_FLUSH_DURATION = 10000;
    private static final int MAX_FILE_COUNT = 30;
    private static final int MAX_FILE_SIZE = 32768;
    private static HandlerThread handlerThread;
    private static RecordLog recordLog;
    private String flag;
    private Handler handler;
    private String logRootDir;
    private static final byte[] object = new byte[0];
    private static final byte[] instance = new byte[0];
    private String logFileDir = null;
    private FileFilter fileFilter = new FileFilter() { // from class: com.tencent.cos.utils.RecordLog.1
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            String name = file.getName();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(o0.f49827a);
            sb2.append(RecordLog.this.flag);
            sb2.append(LogFile.LOG_SUFFIX);
            return name.endsWith(sb2.toString()) && RecordLog.this.getIndexFromFile(file) != -1;
        }
    };
    private final int MSG_FLUSH_ALL = 0;
    private final int MSG_FLUSH_CONTENT = 1;
    private final int MSG_DELETE_FILE = 2;
    private List<Record> bufferRecord = Collections.synchronizedList(new ArrayList());
    private volatile long mBufferSize = 0;

    private RecordLog(Context context, String str) {
        this.flag = null;
        this.logRootDir = null;
        this.handler = null;
        this.flag = str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(Environment.getExternalStorageDirectory());
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append("android");
        sb2.append(str2);
        sb2.append("data");
        sb2.append(str2);
        sb2.append(context.getPackageName());
        sb2.append(str2);
        sb2.append("logs");
        this.logRootDir = sb2.toString();
        HandlerThread handlerThread2 = new HandlerThread("log_handlerThread", 1);
        handlerThread = handlerThread2;
        handlerThread2.start();
        Handler handler = new Handler(handlerThread.getLooper()) { // from class: com.tencent.cos.utils.RecordLog.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 0) {
                    RecordLog.this.flush();
                    sendEmptyMessageDelayed(0, 10000L);
                } else {
                    if (i10 != 1) {
                        return;
                    }
                    RecordLog.this.flush();
                }
            }
        };
        this.handler = handler;
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = 0;
        this.handler.sendMessage(messageObtainMessage);
    }

    public static RecordLog getInstance(Context context, String str) {
        RecordLog recordLog2;
        synchronized (instance) {
            if (recordLog == null) {
                recordLog = new RecordLog(context, str);
            }
            recordLog2 = recordLog;
        }
        return recordLog2;
    }

    public void appendRecord(String str, String str2, String str3, Throwable th) {
        Record record = new Record(str, str2, str3, th);
        synchronized (this) {
            if (this.mBufferSize > 32768 || this.mBufferSize + record.getLength() > 32768) {
                Message messageObtainMessage = this.handler.obtainMessage();
                messageObtainMessage.what = 1;
                this.handler.sendMessage(messageObtainMessage);
            }
            this.bufferRecord.add(record);
            this.mBufferSize += record.getLength();
        }
    }

    public void flush() {
        synchronized (this) {
            if (this.mBufferSize <= 0) {
                return;
            }
            write(this.bufferRecord);
            this.bufferRecord.clear();
            this.mBufferSize = 0L;
        }
    }

    public int getIndexFromFile(File file) {
        try {
            String name = file.getName();
            return Integer.valueOf(name.substring(0, name.indexOf(46))).intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1;
        }
    }

    public File getLogFile(long j10) {
        String str = this.logRootDir + File.separator + getLongDate(j10);
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
            return new File(str, "1." + this.flag + LogFile.LOG_SUFFIX);
        }
        File[] fileArrListFiles = file.listFiles(this.fileFilter);
        if (fileArrListFiles.length == 0) {
            return new File(str, "1." + this.flag + LogFile.LOG_SUFFIX);
        }
        Arrays.sort(fileArrListFiles, new Comparator<File>() { // from class: com.tencent.cos.utils.RecordLog.3
            @Override // java.util.Comparator
            public int compare(File file2, File file3) {
                return RecordLog.this.getIndexFromFile(file2) - RecordLog.this.getIndexFromFile(file3);
            }
        });
        File file2 = fileArrListFiles[fileArrListFiles.length - 1];
        if (file2.length() > 32768) {
            file2 = new File(str, "" + (getIndexFromFile(file2) + 1) + o0.f49827a + this.flag + LogFile.LOG_SUFFIX);
        }
        int length = fileArrListFiles.length + 1;
        for (int i10 = 0; i10 < length - 30; i10++) {
            fileArrListFiles[i10].delete();
        }
        return file2;
    }

    public String getLogFileDir() {
        File file = new File(this.logRootDir + File.separator + getTodayDate());
        if (!file.exists()) {
            file.mkdirs();
        }
        String path = file.getPath();
        this.logFileDir = path;
        return path;
    }

    public String getLogRootDir() {
        return this.logRootDir;
    }

    public String getLongDate(long j10) {
        return new SimpleDateFormat("yyyy-MM-dd").format(Long.valueOf(j10));
    }

    public String getTodayDate() {
        return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public void write(List<Record> list) {
        synchronized (object) {
            if (list == null) {
                return;
            }
            ?? r10 = 0;
            FileOutputStream fileOutputStream = null;
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    FileOutputStream fileOutputStream3 = new FileOutputStream(getLogFile(System.currentTimeMillis()), true);
                    int i10 = 0;
                    while (i10 < list.size()) {
                        try {
                            fileOutputStream3.write(list.get(i10).toString().getBytes());
                            i10++;
                        } catch (FileNotFoundException e10) {
                            e = e10;
                            fileOutputStream = fileOutputStream3;
                            e.printStackTrace();
                            r10 = fileOutputStream;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    r10 = fileOutputStream;
                                } catch (IOException e11) {
                                    e = e11;
                                    e.printStackTrace();
                                }
                            }
                        } catch (IOException e12) {
                            e = e12;
                            fileOutputStream2 = fileOutputStream3;
                            e.printStackTrace();
                            r10 = fileOutputStream2;
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                    r10 = fileOutputStream2;
                                } catch (IOException e13) {
                                    e = e13;
                                    e.printStackTrace();
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            r10 = fileOutputStream3;
                            if (r10 != 0) {
                                try {
                                    r10.close();
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                    fileOutputStream3.flush();
                    try {
                        fileOutputStream3.close();
                        r10 = i10;
                    } catch (IOException e15) {
                        e = e15;
                        e.printStackTrace();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (FileNotFoundException e16) {
                e = e16;
            } catch (IOException e17) {
                e = e17;
            }
        }
    }
}
