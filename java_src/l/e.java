package l;

import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.serializer.t1;
import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class e extends UDF {
    public e() {
        t1.f().j(false);
    }

    public String a(String str, String str2) throws Exception {
        return com.alibaba.fastjson.a.toJSONString(JSONPath.m(com.alibaba.fastjson.a.parse(str), str2));
    }
}
