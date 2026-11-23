package l;

import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.serializer.t1;
import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class d extends UDF {
    public d() {
        t1.f().j(false);
    }

    public Boolean a(String str, String str2, Boolean bool) throws Exception {
        return Boolean.valueOf(JSONPath.i(com.alibaba.fastjson.a.parse(str), str2, bool));
    }

    public Boolean b(String str, String str2, Double d10) throws Exception {
        return Boolean.valueOf(JSONPath.i(com.alibaba.fastjson.a.parse(str), str2, d10));
    }

    public Boolean c(String str, String str2, Long l10) throws Exception {
        return Boolean.valueOf(JSONPath.i(com.alibaba.fastjson.a.parse(str), str2, l10));
    }

    public Boolean d(String str, String str2, String str3) throws Exception {
        return Boolean.valueOf(JSONPath.i(com.alibaba.fastjson.a.parse(str), str2, str3));
    }
}
