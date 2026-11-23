package com.tencent.cos.model;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.tencent.cos.exception.COSClientException;
import com.tencent.cos.task.listener.ITaskListener;
import com.tencent.cos.utils.COSPathUtils;
import com.tencent.cos.utils.FolderUtils;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import net.lingala.zip4j.util.e;
import x.a;

/* JADX INFO: loaded from: classes2.dex */
public abstract class COSRequest {
    protected String appid;
    protected Map<String, String> bodys;
    protected String bucket;
    protected String cosPath;
    protected String downloadPath;
    protected String downloadUrl;
    protected Map<String, String> headers;
    protected String httpContentType;
    protected String httpMethod;
    protected ITaskListener listener;
    protected String op;
    protected int requestId;
    protected String sign;

    public COSRequest() {
        this(null, null, null, null, null);
    }

    public void checkParams() throws COSClientException {
        if (TextUtils.isEmpty(this.appid)) {
            throw new COSClientException("appid为空");
        }
        if (TextUtils.isEmpty(this.bucket)) {
            throw new COSClientException("bucket为空");
        }
        if (TextUtils.isEmpty(this.cosPath)) {
            throw new COSClientException("COS远程路径为空");
        }
        if (!FolderUtils.isValidPath(this.cosPath)) {
            throw new COSClientException("COS目录中含有保留字符");
        }
    }

    public String getAppid() {
        return this.appid;
    }

    public Map<String, String> getBodys() {
        if (this.bodys == null) {
            setBodys();
        }
        return this.bodys;
    }

    public String getBucket() {
        return this.bucket;
    }

    public String getContentType() {
        return this.httpContentType;
    }

    public String getCosPath() {
        return this.cosPath;
    }

    public String getDownloadPath() {
        return this.downloadPath;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public Map<String, String> getHeaders() {
        if (this.headers == null) {
            setHeaders();
        }
        return this.headers;
    }

    public String getHttpMethod() {
        return this.httpMethod;
    }

    public ITaskListener getListener() {
        return this.listener;
    }

    public String getPathForUrl() throws COSClientException {
        checkParams();
        return this.appid + e.F0 + this.bucket + COSPathUtils.encodeRemotePath(this.cosPath);
    }

    public String getQueryForUrl() throws COSClientException {
        if (this.httpMethod.equalsIgnoreCase("POST")) {
            return null;
        }
        if (this.bodys == null) {
            setBodys();
        }
        if (!this.httpMethod.equalsIgnoreCase("GET")) {
            return null;
        }
        Set<Map.Entry<String, String>> setEntrySet = this.bodys.entrySet();
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, String> entry : setEntrySet) {
            sb2.append((Object) entry.getKey());
            sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
            sb2.append((Object) entry.getValue());
            sb2.append(a.f97576d);
        }
        String string = sb2.toString();
        return string.endsWith(a.f97576d) ? string.substring(0, string.lastIndexOf(a.f97576d)) : string;
    }

    public int getRequestId() {
        return this.requestId;
    }

    public String getSign() {
        return this.sign;
    }

    public void setAppid(String str) {
        this.appid = str;
    }

    public abstract void setBodys();

    public void setBucket(String str) {
        this.bucket = str;
    }

    public void setCosPath(String str) {
        this.cosPath = str;
    }

    public void setDownloadPath(String str) {
        this.downloadPath = str;
    }

    public void setDownloadUrl(String str) {
        this.downloadUrl = str;
    }

    public abstract void setHeaders();

    public void setListener(ITaskListener iTaskListener) {
        this.listener = iTaskListener;
    }

    public void setSign(String str) {
        this.sign = str;
    }

    public COSRequest(String str, String str2, String str3, String str4, ITaskListener iTaskListener) {
        this.appid = null;
        this.bucket = null;
        this.cosPath = null;
        this.sign = null;
        this.op = null;
        this.httpMethod = null;
        this.httpContentType = null;
        this.headers = null;
        this.bodys = null;
        this.requestId = UUID.randomUUID().hashCode();
        this.appid = str;
        this.bucket = str2;
        this.cosPath = str3;
        this.sign = str4;
        this.listener = iTaskListener;
    }

    public COSRequest(String str, String str2, String str3, ITaskListener iTaskListener) {
        this(null, null, null, str3, iTaskListener);
        this.downloadUrl = str;
        this.downloadPath = str2;
    }

    public COSRequest(String str, String str2) {
        this(str, str2, null, null);
    }
}
