.class public Lcom/sdk/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/sdk/t/a;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Z

.field public static g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/sdk/t/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/sdk/t/a;->a:Lcom/sdk/t/a;

    if-nez v0, :cond_0

    const-class v0, Lcom/sdk/t/a;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/sdk/t/a;

    invoke-direct {v1, p0}, Lcom/sdk/t/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sdk/t/a;->a:Lcom/sdk/t/a;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    sget-object p0, Lcom/sdk/t/a;->a:Lcom/sdk/t/a;

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/sdk/t/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sdk/t/a;->d:Ljava/lang/String;

    return-object v0
.end method
