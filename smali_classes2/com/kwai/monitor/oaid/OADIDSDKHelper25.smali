.class public Lcom/kwai/monitor/oaid/OADIDSDKHelper25;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/monitor/oaid/OADIDSDKHelper25$a;,
        Lcom/kwai/monitor/oaid/OADIDSDKHelper25$IIdentifierListener25;
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
    .locals 4

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/kwai/monitor/oaid/OADIDSDKHelper25$1;

    invoke-direct {v1}, Lcom/kwai/monitor/oaid/OADIDSDKHelper25$1;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-interface {v1, v3, v2}, Lcom/bun/miitmdid/interfaces/IIdentifierListener;->OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "com.bun.miitmdid.core.MdidSdkHelper"

    .line 4
    :try_start_1
    const-class v2, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v1, v0, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    return v0
.end method

.method public static synthetic a(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->b:Z

    return p0
.end method

.method public static synthetic b(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/kwai/monitor/oaid/OADIDSDKHelper25;->a:Z

    .line 2
    .line 3
    return p0
.end method
