.class public Lcom/byazt/yws/ve;
.super Lcom/byazt/yws/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x362,
        0x36
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/yws/ve;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "ttopensdk.db"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/byazt/yws/tt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/yws/ve;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/yws/ve;->c:Lcom/byazt/yws/ve;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/yws/ve;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/yws/ve;->c:Lcom/byazt/yws/ve;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/yws/ve;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/yws/ve;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/yws/ve;->c:Lcom/byazt/yws/ve;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0

    .line 24
    :cond_1
    :goto_0
    sget-object p0, Lcom/byazt/yws/ve;->c:Lcom/byazt/yws/ve;

    .line 25
    .line 26
    return-object p0
.end method
