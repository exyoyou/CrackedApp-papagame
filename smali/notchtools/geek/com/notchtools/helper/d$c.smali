.class final Lnotchtools/geek/com/notchtools/helper/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/helper/d;->h(Lnotchtools/geek/com/notchtools/helper/d$e;Lnotchtools/geek/com/notchtools/helper/d$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lnotchtools/geek/com/notchtools/helper/d$e;

.field final synthetic c:Lnotchtools/geek/com/notchtools/helper/d$d;


# direct methods
.method constructor <init>(Lnotchtools/geek/com/notchtools/helper/d$e;Lnotchtools/geek/com/notchtools/helper/d$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->b:Lnotchtools/geek/com/notchtools/helper/d$e;

    .line 2
    .line 3
    iput-object p2, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->c:Lnotchtools/geek/com/notchtools/helper/d$d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->b:Lnotchtools/geek/com/notchtools/helper/d$e;

    .line 2
    .line 3
    invoke-interface {v0}, Lnotchtools/geek/com/notchtools/helper/d$e;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lnotchtools/geek/com/notchtools/helper/d$c;->c:Lnotchtools/geek/com/notchtools/helper/d$d;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lnotchtools/geek/com/notchtools/helper/d$c$a;

    .line 19
    .line 20
    invoke-direct {v1, p0, v0}, Lnotchtools/geek/com/notchtools/helper/d$c$a;-><init>(Lnotchtools/geek/com/notchtools/helper/d$c;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lnotchtools/geek/com/notchtools/helper/d;->p(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
