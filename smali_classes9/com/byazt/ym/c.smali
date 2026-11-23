.class public Lcom/byazt/ym/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x31f,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ym/c$c;,
        Lcom/byazt/ym/c$tt;
    }
.end annotation


# static fields
.field public static volatile ve:Lcom/byazt/ym/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field public c:Lcom/byazt/ym/c$tt;

.field public tt:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/byazt/ym/c;->tt:Landroid/content/Context;

    .line 9
    .line 10
    iget-object p1, p0, Lcom/byazt/ym/c;->c:Lcom/byazt/ym/c$tt;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lcom/byazt/ym/c$tt;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/byazt/ym/c$tt;-><init>(Lcom/byazt/ym/c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/ym/c;->c:Lcom/byazt/ym/c$tt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    :catchall_0
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/ym/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/ym/c;->ve:Lcom/byazt/ym/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/ym/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/ym/c;->ve:Lcom/byazt/ym/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/ym/c;

    invoke-direct {v1, p0}, Lcom/byazt/ym/c;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/byazt/ym/c;->ve:Lcom/byazt/ym/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/ym/c;->ve:Lcom/byazt/ym/c;

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ym/c;->tt:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public c()Lcom/byazt/ym/c$tt;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/ym/c;->c:Lcom/byazt/ym/c$tt;

    return-object v0
.end method
