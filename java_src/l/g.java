package l;

import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.serializer.t1;
import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class g extends UDF {
    public g() {
        t1.f().j(false);
    }

    public Long a(String str, String str2) throws Exception {
        return Long.valueOf(JSONPath.B(com.alibaba.fastjson.a.parse(str), str2));
    }
}
