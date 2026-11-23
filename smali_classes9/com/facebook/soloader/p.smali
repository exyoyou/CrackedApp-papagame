.class public abstract Lcom/facebook/soloader/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "com.facebook.soloader.p"


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:Z

.field private volatile e:Ljava/lang/UnsatisfiedLinkError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/facebook/soloader/p;->a:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/facebook/soloader/p;->c:Ljava/lang/Boolean;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/facebook/soloader/p;->d:Z

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/facebook/soloader/p;->e:Ljava/lang/UnsatisfiedLinkError;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/facebook/soloader/p;->b:Ljava/util/List;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/soloader/p;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/soloader/p;->e:Ljava/lang/UnsatisfiedLinkError;

    .line 9
    .line 10
    throw v0
.end method

.method public b()Ljava/lang/UnsatisfiedLinkError;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/p;->e:Ljava/lang/UnsatisfiedLinkError;

    .line 2
    .line 3
    return-object v0
.end method

.method protected c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public d()Z
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/soloader/p;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/facebook/soloader/p;->c:Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/facebook/soloader/p;->d:Z

    .line 13
    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/facebook/soloader/p;->b:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/facebook/soloader/SoLoader;->t(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/soloader/p;->c()V

    .line 42
    .line 43
    .line 44
    const/4 v2, 0x1

    .line 45
    iput-boolean v2, p0, Lcom/facebook/soloader/p;->d:Z

    .line 46
    .line 47
    const/4 v2, 0x0

    .line 48
    iput-object v2, p0, Lcom/facebook/soloader/p;->b:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception v2

    .line 52
    :try_start_2
    new-instance v3, Ljava/lang/UnsatisfiedLinkError;

    .line 53
    .line 54
    const-string v4, "Failed loading libraries"

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iput-object v3, p0, Lcom/facebook/soloader/p;->e:Ljava/lang/UnsatisfiedLinkError;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/facebook/soloader/p;->e:Ljava/lang/UnsatisfiedLinkError;

    .line 62
    .line 63
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    .line 65
    .line 66
    iput-boolean v1, p0, Lcom/facebook/soloader/p;->d:Z

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    iput-object v2, p0, Lcom/facebook/soloader/p;->e:Ljava/lang/UnsatisfiedLinkError;

    .line 71
    .line 72
    iput-boolean v1, p0, Lcom/facebook/soloader/p;->d:Z

    .line 73
    .line 74
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/facebook/soloader/p;->c:Ljava/lang/Boolean;

    .line 77
    .line 78
    iget-boolean v1, p0, Lcom/facebook/soloader/p;->d:Z

    .line 79
    .line 80
    monitor-exit v0

    .line 81
    return v1

    .line 82
    :catchall_1
    move-exception v1

    .line 83
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    throw v1
.end method
