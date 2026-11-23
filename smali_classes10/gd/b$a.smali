.class public Lgd/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgd/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lgd/b;


# direct methods
.method public constructor <init>(Lgd/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgd/b$a;->b:Lgd/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lgd/b$a;->b:Lgd/b;

    .line 2
    .line 3
    invoke-static {p2}, Lfd/a$a;->a(Landroid/os/IBinder;)Lfd/a;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lgd/b;->a:Lfd/a;

    .line 8
    .line 9
    iget-object p1, p0, Lgd/b$a;->b:Lgd/b;

    .line 10
    .line 11
    iget-object p1, p1, Lgd/b;->d:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p2, p0, Lgd/b$a;->b:Lgd/b;

    .line 15
    .line 16
    iget-object p2, p2, Lgd/b;->d:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 19
    .line 20
    .line 21
    monitor-exit p1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p2

    .line 24
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lgd/b$a;->b:Lgd/b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lgd/b;->a:Lfd/a;

    .line 5
    .line 6
    return-void
.end method
