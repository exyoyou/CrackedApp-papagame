package com.haima.hmcp.listeners;

import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.enums.CloudOperation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface BatchCloudOperationListener extends CloudOperationListener {

    public static class BatchOperationResult {
        public List<FileStatus> operationFailedStatusList;
        public List<FileStatus> operationSuccessStatusList;

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("BatchOperationResult{");
            sb2.append("\nSuccess Files (");
            List<FileStatus> list = this.operationSuccessStatusList;
            sb2.append(list != null ? list.size() : 0);
            sb2.append("):");
            List<FileStatus> list2 = this.operationSuccessStatusList;
            if (list2 != null) {
                for (FileStatus fileStatus : list2) {
                    sb2.append("\n  ");
                    sb2.append(fileStatus);
                }
            }
            sb2.append("\nFailed Files (");
            List<FileStatus> list3 = this.operationFailedStatusList;
            sb2.append(list3 != null ? list3.size() : 0);
            sb2.append("):");
            List<FileStatus> list4 = this.operationFailedStatusList;
            if (list4 != null) {
                for (FileStatus fileStatus2 : list4) {
                    sb2.append("\n  ");
                    sb2.append(fileStatus2);
                }
            }
            sb2.append("\n}");
            return sb2.toString();
        }
    }

    public static class FileStatus {
        public int code;
        public CloudFile file;
        public String msg;

        public FileStatus(CloudFile cloudFile, int i10, String str) {
            this.file = cloudFile;
            this.code = i10;
            this.msg = str;
        }

        public String toString() {
            Object[] objArr = new Object[4];
            CloudFile cloudFile = this.file;
            objArr[0] = cloudFile != null ? cloudFile.getName() : "null";
            CloudFile cloudFile2 = this.file;
            objArr[1] = cloudFile2 != null ? cloudFile2.getPath() : "null";
            objArr[2] = Integer.valueOf(this.code);
            String str = this.msg;
            objArr[3] = str != null ? str : "null";
            return String.format("FileStatus{file=%s, path=%s,code=%d, msg='%s'}", objArr);
        }
    }

    void onBatchFinish(CloudOperation cloudOperation, BatchOperationResult batchOperationResult);
}
