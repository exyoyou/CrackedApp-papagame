package cn.aigestudio.downloader.bizs;

/* JADX INFO: loaded from: classes7.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean f557a = true;

    /* JADX INFO: renamed from: cn.aigestudio.downloader.bizs.a$a, reason: collision with other inner class name */
    static final class C0025a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final int f558a = 10000;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f559b = 30000;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f560c = 5;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final long f561d = 31457280;

        C0025a() {
        }
    }

    static final class b {
        static final int A = 408;
        static final int B = 409;
        static final int C = 410;
        static final int D = 411;
        static final int E = 412;
        static final int F = 413;
        static final int G = 414;
        static final int H = 415;
        static final int I = 416;
        static final int J = 417;
        static final int K = 422;
        static final int L = 423;
        static final int M = 424;
        static final int N = 500;
        static final int O = 501;
        static final int P = 502;
        static final int Q = 503;
        static final int R = 504;
        static final int S = 505;
        static final int T = 507;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final int f562a = 100;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final int f563b = 101;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final int f564c = 102;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final int f565d = 200;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final int f566e = 201;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final int f567f = 202;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final int f568g = 203;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static final int f569h = 204;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        static final int f570i = 205;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        static final int f571j = 206;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        static final int f572k = 207;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        static final int f573l = 300;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        static final int f574m = 301;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        static final int f575n = 302;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        static final int f576o = 303;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        static final int f577p = 304;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        static final int f578q = 305;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        static final int f579r = 307;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        static final int f580s = 400;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        static final int f581t = 401;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        static final int f582u = 402;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        static final int f583v = 403;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        static final int f584w = 404;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        static final int f585x = 405;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        static final int f586y = 406;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        static final int f587z = 407;

        b() {
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final String f588a = "task_info";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final String f589b = "base_url";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        static final String f590c = "real_url";

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static final String f591d = "file_path";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final String f592e = "currentBytes";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        static final String f593f = "totalBytes";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        static final String f594g = "file_name";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static final String f595h = "mime_type";

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        static final String f596i = "e_tag";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        static final String f597j = "disposition";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        static final String f598k = "location";

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        static final String f599l = "thread_info";

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        static final String f600m = "base_url";

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        static final String f601n = "start";

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        static final String f602o = "end";

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        static final String f603p = "id";

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        static final String f604q = "CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, file_name CHAR, mime_type CHAR, e_tag CHAR, disposition CHAR, location CHAR, currentBytes INTEGER, totalBytes INTEGER)";

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        static final String f605r = "CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, start BIGINT, end BIGINT, id CHAR)";

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        static final String f606s = "DROP TABLE IF EXISTS task_info";

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        static final String f607t = "DROP TABLE IF EXISTS thread_info";

        c() {
        }
    }

    private a() {
    }
}
