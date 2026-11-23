package l;

import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.parser.k;
import com.alibaba.fastjson.serializer.t1;
import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class b extends UDF {
    public b() {
        t1.f().j(false);
        k.k().p(false);
    }

    public String a(String str, String str2, Boolean... boolArr) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.b(obj, str2, boolArr);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public String b(String str, String str2, Double... dArr) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.b(obj, str2, dArr);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public String c(String str, String str2, Long... lArr) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.b(obj, str2, lArr);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }

    public String d(String str, String str2, String... strArr) throws Exception {
        Object obj = com.alibaba.fastjson.a.parse(str);
        JSONPath.b(obj, str2, strArr);
        return com.alibaba.fastjson.a.toJSONString(obj);
    }
}
