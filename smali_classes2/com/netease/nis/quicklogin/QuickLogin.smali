.class public Lcom/netease/nis/quicklogin/QuickLogin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/QuickLogin$d;,
        Lcom/netease/nis/quicklogin/QuickLogin$e;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final SDK_VERSION:Ljava/lang/String; = "3.3.8"

.field public static final TAG:Ljava/lang/String; = "QuickLogin"

.field public static fetchNumberTimeout:I = 0x5

.field public static isAllowedUploadInfo:Z = true

.field public static prefetchDataStartTime:J = 0x0L

.field public static prefetchNumberTimeout:I = 0x8

.field public static final publicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/nis/quicklogin/a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lorg/json/JSONObject;

.field private k:Z

.field private l:Z

.field private m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

.field private n:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private o:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->j:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    .line 6
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/QuickLogin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;I)I
    .locals 0

    .line 8
    iput p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;J)J
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->o:J

    return-wide p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/a;)Lcom/netease/nis/quicklogin/a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/nis/quicklogin/listener/QuickLoginListener;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    const-string v2, "businessId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    iget-boolean v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-eqz v1, :cond_0

    .line 40
    iget p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    const-string v1, "operatorType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    .line 41
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "envType"

    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0x20

    .line 43
    invoke-static {p1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "nonce"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string p1, "timestamp"

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "cacheType"

    const/4 v1, 0x2

    .line 45
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 49
    iget-object v4, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AES\u52a0\u5bc6\u5f02\u5e38\uff1a"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v3, "AES_ENCRYPT_ERROR"

    const/4 v5, -0x1

    move-object v2, p0

    .line 51
    invoke-direct/range {v2 .. v7}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 52
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"

    invoke-static {p2, p3}, Lcom/netease/nis/basesdk/EncryptUtil;->RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 53
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "d"

    .line 54
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rk"

    .line 55
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/netease/nis/quicklogin/QuickLogin;->getSDKVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "version"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "extData"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p3
.end method

.method private a()V
    .locals 4

    const-string v0, "SDK_VERSION"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.netease.nis.alivedetected.AliveDetector"

    .line 9
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "3.1.7"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "\u9879\u76ee\u4e2d\u63a5\u5165\u7684\u6d3b\u4f53\u68c0\u6d4bsdk\u7248\u672c\u4f4e\u4e8e3.1.7\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u5e76\u5347\u7ea7\u7248\u672c"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    const-string v2, "com.netease.nis.ocr.OcrScanner"

    .line 13
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "1.1.3"

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\u9879\u76ee\u4e2d\u63a5\u5165\u7684\u8eab\u4efd\u8bc1\u68c0\u6d4bsdk\u7248\u672c\u4f4e\u4e8e1.1.3\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d\u5e76\u5347\u7ea7\u7248\u672c"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_3
    :goto_1
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .line 59
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/nis/quicklogin/utils/g;->a(ILjava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p6}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    const-string v1, "\u6613\u76fetoken\u4e3a\u7a7a"

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_1
    instance-of v0, p1, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-interface {p1, v1, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 19
    iget v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 p1, -0x5

    const-string p3, "\u65e0\u6cd5\u5224\u65ad\u7f51\u7edc\u7c7b\u578b"

    .line 20
    invoke-direct {p0, p1, p3}, Lcom/netease/nis/quicklogin/QuickLogin;->a(ILjava/lang/String;)V

    .line 21
    invoke-direct {p0, p2, p3}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 p1, -0x4

    const-string p3, "\u5f53\u524d\u4ec5wifi\u8054\u7f51"

    .line 22
    invoke-direct {p0, p1, p3}, Lcom/netease/nis/quicklogin/QuickLogin;->a(ILjava/lang/String;)V

    const-string p1, "\u5f53\u524d\u4ec5wifi\u8054\u7f51\uff0c\u8bf7\u8fde\u63a5\u6570\u636e\u6d41\u91cf"

    .line 23
    invoke-direct {p0, p2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-nez v0, :cond_3

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    :cond_2
    const-string p1, "\u8f93\u5165\u624b\u673a\u53f7\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    .line 26
    invoke-direct {p0, p2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v0, 0x10

    .line 27
    invoke-static {v0}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xc

    .line 28
    invoke-static {v0}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v7

    .line 29
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)Ljava/util/Map;

    move-result-object p1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "terminal"

    const-string v2, "1"

    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v2, "3.3.8"

    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 36
    iget-object v10, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    new-instance v11, Lcom/netease/nis/quicklogin/QuickLogin$c;

    move-object v1, v11

    move-object v2, p0

    move-object v5, p2

    move-object v8, p3

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/netease/nis/quicklogin/QuickLogin$c;-><init>(Lcom/netease/nis/quicklogin/QuickLogin;JLcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin$d;Ljava/util/Map;)V

    invoke-static {v10, p1, v0, v11}, Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 61
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    const-string v1, "parseErr"

    const-string v7, ""

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 63
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    const-string v1, "apiErr"

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method private b()Lcom/netease/nis/quicklogin/a;
    .locals 2

    .line 3
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appKey,appId is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 8
    new-instance v1, Lcom/netease/nis/quicklogin/a$a;

    invoke-direct {v1}, Lcom/netease/nis/quicklogin/a$a;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lcom/netease/nis/quicklogin/a$a;->a(Z)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->a(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->i:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->b(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->c(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    .line 13
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->a(I)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    .line 14
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/a;

    move-result-object v0

    return-object v0

    .line 15
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mContext is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "YDToken is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/QuickLogin;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic f(Lcom/netease/nis/quicklogin/QuickLogin;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/QuickLogin;->b()Lcom/netease/nis/quicklogin/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getInstance()Lcom/netease/nis/quicklogin/QuickLogin;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/nis/quicklogin/QuickLogin$e;->a()Lcom/netease/nis/quicklogin/QuickLogin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public checkNetWork(Landroid/content/Context;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->a(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    return p1
.end method

.method public clearScripCache(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/auth/c;->delScrip()V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/sdk/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "timeend"

    .line 12
    .line 13
    const-wide/16 v1, 0x0

    .line 14
    .line 15
    invoke-static {p1, v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "clearScripCache Exception="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public getOperatorType(Landroid/content/Context;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->b(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x5

    .line 15
    return p1
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.3.8"

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 6
    .param p2    # Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "https://ye.dun.163yun.com/v1/preCheck"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    .line 11
    .line 12
    new-instance v0, Lcom/netease/nis/quicklogin/QuickLogin$b;

    .line 13
    .line 14
    invoke-direct {v0, p0, p2}, Lcom/netease/nis/quicklogin/QuickLogin$b;-><init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "json\u89e3\u6790\u5f02\u5e38\uff1a"

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    const-string v1, "JSON_ENCRYPT_ERROR"

    .line 49
    .line 50
    const/4 v3, -0x2

    .line 51
    const-string v5, ""

    .line 52
    .line 53
    move-object v0, p0

    .line 54
    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/QuickLogin;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/b;->c()Lcom/netease/nis/quicklogin/utils/b;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p1, p2, v0}, Lcom/netease/nis/quicklogin/utils/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a()Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 28
    .line 29
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/utils/g;->a(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public isPreLoginResultValid()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->o:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/32 v2, 0x18e70

    .line 9
    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-gtz v4, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public onePass(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 3
    .param p1    # Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "\u9884\u53d6\u53f7\u5f02\u5e38\uff0c\u8bf7\u67e5\u770b\u9884\u53d6\u53f7\u5bf9\u5e94\u7684\u9519\u8bef\u56de\u8c03"

    .line 6
    .line 7
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/a;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method public prefetchMobileNumber(Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 6
    .param p1    # Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "https://ye.dun.163yun.com/v1/oneclick/preCheck"

    .line 6
    .line 7
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    .line 11
    .line 12
    new-instance v0, Lcom/netease/nis/quicklogin/QuickLogin$a;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/netease/nis/quicklogin/QuickLogin$a;-><init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v1, p1, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v1, "json\u89e3\u6790\u5f02\u5e38\uff1a"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const-string v1, "JSON_ENCRYPT_ERROR"

    .line 50
    .line 51
    const/4 v3, -0x2

    .line 52
    const-string v5, ""

    .line 53
    .line 54
    move-object v0, p0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public quitActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->e()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeCustomView(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(ILandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAllowedUploadInfo(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/netease/nis/quicklogin/QuickLogin;->isAllowedUploadInfo:Z

    .line 2
    .line 3
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .line 1
    sput-boolean p1, Lcom/netease/nis/quicklogin/QuickLogin;->DEBUG:Z

    .line 2
    .line 3
    const-string v0, "QuickLogin"

    .line 4
    .line 5
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->setTag(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->enableLog(Z)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/sdk/base/module/manager/SDKManager;->setDebug(Z)V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/cmic/gen/sdk/auth/c;->setDebugMode(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setExtendData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->j:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-void
.end method

.method public setFetchNumberTimeout(I)V
    .locals 0

    .line 1
    sput p1, Lcom/netease/nis/quicklogin/QuickLogin;->fetchNumberTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setPreCheckUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    .line 3
    .line 4
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public setPrefetchNumberTimeout(I)V
    .locals 0

    .line 1
    sput p1, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    .line 2
    .line 3
    return-void
.end method

.method public setPrivacyState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setUnifyUiConfig(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 2
    .line 3
    return-void
.end method
