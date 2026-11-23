.class public Lcom/facebook/fresco/animation/bitmap/preparation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/fresco/animation/bitmap/preparation/b;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/c$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/imagepipeline/bitmaps/f;

.field private final b:Lu3/b;

.field private final c:Landroid/graphics/Bitmap$Config;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/bitmaps/f;Lu3/b;Landroid/graphics/Bitmap$Config;Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "platformBitmapFactory",
            "bitmapFrameRenderer",
            "bitmapConfig",
            "executorService"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->b:Lu3/b;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->c:Landroid/graphics/Bitmap$Config;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    new-instance p1, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic b()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->c:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Lcom/facebook/imagepipeline/bitmaps/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->a:Lcom/facebook/imagepipeline/bitmaps/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/facebook/fresco/animation/bitmap/preparation/c;)Lu3/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->b:Lu3/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private static g(Lcom/facebook/fresco/animation/backend/a;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backend",
            "frameNumber"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x1f

    .line 6
    .line 7
    add-int/2addr p0, p1

    .line 8
    return p0
.end method


# virtual methods
.method public a(Lu3/a;Lcom/facebook/fresco/animation/backend/a;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmapFrameCache",
            "animationBackend",
            "frameNumber"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/c;->g(Lcom/facebook/fresco/animation/backend/a;I)I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v7, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    .line 6
    .line 7
    monitor-enter v7

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    .line 18
    .line 19
    const-string p2, "Already scheduled decode job for frame %d"

    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p1, p2, p3}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v7

    .line 29
    return v8

    .line 30
    :cond_0
    invoke-interface {p1, p3}, Lu3/a;->e(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object p1, Lcom/facebook/fresco/animation/bitmap/preparation/c;->f:Ljava/lang/Class;

    .line 37
    .line 38
    const-string p2, "Frame %d is cached already."

    .line 39
    .line 40
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-static {p1, p2, p3}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v7

    .line 48
    return v8

    .line 49
    :cond_1
    new-instance v9, Lcom/facebook/fresco/animation/bitmap/preparation/c$a;

    .line 50
    .line 51
    move-object v0, v9

    .line 52
    move-object v1, p0

    .line 53
    move-object v2, p2

    .line 54
    move-object v3, p1

    .line 55
    move v4, p3

    .line 56
    move v5, v6

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/animation/bitmap/preparation/c$a;-><init>(Lcom/facebook/fresco/animation/bitmap/preparation/c;Lcom/facebook/fresco/animation/backend/a;Lu3/a;II)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->e:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {p1, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/c;->d:Ljava/util/concurrent/ExecutorService;

    .line 66
    .line 67
    invoke-interface {p1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    monitor-exit v7

    .line 71
    return v8

    .line 72
    :catchall_0
    move-exception p1

    .line 73
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p1
.end method
