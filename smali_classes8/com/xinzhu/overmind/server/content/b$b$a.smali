.class Lcom/xinzhu/overmind/server/content/b$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/content/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final b:Landroid/database/IContentObserver;

.field public final c:I

.field public final d:I

.field public final e:Z

.field private final f:I

.field private final g:Ljava/lang/Object;

.field final synthetic h:Lcom/xinzhu/overmind/server/content/b$b;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/content/b$b;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->h:Lcom/xinzhu/overmind/server/content/b$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p4, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->g:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->b:Landroid/database/IContentObserver;

    .line 9
    .line 10
    iput p5, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->c:I

    .line 11
    .line 12
    iput p6, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->d:I

    .line 13
    .line 14
    iput p7, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->f:I

    .line 15
    .line 16
    iput-boolean p3, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->e:Z

    .line 17
    .line 18
    :try_start_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/server/content/b$b$a;->binderDied()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/server/content/b$b$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->f:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->h:Lcom/xinzhu/overmind/server/content/b$b;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/xinzhu/overmind/server/content/b$b$a;->b:Landroid/database/IContentObserver;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/server/content/b$b;->h(Landroid/database/IContentObserver;)Z

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method
