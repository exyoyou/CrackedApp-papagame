.class public Lcom/facebook/cache/disk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/cache/common/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field private static final i:Ljava/lang/Object;

.field private static final j:I = 0x5

.field private static k:Lcom/facebook/cache/disk/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static l:I


# instance fields
.field private a:Lcom/facebook/cache/common/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/facebook/cache/disk/j;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/cache/disk/j;->i:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f()Lcom/facebook/cache/disk/j;
    .locals 3
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/cache/disk/j;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/facebook/cache/disk/j;->h:Lcom/facebook/cache/disk/j;

    .line 9
    .line 10
    sput-object v2, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-object v2, v1, Lcom/facebook/cache/disk/j;->h:Lcom/facebook/cache/disk/j;

    .line 14
    .line 15
    sget v2, Lcom/facebook/cache/disk/j;->l:I

    .line 16
    .line 17
    add-int/lit8 v2, v2, -0x1

    .line 18
    .line 19
    sput v2, Lcom/facebook/cache/disk/j;->l:I

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    new-instance v0, Lcom/facebook/cache/disk/j;

    .line 25
    .line 26
    invoke-direct {v0}, Lcom/facebook/cache/disk/j;-><init>()V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    throw v1
.end method

.method private h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->a:Lcom/facebook/cache/common/c;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->b:Ljava/lang/String;

    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    iput-wide v1, p0, Lcom/facebook/cache/disk/j;->c:J

    .line 9
    .line 10
    iput-wide v1, p0, Lcom/facebook/cache/disk/j;->d:J

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/facebook/cache/disk/j;->e:J

    .line 13
    .line 14
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->f:Ljava/io/IOException;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/facebook/cache/disk/j;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/io/IOException;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->f:Ljava/io/IOException;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/facebook/cache/common/CacheEventListener$EvictionReason;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/j;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/j;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/j;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/cache/disk/j;->i:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lcom/facebook/cache/disk/j;->l:I

    .line 5
    .line 6
    const/4 v2, 0x5

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/facebook/cache/disk/j;->h()V

    .line 10
    .line 11
    .line 12
    sget v1, Lcom/facebook/cache/disk/j;->l:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    sput v1, Lcom/facebook/cache/disk/j;->l:I

    .line 17
    .line 18
    sget-object v1, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iput-object v1, p0, Lcom/facebook/cache/disk/j;->h:Lcom/facebook/cache/disk/j;

    .line 23
    .line 24
    :cond_0
    sput-object p0, Lcom/facebook/cache/disk/j;->k:Lcom/facebook/cache/disk/j;

    .line 25
    .line 26
    :cond_1
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public getCacheKey()Lcom/facebook/cache/common/c;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->a:Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/cache/disk/j;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(Lcom/facebook/cache/common/c;)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheKey"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->a:Lcom/facebook/cache/common/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(J)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheLimit"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/j;->d:J

    .line 2
    .line 3
    return-object p0
.end method

.method public k(J)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/j;->e:J

    .line 2
    .line 3
    return-object p0
.end method

.method public l(Lcom/facebook/cache/common/CacheEventListener$EvictionReason;)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evictionReason"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->g:Lcom/facebook/cache/common/CacheEventListener$EvictionReason;

    .line 2
    .line 3
    return-object p0
.end method

.method public m(Ljava/io/IOException;)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->f:Ljava/io/IOException;

    .line 2
    .line 3
    return-object p0
.end method

.method public n(J)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/j;->c:J

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/String;)Lcom/facebook/cache/disk/j;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resourceId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/j;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
