.class Lcom/beizi/fusion/sm/b/a/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/sm/b/a/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/sm/b/a/n;->a(Lcom/beizi/fusion/sm/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/sm/b/a/n;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/sm/b/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/sm/b/a/n$1;->a:Lcom/beizi/fusion/sm/b/a/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/beizi/fusion/sm/b/d;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/sm/b/a/n$1;->a:Lcom/beizi/fusion/sm/b/a/n;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/beizi/fusion/sm/b/a/n;->a(Lcom/beizi/fusion/sm/b/a/n;Landroid/os/IBinder;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1
    :try_end_0
    .catch Lcom/beizi/fusion/sm/b/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p1

    .line 8
    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/beizi/fusion/sm/b/d;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Lcom/beizi/fusion/sm/b/d;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    throw v0

    .line 15
    :catch_1
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :catch_2
    move-exception p1

    .line 18
    :goto_0
    throw p1
.end method
