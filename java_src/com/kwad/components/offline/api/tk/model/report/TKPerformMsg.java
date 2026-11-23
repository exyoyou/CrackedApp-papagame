package com.kwad.components.offline.api.tk.model.report;

import com.baidu.mobads.sdk.internal.d;
import com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse;
import com.kwad.components.offline.api.core.utils.JsonHelper;
import java.io.Serializable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class TKPerformMsg extends BaseOfflineCompoJsonParse<TKPerformMsg> implements Serializable {
    public static final int ENTER_SCENE = -1;
    public static final int OTHER_FAIL = 3;
    public static final int PAGE_STATUS_FAIL = 2;
    public static final int START = 0;
    public static final int SUCCESS = 1;
    public static final int TK_NOT_READY = 4;
    private static final long serialVersionUID = -5293371882532982729L;
    public String errorDetail;
    public String errorReason;
    public long getViewEndTime;
    public long initTime;
    public long loadTime;
    public long registerEndTime;
    public long renderIdleTime;
    public int renderState;
    public long renderTime;

    @RENDER_TYPE
    public int renderType;
    public int source;
    public String templateId;
    private int tkPublishType;
    public String versionCode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ERROR_REASON {
        public static final String KSAD_TK_CONFIG_LOST = "config_lost";
        public static final String KSAD_TK_CONFIG_PARSE_FAIL = "config_parse_fail";
        public static final String KSAD_TK_JS_EMPTY = "js_empty";
        public static final String KSAD_TK_MD5_NOT_MATCH = "md5_not_match";
        public static final String KSAD_TK_NO_FILE = "no_file";
        public static final String KSAD_TK_NO_TEMPLATE = "no_template";
        public static final String KSAD_TK_OFFLINE_FAILED = "offline_failed";
        public static final String KSAD_TK_RENDER_FAIL = "ksad_tk_render_fail";
        public static final String KSAD_TK_SO_FAIL = "so_fail";
    }

    public @interface RENDER_TYPE {
        public static final int MULTIPLE_RENDER = 1;
        public static final int SINGLE_RENDER = 0;
    }

    public TKPerformMsg(int i10) {
        setSource(i10);
    }

    public TKPerformMsg setErrorDetail(String str) {
        this.errorDetail = str;
        return this;
    }

    public TKPerformMsg setErrorReason(String str) {
        this.errorReason = str;
        return this;
    }

    public TKPerformMsg setGetViewEndTime(long j10) {
        this.getViewEndTime = j10;
        return this;
    }

    public TKPerformMsg setInitTime(long j10) {
        this.initTime = j10;
        return this;
    }

    public TKPerformMsg setLoadTime(long j10) {
        this.loadTime = j10;
        return this;
    }

    public TKPerformMsg setRegisterEndTime(long j10) {
        this.registerEndTime = j10;
        return this;
    }

    public TKPerformMsg setRenderIdleTime(long j10) {
        this.renderIdleTime = j10;
        return this;
    }

    public TKPerformMsg setRenderState(int i10) {
        this.renderState = i10;
        return this;
    }

    public TKPerformMsg setRenderTime(long j10) {
        this.renderTime = j10;
        return this;
    }

    public TKPerformMsg setRenderType(int i10) {
        this.renderType = i10;
        return this;
    }

    public TKPerformMsg setSource(int i10) {
        this.source = i10;
        return this;
    }

    public TKPerformMsg setTKPublishType(int i10) {
        this.tkPublishType = i10;
        return this;
    }

    public TKPerformMsg setTemplateId(String str) {
        this.templateId = str;
        return this;
    }

    public TKPerformMsg setVersionCode(String str) {
        this.versionCode = str;
        return this;
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public void parseJson(TKPerformMsg tKPerformMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        tKPerformMsg.source = jSONObject.optInt("source");
        tKPerformMsg.renderState = jSONObject.optInt("render_state");
        tKPerformMsg.errorReason = jSONObject.optString("error_reason");
        if (jSONObject.opt("error_reason") == JSONObject.NULL) {
            tKPerformMsg.errorReason = "";
        }
        tKPerformMsg.renderTime = jSONObject.optLong("render_time");
        tKPerformMsg.templateId = jSONObject.optString("template_id");
        if (jSONObject.opt("template_id") == JSONObject.NULL) {
            tKPerformMsg.templateId = "";
        }
        tKPerformMsg.versionCode = jSONObject.optString("version_code");
        if (jSONObject.opt("version_code") == JSONObject.NULL) {
            tKPerformMsg.versionCode = "";
        }
        tKPerformMsg.loadTime = jSONObject.optLong(d.f7829b);
        tKPerformMsg.initTime = jSONObject.optLong(d.f7828a);
        tKPerformMsg.tkPublishType = jSONObject.optInt("tk_publish_type");
        tKPerformMsg.renderType = jSONObject.optInt("render_type");
        tKPerformMsg.renderIdleTime = jSONObject.optLong("render_idle_time");
        tKPerformMsg.registerEndTime = jSONObject.optLong("register_end_time");
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public JSONObject toJson(TKPerformMsg tKPerformMsg, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JsonHelper.putValue(jSONObject, "render_state", tKPerformMsg.renderState);
        int i10 = tKPerformMsg.source;
        if (i10 != 0) {
            JsonHelper.putValue(jSONObject, "source", i10);
        }
        String str = tKPerformMsg.errorReason;
        if (str != null && !str.equals("")) {
            JsonHelper.putValue(jSONObject, "error_reason", tKPerformMsg.errorReason);
        }
        String str2 = tKPerformMsg.errorDetail;
        if (str2 != null && !str2.equals("")) {
            JsonHelper.putValue(jSONObject, "error_detail", tKPerformMsg.errorDetail);
        }
        long j10 = tKPerformMsg.renderTime;
        if (j10 != 0) {
            JsonHelper.putValue(jSONObject, "render_time", j10);
        }
        String str3 = tKPerformMsg.templateId;
        if (str3 != null && !str3.equals("")) {
            JsonHelper.putValue(jSONObject, "template_id", tKPerformMsg.templateId);
        }
        String str4 = tKPerformMsg.versionCode;
        if (str4 != null && !str4.equals("")) {
            JsonHelper.putValue(jSONObject, "version_code", tKPerformMsg.versionCode);
        }
        long j11 = tKPerformMsg.loadTime;
        if (j11 != 0) {
            JsonHelper.putValue(jSONObject, d.f7829b, j11);
        }
        long j12 = tKPerformMsg.initTime;
        if (j12 != 0) {
            JsonHelper.putValue(jSONObject, d.f7828a, j12);
        }
        int i11 = tKPerformMsg.tkPublishType;
        if (i11 != 0) {
            JsonHelper.putValue(jSONObject, "tk_publish_type", i11);
        }
        int i12 = tKPerformMsg.renderType;
        if (i12 != 0) {
            JsonHelper.putValue(jSONObject, "render_type", i12);
        }
        long j13 = tKPerformMsg.renderIdleTime;
        if (j13 != 0) {
            JsonHelper.putValue(jSONObject, "render_idle_time", j13);
        }
        long j14 = tKPerformMsg.registerEndTime;
        if (j14 != 0) {
            JsonHelper.putValue(jSONObject, "register_end_time", j14);
        }
        long j15 = tKPerformMsg.getViewEndTime;
        if (j15 != 0) {
            JsonHelper.putValue(jSONObject, "get_view_end_time", j15);
        }
        return jSONObject;
    }

    @Override // com.kwad.components.offline.api.core.model.BaseOfflineCompoJsonParse
    public JSONObject toJson(TKPerformMsg tKPerformMsg) {
        return toJson(tKPerformMsg, (JSONObject) null);
    }
}
