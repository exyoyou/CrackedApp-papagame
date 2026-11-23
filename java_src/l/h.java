package l;

import com.alibaba.fastjson.JSONPath;
import com.aliyun.odps.udf.OdpsType;
import com.aliyun.odps.udf.UDFException;
import com.aliyun.odps.udf.UDTF;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public class h extends UDTF {
    public OdpsType[] a(OdpsType[] odpsTypeArr) throws Exception {
        OdpsType[] odpsTypeArr2 = new OdpsType[odpsTypeArr.length - 1];
        Arrays.fill(odpsTypeArr2, OdpsType.STRING);
        return odpsTypeArr2;
    }

    public void b(Object[] objArr) throws UDFException {
        Object obj = com.alibaba.fastjson.a.parse((String) objArr[0]);
        Object[] objArr2 = new Object[objArr.length - 1];
        for (int i10 = 1; i10 < objArr.length; i10++) {
            objArr2[i10 - 1] = com.alibaba.fastjson.a.toJSONString(JSONPath.m(obj, (String) objArr[i10]));
        }
        forward(objArr2);
    }
}
