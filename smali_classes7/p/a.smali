.class public Lp/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static volatile b:Z

.field private static c:Landroid/content/Context;

.field private static d:Lp/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lp/a;->a:Ljava/lang/String;

    invoke-static {v0}, Lc0/a;->b(Ljava/lang/String;)Z

    sget-object v0, Lp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lp/a;
    .locals 2

    .line 1
    sget-object v0, Lp/a;->d:Lp/a;

    if-nez v0, :cond_1

    const-class v0, Lp/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lp/a;->d:Lp/a;

    if-nez v1, :cond_0

    new-instance v1, Lp/a;

    invoke-direct {v1}, Lp/a;-><init>()V

    sput-object v1, Lp/a;->d:Lp/a;

    sput-object p0, Lp/a;->c:Landroid/content/Context;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lp/a;->d:Lp/a;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lp/a;->a:Ljava/lang/String;

    return-object v0
.end method
