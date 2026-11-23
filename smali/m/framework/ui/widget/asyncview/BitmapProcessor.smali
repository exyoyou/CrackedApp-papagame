.class public Lm/framework/ui/widget/asyncview/BitmapProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$PatchInputStream;,
        Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    }
.end annotation


# static fields
.field private static final CAPACITY:I = 0x5

.field private static final MAX_REQ_TIME:I = 0xc8

.field private static final MAX_SIZE:I = 0x28

.field private static final OVERFLOW_SIZE:I = 0x32

.field private static instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# instance fields
.field private cacheDir:Ljava/io/File;

.field private cacheMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private netReqTPS:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private reqList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;",
            ">;"
        }
    .end annotation
.end field

.field private work:Z

.field private workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Vector;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    new-array v0, v0, [Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 20
    .line 21
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 22
    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    .line 29
    .line 30
    new-instance v0, Ljava/io/File;

    .line 31
    .line 32
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 46
    .line 47
    .line 48
    :cond_0
    new-instance p1, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ManagerThread;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor;)[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheDir:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->netReqTPS:Ljava/util/Vector;

    .line 2
    .line 3
    return-object p0
.end method

.method public static getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->cacheMap:Ljava/util/WeakHashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/graphics/Bitmap;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    const-string v0, "Call BitmapProcessor.prepare(String) before start"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public static declared-synchronized prepare(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-class v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    :cond_0
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0

    .line 19
    throw p0
.end method

.method public static process(Ljava/lang/String;Lm/framework/ui/widget/asyncview/BitmapCallback;)V
    .locals 1

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 9
    .line 10
    invoke-direct {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapCallback;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 20
    .line 21
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 27
    .line 28
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/16 p1, 0x32

    .line 35
    .line 36
    if-le p0, p1, :cond_2

    .line 37
    .line 38
    :goto_0
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 39
    .line 40
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/16 p1, 0x28

    .line 47
    .line 48
    if-gt p0, p1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    sget-object p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 52
    .line 53
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    invoke-static {}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->start()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 65
    .line 66
    const-string p1, "Call BitmapProcessor.prepare(String) before start"

    .line 67
    .line 68
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p0
.end method

.method public static start()V
    .locals 2

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    .line 11
    const-string v1, "Call BitmapProcessor.prepare(String) before start"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static stop()V
    .locals 3

    .line 1
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->work:Z

    .line 7
    .line 8
    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->reqList:Ljava/util/Vector;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 11
    .line 12
    .line 13
    :goto_0
    sget-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 14
    .line 15
    iget-object v0, v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->workerList:[Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    if-lt v1, v2, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    sput-object v0, Lm/framework/ui/widget/asyncview/BitmapProcessor;->instance:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    aget-object v0, v0, v1

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->interrupt()V

    .line 29
    .line 30
    .line 31
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    :goto_1
    return-void
.end method
