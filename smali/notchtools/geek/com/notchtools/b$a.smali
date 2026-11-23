.class Lnotchtools/geek/com/notchtools/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnotchtools/geek/com/notchtools/b;->c(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lnotchtools/geek/com/notchtools/core/d;

.field final synthetic d:Lnotchtools/geek/com/notchtools/b;


# direct methods
.method constructor <init>(Lnotchtools/geek/com/notchtools/b;Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b$a;->d:Lnotchtools/geek/com/notchtools/b;

    .line 2
    .line 3
    iput-object p2, p0, Lnotchtools/geek/com/notchtools/b$a;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/core/d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->d:Lnotchtools/geek/com/notchtools/b;

    .line 2
    .line 3
    invoke-static {v0}, Lnotchtools/geek/com/notchtools/b;->h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->d:Lnotchtools/geek/com/notchtools/b;

    .line 10
    .line 11
    iget-object v1, p0, Lnotchtools/geek/com/notchtools/b$a;->b:Landroid/app/Activity;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lnotchtools/geek/com/notchtools/b;->i(Lnotchtools/geek/com/notchtools/b;Landroid/view/Window;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->d:Lnotchtools/geek/com/notchtools/b;

    .line 21
    .line 22
    invoke-static {v0}, Lnotchtools/geek/com/notchtools/b;->h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b$a;->d:Lnotchtools/geek/com/notchtools/b;

    .line 29
    .line 30
    invoke-static {v0}, Lnotchtools/geek/com/notchtools/b;->h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lnotchtools/geek/com/notchtools/b$a;->b:Landroid/app/Activity;

    .line 35
    .line 36
    iget-object v2, p0, Lnotchtools/geek/com/notchtools/b$a;->c:Lnotchtools/geek/com/notchtools/core/d;

    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Lnotchtools/geek/com/notchtools/core/b;->c(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
