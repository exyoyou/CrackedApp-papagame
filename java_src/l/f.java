package l;

import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.parser.k;
import com.alibaba.fastjson.serializer.t1;
import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class f extends UDF {
    public f() {
        t1.f().j(false);
        k.k().p(false);
    }

    public String a(String str, String str2, Boolean bool) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.w(obj, str2, bool);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public String b(String str, String str2, Double d10) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.w(obj, str2, d10);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public String c(String str, String str2, Long l10) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.w(obj, str2, l10);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public String d(String str, String str2, String str3) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.w(obj, str2, str3);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }
}
