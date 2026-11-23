.class public Lcom/sdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "com.sdk.a.a"

.field public static d:Ljava/lang/Boolean;

.field public static e:Landroid/net/Network;

.field public static f:Z

.field public static g:Landroid/net/ConnectivityManager$NetworkCallback;


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field public b:Landroid/net/ConnectivityManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sdk/a/a;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sdk/a/a;->f:Z

    sput-object v0, Lcom/sdk/a/a;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    sput-object v0, Lcom/sdk/a/a;->e:Landroid/net/Network;

    iput-object v0, p0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/net/URL;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sdk/a/a;->c:Ljava/lang/String;

    const-string v1, "public CellularConnection \u5f00\u59cb"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    :try_start_0
    sget-object p1, Lcom/sdk/a/a;->e:Landroid/net/Network;

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/sdk/a/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p1, p2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CellularConnection: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Lcom/sdk/a/a;->f:Z

    new-instance p1, Lcom/sdk/a/a$a;

    invoke-direct {p1, p0, p2}, Lcom/sdk/a/a$a;-><init>(Lcom/sdk/a/a;Ljava/net/URL;)V

    sput-object p1, Lcom/sdk/a/a;->g:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, p1}, Lcom/sdk/a/a;->a(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    sget-object p2, Lcom/sdk/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sdk/a/a;->d:Ljava/lang/Boolean;

    invoke-static {p2, p1, v0}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :goto_1
    return-void
.end method

.method public static a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 4

    .line 2
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sget-object v2, Lcom/sdk/a/a;->c:Ljava/lang/String;

    const-string v3, "\u8bf7\u6c42\u7f51\u7edc requestNetwork \u524d  "

    invoke-static {v2, v3, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p0, v0, p1}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p0, "\u8bf7\u6c42\u7f51\u7edc requestNetwork \u540e  "

    invoke-static {v2, p0, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/net/HttpURLConnection;
    .locals 7

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/sdk/a/a;->a:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    return-object v2

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sdk/a/a;->b:Landroid/net/ConnectivityManager;

    invoke-static {v0, p1}, Lcom/sdk/a/a;->a(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
