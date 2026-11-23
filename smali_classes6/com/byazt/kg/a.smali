.class public Lcom/byazt/kg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ac,
        0x22
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/kg/a;


# instance fields
.field public final tt:Lcom/byazt/kg/ve;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/kg/ve;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/byazt/kg/ve;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/kg/a;->tt:Lcom/byazt/kg/ve;

    .line 10
    .line 11
    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/kg/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/kg/a;->c:Lcom/byazt/kg/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/byazt/kg/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/byazt/kg/a;->c:Lcom/byazt/kg/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/kg/a;

    invoke-direct {v1, p0}, Lcom/byazt/kg/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/byazt/kg/a;->c:Lcom/byazt/kg/a;

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
    sget-object p0, Lcom/byazt/kg/a;->c:Lcom/byazt/kg/a;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/kg/a;->tt:Lcom/byazt/kg/ve;

    invoke-virtual {v0}, Lcom/byazt/kg/ve;->c()V

    return-void
.end method
