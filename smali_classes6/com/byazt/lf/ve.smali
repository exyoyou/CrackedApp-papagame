.class public final Lcom/byazt/lf/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20e,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/lf/ve$ve;,
        Lcom/byazt/lf/ve$tt;,
        Lcom/byazt/lf/ve$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/lf/ve$c;

.field public tt:Lcom/byazt/lf/ve$tt;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/byazt/lf/ve$c;->uj:Lcom/byazt/lf/ve$c;

    iput-object v0, p0, Lcom/byazt/lf/ve;->c:Lcom/byazt/lf/ve$c;

    .line 4
    new-instance v0, Lcom/byazt/lf/tt;

    invoke-direct {v0}, Lcom/byazt/lf/tt;-><init>()V

    iput-object v0, p0, Lcom/byazt/lf/ve;->tt:Lcom/byazt/lf/ve$tt;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/lf/ve$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/lf/ve;-><init>()V

    return-void
.end method

.method public static c(Lcom/byazt/lf/ve$c;)V
    .locals 2

    .line 1
    const-class v0, Lcom/byazt/lf/ve;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/byazt/lf/ve$ve;->c()Lcom/byazt/lf/ve;

    move-result-object v1

    iput-object p0, v1, Lcom/byazt/lf/ve;->c:Lcom/byazt/lf/ve$c;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/byazt/lf/ve$ve;->c()Lcom/byazt/lf/ve;

    move-result-object v0

    iget-object v0, v0, Lcom/byazt/lf/ve;->c:Lcom/byazt/lf/ve$c;

    sget-object v1, Lcom/byazt/lf/ve$c;->ve:Lcom/byazt/lf/ve$c;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/lf/ve$ve;->c()Lcom/byazt/lf/ve;

    move-result-object v0

    iget-object v0, v0, Lcom/byazt/lf/ve;->tt:Lcom/byazt/lf/ve$tt;

    invoke-interface {v0, p0, p1}, Lcom/byazt/lf/ve$tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/lf/ve$ve;->c()Lcom/byazt/lf/ve;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/byazt/lf/ve;->c:Lcom/byazt/lf/ve$c;

    .line 6
    .line 7
    sget-object p1, Lcom/byazt/lf/ve$c;->c:Lcom/byazt/lf/ve$c;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-gtz p0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/byazt/lf/ve$ve;->c()Lcom/byazt/lf/ve;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
