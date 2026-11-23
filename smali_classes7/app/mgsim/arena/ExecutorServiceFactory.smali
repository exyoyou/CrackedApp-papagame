.class public Lapp/mgsim/arena/ExecutorServiceFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mExecutors:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lapp/mgsim/arena/ExecutorServiceFactory;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
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

.method public static getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    sget-object v0, Lapp/mgsim/arena/ExecutorServiceFactory;->mExecutors:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object v0
.end method
