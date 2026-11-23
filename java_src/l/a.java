package l;

import com.aliyun.odps.udf.UDF;

/* JADX INFO: loaded from: classes7.dex */
public class a extends UDF {

    /* JADX INFO: renamed from: l.a$a, reason: collision with other inner class name */
    public static class C1207a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f93906a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f93907b;

        public int a() {
            return this.f93906a;
        }

        public String b() {
            return this.f93907b;
        }

        public void c(int i10) {
            this.f93906a = i10;
        }

        public void d(String str) {
            this.f93907b = str;
        }
    }

    public String a() throws Exception {
        C1207a c1207a = new C1207a();
        c1207a.c(123);
        c1207a.d("xxx");
        com.alibaba.fastjson.a.parseObject(com.alibaba.fastjson.a.toJSONString(c1207a), C1207a.class);
        return "ok";
    }
}
