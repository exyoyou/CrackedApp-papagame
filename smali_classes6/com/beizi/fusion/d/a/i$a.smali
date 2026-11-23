.class Lcom/beizi/fusion/d/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/d/a/i;

.field private b:Lcom/beizi/fusion/d/a/b$a;


# direct methods
.method private constructor <init>(Lcom/beizi/fusion/d/a/i;Lcom/beizi/fusion/d/a/b$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/d/a/i$a;->a:Lcom/beizi/fusion/d/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/d/a/i$a;->b:Lcom/beizi/fusion/d/a/b$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/beizi/fusion/d/a/i;Lcom/beizi/fusion/d/a/b$a;Lcom/beizi/fusion/d/a/i$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/d/a/i$a;-><init>(Lcom/beizi/fusion/d/a/i;Lcom/beizi/fusion/d/a/b$a;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/beizi/fusion/d/b/f$a;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/beizi/fusion/d/b/f$a;-><init>(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/beizi/fusion/d/b/f$a;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p2, p0, Lcom/beizi/fusion/d/a/i$a;->b:Lcom/beizi/fusion/d/a/b$a;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p2, p1}, Lcom/beizi/fusion/d/a/b$a;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
