.class final Lms/bz/bd/c/Pgl/c0;
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

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-lt p1, p2, :cond_1

    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/pblw;->c()Lms/bz/bd/c/Pgl/pblw;

    move-result-object p1

    invoke-virtual {p1}, Lms/bz/bd/c/Pgl/pblw;->tt()Landroid/content/Context;

    move-result-object p1

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "d8d57a"

    const/16 p2, 0xc

    new-array v5, p2, [B

    fill-array-data v5, :array_0

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/x;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_0

    const-string v4, "325376"

    new-array v5, p4, [B

    const/16 p1, 0x73

    aput-byte p1, v5, p3

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v4, "bf5e48"

    new-array v5, p4, [B

    const/16 p1, 0x23

    aput-byte p1, v5, p3

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    new-array v5, p4, [B

    const/16 p1, 0x76

    aput-byte p1, v5, p3

    const v0, 0x1000001

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v4, "703b36"

    invoke-static/range {v0 .. v5}, Lcom/volcengine/mobsecBiz/matrix/pgla;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    nop

    :array_0
    .array-data 1
        0x76t
        0x35t
        0x19t
        0x4ft
        0xdt
        0x75t
        0x73t
        0x10t
        0x23t
        0x6ct
        0x61t
        0x23t
    .end array-data
.end method
