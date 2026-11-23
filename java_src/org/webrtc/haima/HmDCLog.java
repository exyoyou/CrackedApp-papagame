package org.webrtc.haima;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.hmwebrtc.log.LogUploadCallBack;

/* JADX INFO: loaded from: classes10.dex */
public class HmDCLog implements LogUploadCallBack {
    private static final boolean DEBUG_COMPRESS_DATA = false;
    private static final String DEBUG_FILE_PATH = "/sdcard";
    public static final String LOGDCNAME = "log_upload_dc";
    private static final String TAG = "HmDCLog";
    private HmDCDevice mHmDcDevice;

    public HmDCLog(HmDCDevice hmDCDevice) {
        this.mHmDcDevice = hmDCDevice;
    }

    private void writeDataToFile(byte[] bArr) {
        File file = new File(DEBUG_FILE_PATH, System.currentTimeMillis() + ".zip");
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(bArr);
            fileOutputStream.close();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("File written successfully, file:");
            sb2.append(file.getAbsolutePath());
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    @Override // org.hmwebrtc.log.LogUploadCallBack
    public boolean upload(byte[] bArr) {
        HmDCDevice hmDCDevice;
        if (bArr == null || bArr.length == 0 || (hmDCDevice = this.mHmDcDevice) == null) {
            return false;
        }
        return hmDCDevice.send(bArr, false);
    }
}
