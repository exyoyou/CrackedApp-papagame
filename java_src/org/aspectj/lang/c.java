package org.aspectj.lang;

import ad.z;

/* JADX INFO: loaded from: classes4.dex */
public interface c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f95144a = "method-execution";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f95145b = "method-call";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f95146c = "constructor-execution";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f95147d = "constructor-call";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f95148e = "field-get";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f95149f = "field-set";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f95150g = "staticinitialization";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f95151h = "preinitialization";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f95152i = "initialization";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f95153j = "exception-handler";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f95154k = "lock";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f95155l = "unlock";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f95156m = "adviceexecution";

    public interface a extends b {
    }

    public interface b {
        String b();

        String f();

        z g();

        int getId();

        String getKind();

        e h();

        String toString();
    }

    String b();

    Object c();

    b e();

    String f();

    z g();

    Object[] getArgs();

    String getKind();

    Object getTarget();

    e h();

    String toString();
}
