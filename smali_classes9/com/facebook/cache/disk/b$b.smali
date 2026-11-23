.class public Lcom/facebook/cache/disk/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/common/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/cache/disk/g;

.field private h:Lcom/facebook/cache/common/CacheErrorLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/facebook/cache/common/CacheEventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Lf3/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private final l:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/facebook/cache/disk/b$b;->a:I

    const-string v0, "image_cache"

    .line 4
    iput-object v0, p0, Lcom/facebook/cache/disk/b$b;->b:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 5
    iput-wide v0, p0, Lcom/facebook/cache/disk/b$b;->d:J

    const-wide/32 v0, 0xa00000

    .line 6
    iput-wide v0, p0, Lcom/facebook/cache/disk/b$b;->e:J

    const-wide/32 v0, 0x200000

    .line 7
    iput-wide v0, p0, Lcom/facebook/cache/disk/b$b;->f:J

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/a;

    invoke-direct {v0}, Lcom/facebook/cache/disk/a;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/b$b;->g:Lcom/facebook/cache/disk/g;

    .line 9
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->l:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/facebook/cache/disk/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/b$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/cache/disk/b$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->l:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/facebook/cache/disk/b$b;)Lcom/facebook/common/internal/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->c:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/facebook/cache/disk/b$b;)Lcom/facebook/cache/common/CacheEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/facebook/cache/disk/b$b;Lcom/facebook/common/internal/l;)Lcom/facebook/common/internal/l;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->c:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic e(Lcom/facebook/cache/disk/b$b;)Lf3/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->j:Lf3/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/facebook/cache/disk/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/facebook/cache/disk/b$b;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lcom/facebook/cache/disk/b$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/facebook/cache/disk/b$b;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lcom/facebook/cache/disk/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/facebook/cache/disk/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/b$b;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic j(Lcom/facebook/cache/disk/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/b$b;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic k(Lcom/facebook/cache/disk/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/cache/disk/b$b;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic l(Lcom/facebook/cache/disk/b$b;)Lcom/facebook/cache/disk/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->g:Lcom/facebook/cache/disk/g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/facebook/cache/disk/b$b;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/cache/disk/b$b;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public n()Lcom/facebook/cache/disk/b;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/cache/disk/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/cache/disk/b;-><init>(Lcom/facebook/cache/disk/b$b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public o(Ljava/lang/String;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseDirectoryName"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/io/File;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "baseDirectoryPath"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/m;->a(Ljava/lang/Object;)Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->c:Lcom/facebook/common/internal/l;

    .line 6
    .line 7
    return-object p0
.end method

.method public q(Lcom/facebook/common/internal/l;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseDirectoryPathSupplier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/common/internal/l<",
            "Ljava/io/File;",
            ">;)",
            "Lcom/facebook/cache/disk/b$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->c:Lcom/facebook/common/internal/l;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Lcom/facebook/cache/common/CacheErrorLogger;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheErrorLogger"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Lcom/facebook/cache/common/CacheEventListener;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cacheEventListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Lf3/b;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diskTrimmableRegistry"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->j:Lf3/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Lcom/facebook/cache/disk/g;)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supplier"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/cache/disk/b$b;->g:Lcom/facebook/cache/disk/g;

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Z)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indexEnabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/cache/disk/b$b;->k:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public w(J)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSize"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/b$b;->d:J

    .line 2
    .line 3
    return-object p0
.end method

.method public x(J)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSizeOnLowDiskSpace"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/b$b;->e:J

    .line 2
    .line 3
    return-object p0
.end method

.method public y(J)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxCacheSizeOnVeryLowDiskSpace"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/cache/disk/b$b;->f:J

    .line 2
    .line 3
    return-object p0
.end method

.method public z(I)Lcom/facebook/cache/disk/b$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/facebook/cache/disk/b$b;->a:I

    .line 2
    .line 3
    return-object p0
.end method
