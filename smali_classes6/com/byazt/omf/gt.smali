.class public Lcom/byazt/omf/gt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f,
        0xc3
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/omf/gt$c;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/omf/gu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/byazt/omf/gu<",
            "Lcom/byazt/ddx/c;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile tt:Lcom/byazt/ogz/sl;

.field public static volatile uj:Landroid/content/Context;

.field public static final ve:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/byazt/omf/gt;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lcom/byazt/omf/gu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/omf/gu<",
            "Lcom/byazt/ddx/c;",
            ">;"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/byazt/omf/gt;->c:Lcom/byazt/omf/gu;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/byazt/omf/gt;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/byazt/omf/gt;->c:Lcom/byazt/omf/gu;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/byazt/omf/gr;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/byazt/omf/gr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/byazt/omf/gt;->c:Lcom/byazt/omf/gu;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/omf/gt;->c:Lcom/byazt/omf/gu;

    return-object v0
.end method

.method public static c(I)Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/byazt/omf/eo;->c()Lcom/byazt/omf/eo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/omf/eo;->c(I)Ljava/util/function/Function;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/byazt/omf/gt;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/byazt/omf/gt;->uj:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/byazt/omf/gt;->uj:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/omf/gt;->uj:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/omf/gt$c;->c()Landroid/app/Application;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/byazt/omf/gt;->uj:Landroid/content/Context;

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/byazt/omf/gt;->uj:Landroid/content/Context;

    .line 12
    .line 13
    return-object v0
.end method

.method public static tt()Lcom/byazt/ogz/sl;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/omf/gt;->tt:Lcom/byazt/ogz/sl;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/byazt/ogz/sl;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/byazt/omf/gt;->tt:Lcom/byazt/ogz/sl;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/byazt/ogz/sl;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/byazt/ogz/sl;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/byazt/omf/gt;->tt:Lcom/byazt/ogz/sl;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/omf/gt;->tt:Lcom/byazt/ogz/sl;

    .line 25
    .line 26
    return-object v0
.end method
