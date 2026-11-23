.class public Lcom/sdk/x/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/x/a$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "com.sdk.x.a"

.field public static i:Ljava/lang/Boolean;

.field public static j:Landroid/net/ConnectivityManager$NetworkCallback;

.field public static k:J

.field public static l:Ljava/lang/String;


# instance fields
.field public a:Lcom/sdk/base/api/CallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Landroid/content/Context;

.field public c:Lcom/sdk/x/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/x/a<",
            "TT;>.d;"
        }
    .end annotation
.end field

.field public d:Lcom/sdk/x/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/x/a<",
            "TT;>.d;"
        }
    .end annotation
.end field

.field public e:Lcom/sdk/a/c;

.field public f:Landroid/net/ConnectivityManager;

.field public g:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/x/a;->i:Ljava/lang/Boolean;

    const-string v0, "\n"

    sput-object v0, Lcom/sdk/x/a;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sdk/x/a;->a(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V

    return-void
.end method

.method public static a(Lcom/sdk/x/a;)Ljava/net/URL;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/sdk/f/d$b;->b:Lcom/sdk/f/d$b;

    invoke-virtual {p0}, Lcom/sdk/f/d$b;->a()Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/sdk/f/d;->c:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sdk/f/d$b;->c:Lcom/sdk/f/d$b;

    invoke-virtual {p0}, Lcom/sdk/f/d$b;->a()Ljava/lang/String;

    move-result-object p0

    .line 3
    :cond_0
    sget-boolean v0, Lcom/sdk/t/a;->f:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/dro/netm/v2.0/qc"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/dro/netm/v1.0/qc"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-nez v4, :cond_3

    instance-of v4, v3, Ljava/net/Inet6Address;

    if-eqz v4, :cond_2

    :cond_3
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    return-object v0
.end method

.method public a(I)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    const-string v0, "\u64cd\u4f5c\u9891\u7e41,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const-string v1, "CUCC"

    sget-object v2, Lcom/sdk/x/a;->h:Ljava/lang/String;

    const-string v3, "public void getAuthoriseCode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    const v3, 0x31129

    const/4 v5, 0x1

    :try_start_0
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->useCache()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {v6, p1, v1}, Lcom/sdk/b/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v6}, Lcom/sdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6}, Lcom/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x0

    const-string v10, "\u6210\u529f"

    const/16 v11, 0x64

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/sdk/x/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {v6}, Lcom/sdk/p/b;->a(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v5, v3, v0}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v6, Lcom/sdk/x/a$c;

    invoke-direct {v6, p0, p1}, Lcom/sdk/x/a$c;-><init>(Lcom/sdk/x/a;I)V

    sput-object v6, Lcom/sdk/x/a;->j:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/sdk/x/a;->k:J

    const-string p1, "public void getAuthoriseCode \u5f3a\u5f00\u524d"

    invoke-static {v2, p1, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    iget-object p1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sdk/x/a;->f:Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_2

    sget-object v2, Lcom/sdk/x/a;->j:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v2, :cond_2

    invoke-static {p1, v2}, Lcom/sdk/a/a;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 5
    :cond_2
    new-instance p1, Lcom/sdk/x/a$d;

    new-instance v11, Lcom/sdk/x/b;

    invoke-direct {v11, p0}, Lcom/sdk/x/b;-><init>(Lcom/sdk/x/a;)V

    const-wide/16 v8, 0x7d0

    const/4 v10, 0x1

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sdk/x/a$d;-><init>(Lcom/sdk/x/a;JILcom/sdk/base/api/CallBackTimeOut;)V

    iput-object p1, p0, Lcom/sdk/x/a;->d:Lcom/sdk/x/a$d;

    .line 6
    iget-object v2, p1, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    iget-wide v6, p1, Lcom/sdk/x/a$d;->b:J

    invoke-virtual {v2, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 7
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->useCache()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {p1, v4, v1}, Lcom/sdk/b/a;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/sdk/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lcom/sdk/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v7, 0x0

    const-string v8, "\u6210\u529f"

    const/16 v9, 0x64

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/sdk/x/a;->a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/sdk/p/b;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0, v5, v3, v0}, Lcom/sdk/x/a;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sdk/x/a;->a()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/sdk/w/a;

    invoke-direct {v0}, Lcom/sdk/w/a;-><init>()V

    iget-object v1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    new-instance v2, Lcom/sdk/x/c;

    invoke-direct {v2, p0, v4}, Lcom/sdk/x/c;-><init>(Lcom/sdk/x/a;I)V

    invoke-virtual {v0, v1, v4, p1, v2}, Lcom/sdk/w/a;->a(Landroid/content/Context;ILjava/util/List;Lcom/sdk/e/a;)Lcom/sdk/a/c;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    :goto_0
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 7

    const-string v0, "seqAndroidEmpty"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->getMobileLog()Lcom/sdk/f/b;

    move-result-object v2

    .line 10
    iget-object v2, v2, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "seq"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toFailed seq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v3, Lcom/sdk/x/a;->h:Ljava/lang/String;

    const-string v4, "toFailed \u51fd\u6570 \u53bb\u6389\u8d85\u65f6\u56de\u8c03 "

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/sdk/x/a;->c:Lcom/sdk/x/a$d;

    if-eqz v4, :cond_1

    .line 12
    iget-object v6, v4, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    :cond_1
    iget-object v4, p0, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sdk/a/c;->a()V

    iput-object v1, p0, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    :cond_2
    iget-object v4, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    if-eqz v4, :cond_3

    invoke-interface {v4, p1, p2, p3, v2}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    :cond_3
    iget-object v2, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/sdk/base/module/manager/SDKManager;->releaseConnect(Landroid/content/Context;)V

    const-string v2, "toFailed \u51fd\u6570 releaseConnect \u5b8c\u6210"

    invoke-static {v3, v2, v5}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->getMobileLog()Lcom/sdk/f/b;

    move-result-object v2

    .line 14
    iget-object v2, v2, Lcom/sdk/f/b;->c:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    iget-object v2, p0, Lcom/sdk/x/a;->c:Lcom/sdk/x/a$d;

    if-eqz v2, :cond_5

    .line 16
    iget-object v3, v2, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    :cond_5
    iget-object v2, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    if-eqz v2, :cond_6

    invoke-interface {v2, p1, p2, p3, v0}, Lcom/sdk/base/api/CallBack;->onFailed(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    :cond_6
    iget-object p1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->releaseConnect(Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method public final a(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "seqAndroidEmpty"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p5}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "seq"

    const-string v5, ""

    invoke-static {v3, v4, v5}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object p5, v0

    :cond_0
    sget-object v3, Lcom/sdk/x/a;->h:Ljava/lang/String;

    const-string v4, "\u53bb\u6389\u8d85\u65f6\u56de\u8c03"

    invoke-static {v3, v4, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v4, p0, Lcom/sdk/x/a;->c:Lcom/sdk/x/a$d;

    if-eqz v4, :cond_1

    .line 18
    iget-object v5, v4, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    :cond_1
    iget-object v4, p0, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sdk/a/c;->a()V

    iput-object v1, p0, Lcom/sdk/x/a;->e:Lcom/sdk/a/c;

    :cond_2
    iget-object v4, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    if-eqz v4, :cond_3

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/sdk/base/api/CallBack;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    :cond_3
    iget-object v4, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/sdk/base/module/manager/SDKManager;->releaseConnect(Landroid/content/Context;)V

    const-string v4, "toSucceed \u51fd\u6570 releaseConnect \u5b8c\u6210"

    invoke-static {v3, v4, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {p5}, Lcom/sdk/r/a;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v9, v0

    goto :goto_0

    :cond_4
    move-object v9, p5

    :goto_0
    iget-object p5, p0, Lcom/sdk/x/a;->c:Lcom/sdk/x/a$d;

    if-eqz p5, :cond_5

    .line 20
    iget-object v0, p5, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    invoke-virtual {v0, p5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    :cond_5
    iget-object v4, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    if-eqz v4, :cond_6

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/sdk/base/api/CallBack;->onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    :cond_6
    iget-object p1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->releaseConnect(Landroid/content/Context;)V

    sget-object p1, Lcom/sdk/x/a;->h:Ljava/lang/String;

    const-string p2, "toSucceed \u5f02\u5e38\u51fd\u6570 releaseConnect \u5b8c\u6210"

    invoke-static {p1, p2, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Context;ILcom/sdk/base/api/CallBack;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sdk/base/api/CallBack<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p3, p0, Lcom/sdk/x/a;->a:Lcom/sdk/base/api/CallBack;

    iput-object p1, p0, Lcom/sdk/x/a;->b:Landroid/content/Context;

    if-gtz p2, :cond_0

    const/16 p2, 0x1e

    :cond_0
    iget-object p1, p0, Lcom/sdk/x/a;->g:Landroid/os/Handler;

    const/16 p3, 0x64

    if-nez p1, :cond_1

    new-instance p1, Lcom/sdk/x/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sdk/x/a$a;-><init>(Lcom/sdk/x/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sdk/x/a;->g:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object p1, p0, Lcom/sdk/x/a;->g:Landroid/os/Handler;

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance p1, Lcom/sdk/x/a$d;

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v4, p2

    new-instance v7, Lcom/sdk/x/a$b;

    invoke-direct {v7, p0}, Lcom/sdk/x/a$b;-><init>(Lcom/sdk/x/a;)V

    const/4 v6, 0x2

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/sdk/x/a$d;-><init>(Lcom/sdk/x/a;JILcom/sdk/base/api/CallBackTimeOut;)V

    iput-object p1, p0, Lcom/sdk/x/a;->c:Lcom/sdk/x/a$d;

    .line 8
    iget-object p2, p1, Lcom/sdk/x/a$d;->a:Landroid/os/Handler;

    iget-wide v0, p1, Lcom/sdk/x/a$d;->b:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    invoke-static {}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->init()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method
