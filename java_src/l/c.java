package l;

import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.serializer.t1;
import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class c extends UDF {
    public c() {
        t1.f().j(false);
    }

    public Boolean a(String str, String str2) throws Exception {
        return Boolean.valueOf(JSONPath.g(com.alibaba.fastjson.a.parse(str), str2));
    }
}
