.class public Lcom/kwai/monitor/oaid/OADIDSDKHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/monitor/oaid/OADIDSDKHelper$IIdentifierListenerImpl;,
        Lcom/kwai/monitor/oaid/OADIDSDKHelper$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-class v1, Lcom/bun/miitmdid/interfaces/IIdentifierListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "onSupport"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    const-class v5, Lcom/bun/miitmdid/interfaces/IdSupplier;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 4
    new-instance v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper$1;

    invoke-direct {v1}, Lcom/kwai/monitor/oaid/OADIDSDKHelper$1;-><init>()V

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/kwai/monitor/oaid/OADIDSDKHelper$1;->onSupport(Lcom/bun/miitmdid/interfaces/IdSupplier;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 6
    :try_start_2
    const-class v2, Lcom/kwai/monitor/oaid/OADIDSDKHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v3

    :catchall_0
    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->b:Z

    return p0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper;->a:Z

    .line 2
    .line 3
    return p0
.end method
