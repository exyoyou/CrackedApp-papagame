.class Lnotchtools/geek/com/notchtools/helper/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/helper/d$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lnotchtools/geek/com/notchtools/helper/d$c;


# direct methods
.method constructor <init>(Lnotchtools/geek/com/notchtools/helper/d$c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->c:Lnotchtools/geek/com/notchtools/helper/d$c;

    .line 2
    .line 3
    iput-object p2, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->b:Ljava/lang/Object;

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
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->c:Lnotchtools/geek/com/notchtools/helper/d$c;

    .line 2
    .line 3
    iget-object v0, v0, Lnotchtools/geek/com/notchtools/helper/d$c;->c:Lnotchtools/geek/com/notchtools/helper/d$d;

    .line 4
    .line 5
    iget-object v1, p0, Lnotchtools/geek/com/notchtools/helper/d$c$a;->b:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lnotchtools/geek/com/notchtools/helper/d$d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method
