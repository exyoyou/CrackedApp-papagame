.class final Lms/bz/bd/c/Pgl/z;
.super Lms/bz/bd/c/Pgl/pblz$pgla;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblz$pgla;-><init>()V

    return-void
.end method


# virtual methods
.method protected final c(JLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    :try_start_0
    const-string v4, "457868"

    const/16 p2, 0x22

    new-array v5, p2, [B

    fill-array-data v5, :array_0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "2071bc"

    const/4 p4, 0x1

    new-array v5, p4, [B

    const/4 p4, 0x0

    aput-byte p2, v5, p4

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-array v0, p4, [Ljava/lang/Class;

    invoke-virtual {p3, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_0

    new-array p3, p4, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    :cond_0
    return-object p1

    :array_0
    .array-data 1
        0x26t
        0x38t
        0x49t
        0x2t
        0xbt
        0x36t
        0x23t
        0x11t
        0x62t
        0x69t
        0x2bt
        0x34t
        0x41t
        0x2t
        0x4t
        0x20t
        0x35t
        0x7t
        0x63t
        0x6bt
        0x6bt
        0x24t
        0x41t
        0x42t
        0x1at
        0x20t
        0x25t
        0x5at
        0x6bt
        0x64t
        0x6bt
        0x1at
        0x77t
        0x6et
    .end array-data
.end method
