.class public Lcom/facebook/common/memory/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/common/memory/c;


# static fields
.field private static a:Lcom/facebook/common/memory/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static declared-synchronized c()Lcom/facebook/common/memory/d;
    .locals 2

    .line 1
    const-class v0, Lcom/facebook/common/memory/d;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/common/memory/d;->a:Lcom/facebook/common/memory/d;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/facebook/common/memory/d;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/facebook/common/memory/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/facebook/common/memory/d;->a:Lcom/facebook/common/memory/d;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/facebook/common/memory/d;->a:Lcom/facebook/common/memory/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method


# virtual methods
.method public a(Lcom/facebook/common/memory/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimmable"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public b(Lcom/facebook/common/memory/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trimmable"
        }
    .end annotation

    .line 1
    return-void
.end method
