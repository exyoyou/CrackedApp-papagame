package com.tencent.cos.network;

import android.text.TextUtils;
import com.tencent.cos.common.COSHttpResponseKey;
import com.tencent.cos.utils.QLog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.Response;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HttpResponse {
    private static final String TAG = "com.tencent.cos.network.HttpResponse";
    private int RET;
    private String UNKONW;
    private int httpCode;
    private String httpMsg;
    private JSONObject jsonContent;
    private byte operateType;

    public HttpResponse(Response response) {
        this.UNKONW = "UNKOWN";
        this.RET = -1;
        this.httpCode = -1;
        this.httpMsg = "UNKOWN";
        this.jsonContent = null;
        this.operateType = (byte) -1;
        if (response == null) {
            throw new IllegalArgumentException("网络未响应！");
        }
        this.httpCode = response.code();
        this.httpMsg = response.message();
        String responseContent = getResponseContent(response);
        try {
            if (TextUtils.isEmpty(responseContent)) {
                return;
            }
            this.jsonContent = new JSONObject(responseContent);
        } catch (Exception e10) {
            this.jsonContent = null;
            QLog.e(TAG, "解析出错" + e10.getMessage(), e10);
        }
    }

    public String getAccessUrl() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.ACCESS_URL)) {
                return jSONObject.optString(COSHttpResponseKey.Data.ACCESS_URL);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public String getAuthority() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.AUTHORITY)) {
                return jSONObject.optString(COSHttpResponseKey.Data.AUTHORITY);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public String getBizattr() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.BIZ_ATTR)) {
                return jSONObject.optString(COSHttpResponseKey.Data.BIZ_ATTR);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public ArrayList<String> getBlackRefers() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (!jSONObject.has(COSHttpResponseKey.Data.BLACK_REFERS) || jSONObject.isNull(COSHttpResponseKey.Data.BLACK_REFERS) || !(jSONObject.opt(COSHttpResponseKey.Data.BLACK_REFERS) instanceof JSONArray)) {
                    return null;
                }
                ArrayList<String> arrayList = new ArrayList<>();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(COSHttpResponseKey.Data.BLACK_REFERS);
                int length = jSONArrayOptJSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
                return arrayList;
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return null;
    }

    public String getBody() {
        JSONObject jSONObject = this.jsonContent;
        if (jSONObject != null) {
            return jSONObject.toString();
        }
        return null;
    }

    public String getCORSConfiguration() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.CORSCONFIGURATION)) {
                return jSONObject.optString(COSHttpResponseKey.Data.CORSCONFIGURATION);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public ArrayList<String> getCname() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (!jSONObject.has(COSHttpResponseKey.Data.CNAME) || jSONObject.isNull(COSHttpResponseKey.Data.CNAME) || !(jSONObject.opt(COSHttpResponseKey.Data.CNAME) instanceof JSONArray)) {
                    return null;
                }
                ArrayList<String> arrayList = new ArrayList<>();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(COSHttpResponseKey.Data.CNAME);
                int length = jSONArrayOptJSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
                return arrayList;
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return null;
    }

    public String getContext() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has("context")) {
                return jSONObject.optString("context");
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public long getCtime() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1L;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.CTIME)) {
                return jSONObject.optLong(COSHttpResponseKey.Data.CTIME);
            }
            return -1L;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1L;
        }
    }

    public HashMap<String, String> getCustomHeaders() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (!jSONObject.has(COSHttpResponseKey.Data.CUSTOMER_HEADERS) || jSONObject.isNull(COSHttpResponseKey.Data.CUSTOMER_HEADERS)) {
                    return null;
                }
                HashMap<String, String> map = new HashMap<>();
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString(COSHttpResponseKey.Data.CUSTOMER_HEADERS));
                if (jSONObject2.names() == null) {
                    return null;
                }
                JSONArray jSONArrayNames = jSONObject2.names();
                int length = jSONArrayNames.length();
                for (int i10 = 0; i10 < length; i10++) {
                    map.put(jSONArrayNames.optString(i10), jSONObject2.optString(jSONArrayNames.optString(i10)));
                }
                return map;
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return null;
    }

    public String getData() {
        JSONObject jSONObject = this.jsonContent;
        if (jSONObject == null || !jSONObject.has("data")) {
            return null;
        }
        return this.jsonContent.optString("data");
    }

    public int getDataLen() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.DATALEN)) {
                return jSONObject.optInt(COSHttpResponseKey.Data.DATALEN);
            }
            return -1;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1;
        }
    }

    public String getDownloadUrl() {
        JSONObject jSONObject = this.jsonContent;
        if (jSONObject == null || !jSONObject.has(COSHttpResponseKey.DOWNLOAD_URL)) {
            return null;
        }
        return this.jsonContent.optString(COSHttpResponseKey.DOWNLOAD_URL);
    }

    public int getFileLen() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.FILELEN)) {
                return jSONObject.optInt(COSHttpResponseKey.Data.FILELEN);
            }
            return -1;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1;
        }
    }

    public int getFileSize() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.FILESIZE)) {
                return jSONObject.optInt(COSHttpResponseKey.Data.FILESIZE);
            }
            return -1;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1;
        }
    }

    public int getHttpCode() {
        return this.httpCode;
    }

    public String getHttpMsg() {
        return this.httpMsg;
    }

    public HashMap<String, String> getKeys() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (!jSONObject.has(COSHttpResponseKey.Data.KEYS) || jSONObject.isNull(COSHttpResponseKey.Data.KEYS)) {
                    return null;
                }
                HashMap<String, String> map = new HashMap<>();
                JSONObject jSONObject2 = new JSONObject(jSONObject.optString(COSHttpResponseKey.Data.KEYS));
                if (jSONObject2.names() == null) {
                    return null;
                }
                JSONArray jSONArrayNames = jSONObject2.names();
                int length = jSONArrayNames.length();
                for (int i10 = 0; i10 < length; i10++) {
                    map.put(jSONArrayNames.optString(i10), jSONObject2.optString(jSONArrayNames.optString(i10)));
                }
                return map;
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return null;
    }

    public ArrayList<String> getListDirInfos() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (!jSONObject.has("infos") || jSONObject.isNull("infos") || !(jSONObject.opt("infos") instanceof JSONArray)) {
                    return null;
                }
                ArrayList<String> arrayList = new ArrayList<>();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("infos");
                int length = jSONArrayOptJSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
                return arrayList;
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return null;
    }

    public Boolean getListOver() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (jSONObject.has(COSHttpResponseKey.LISTOVER)) {
                    return Boolean.valueOf(jSONObject.optBoolean(COSHttpResponseKey.LISTOVER));
                }
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return Boolean.TRUE;
    }

    public String getLocalPath() {
        JSONObject jSONObject = this.jsonContent;
        if (jSONObject == null || !jSONObject.has(COSHttpResponseKey.LOCAL_PATH)) {
            return null;
        }
        return this.jsonContent.optString(COSHttpResponseKey.LOCAL_PATH);
    }

    public String getMigrateSourceDomain() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.MIGRATE_SOURCE_DOMAIN)) {
                return jSONObject.optString(COSHttpResponseKey.Data.MIGRATE_SOURCE_DOMAIN);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public String getMsg() {
        JSONObject jSONObject = this.jsonContent;
        if (jSONObject != null) {
            return jSONObject.has("message") ? this.jsonContent.optString("message") : this.UNKONW;
        }
        return this.UNKONW;
    }

    public long getMtime() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1L;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.MTIME)) {
                return jSONObject.optLong(COSHttpResponseKey.Data.MTIME);
            }
            return -1L;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1L;
        }
    }

    public String getName() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has("name")) {
                return jSONObject.optString("name");
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public int getNeedPreview() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return 0;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.NEEDPRRIVIEW)) {
                return jSONObject.optInt(COSHttpResponseKey.Data.NEEDPRRIVIEW);
            }
            return 0;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return 0;
        }
    }

    public long getOffSet() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1L;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has("offset")) {
                return jSONObject.optInt("offset");
            }
            return -1L;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1L;
        }
    }

    public byte getOperatorType() {
        return this.operateType;
    }

    public String getPreviewUrl() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.PREVIEW_URL)) {
                return jSONObject.optString(COSHttpResponseKey.Data.PREVIEW_URL);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public ArrayList<String> getRefers() {
        try {
            String data = getData();
            if (!TextUtils.isEmpty(data)) {
                JSONObject jSONObject = new JSONObject(data);
                if (!jSONObject.has(COSHttpResponseKey.Data.REFERS) || jSONObject.isNull(COSHttpResponseKey.Data.REFERS) || !(jSONObject.opt(COSHttpResponseKey.Data.REFERS) instanceof JSONArray)) {
                    return null;
                }
                ArrayList<String> arrayList = new ArrayList<>();
                JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(COSHttpResponseKey.Data.REFERS);
                int length = jSONArrayOptJSONArray.length();
                for (int i10 = 0; i10 < length; i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
                return arrayList;
            }
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
        }
        return null;
    }

    public String getResponseContent(Response response) {
        try {
            return response.body().string();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public int getRet() {
        JSONObject jSONObject = this.jsonContent;
        if (jSONObject != null) {
            return jSONObject.has("code") ? this.jsonContent.optInt("code") : this.RET;
        }
        return this.RET;
    }

    public int getSerialUpload() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.SERIAL_UPLOAD)) {
                return jSONObject.optInt(COSHttpResponseKey.Data.SERIAL_UPLOAD);
            }
            return -1;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1;
        }
    }

    public String getSession() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has("session")) {
                return jSONObject.optString("session");
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public String getSha() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.SHA)) {
                return jSONObject.optString(COSHttpResponseKey.Data.SHA);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public int getSliceSize() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return -1;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.SLICE_SIZE)) {
                return jSONObject.optInt(COSHttpResponseKey.Data.SLICE_SIZE);
            }
            return -1;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return -1;
        }
    }

    public String getSourcePath() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.RESOURCE_PATH)) {
                return jSONObject.optString(COSHttpResponseKey.Data.RESOURCE_PATH);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public String getSourceUrl() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has(COSHttpResponseKey.Data.SOURCE_URL)) {
                return jSONObject.optString(COSHttpResponseKey.Data.SOURCE_URL);
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public String getUrl() {
        try {
            String data = getData();
            if (TextUtils.isEmpty(data)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(data);
            if (jSONObject.has("url")) {
                return jSONObject.optString("url");
            }
            return null;
        } catch (Exception e10) {
            QLog.e(TAG, e10.getMessage(), e10);
            return null;
        }
    }

    public void setOperateType(byte b10) {
        this.operateType = b10;
    }

    public String toString() {
        return "http{code =" + this.httpCode + ", msg=" + this.httpMsg + "}\ncos{code =" + getRet() + ", msg=" + getMsg() + "}";
    }

    public HttpResponse(String str) {
        this.UNKONW = "UNKOWN";
        this.RET = -1;
        this.httpCode = -1;
        this.httpMsg = "UNKOWN";
        this.jsonContent = null;
        this.operateType = (byte) -1;
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.jsonContent = new JSONObject(str);
        } catch (Exception e10) {
            this.jsonContent = null;
            QLog.w(TAG, e10.getMessage(), e10);
        }
    }
}
