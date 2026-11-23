package com.haima.hmcp.cloud;

import android.text.TextUtils;
import com.haima.hmcp.beans.CloudFile;
import com.haima.hmcp.enums.CloudOperation;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes5.dex */
public class InternalCloudFile extends CloudFile {
    public CloudFile cloudFile;
    long fileSize;
    public boolean isSaveToGallery = false;
    public String md5;
    String type;

    public InternalCloudFile() {
    }

    InternalCloudFile copy() {
        InternalCloudFile internalCloudFile = new InternalCloudFile();
        internalCloudFile.name = this.name;
        internalCloudFile.path = this.path;
        internalCloudFile.imageType = this.imageType;
        internalCloudFile.md5 = this.md5;
        internalCloudFile.type = this.type;
        internalCloudFile.fileSize = this.fileSize;
        return internalCloudFile;
    }

    public String getFileSuffix() {
        String name;
        int iLastIndexOf;
        int i10;
        CloudFile cloudFile = this.cloudFile;
        if (cloudFile == null || TextUtils.isEmpty(cloudFile.getName()) || (iLastIndexOf = (name = this.cloudFile.getName()).lastIndexOf(o0.f49827a)) == -1 || (i10 = iLastIndexOf + 1) > name.length()) {
            return null;
        }
        return name.substring(i10);
    }

    boolean isAvailable(CloudOperation cloudOperation) {
        if (cloudOperation == CloudOperation.UPLOAD) {
            return (TextUtils.isEmpty(getName()) || TextUtils.isEmpty(getPath()) || TextUtils.isEmpty(this.md5) || TextUtils.isEmpty(this.type)) ? false : true;
        }
        return !TextUtils.isEmpty(getName());
    }

    CloudFile makeCloudFile() {
        CloudFile cloudFile = new CloudFile();
        cloudFile.setName(this.name);
        cloudFile.setPath(this.path);
        cloudFile.setImageType(this.imageType);
        return cloudFile;
    }

    @Override // com.haima.hmcp.beans.CloudFile
    public String toString() {
        return "InternalCloudFile{md5='" + this.md5 + "', fileSize=" + this.fileSize + ", type='" + this.type + "', name='" + this.name + "', path='" + this.path + "', imageType=" + this.imageType + '}';
    }

    public InternalCloudFile(CloudFile cloudFile) {
        this.name = cloudFile.getName();
        this.path = cloudFile.getPath();
        this.imageType = cloudFile.getImageType();
    }
}
