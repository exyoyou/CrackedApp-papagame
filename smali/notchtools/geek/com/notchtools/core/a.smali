.class public abstract Lnotchtools/geek/com/notchtools/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnotchtools/geek/com/notchtools/core/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lnotchtools/geek/com/notchtools/helper/b;->e(Landroid/view/Window;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lnotchtools/geek/com/notchtools/core/b;->f(Landroid/view/Window;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, p1, v0, p2}, Lnotchtools/geek/com/notchtools/core/a;->h(Landroid/app/Activity;ILnotchtools/geek/com/notchtools/core/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lnotchtools/geek/com/notchtools/helper/b;->e(Landroid/view/Window;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/core/a;->i(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Landroid/view/Window;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lnotchtools/geek/com/notchtools/helper/b;->b(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method protected h(Landroid/app/Activity;ILnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    new-instance v0, Lnotchtools/geek/com/notchtools/core/c;

    .line 4
    .line 5
    invoke-direct {v0}, Lnotchtools/geek/com/notchtools/core/c;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p0, v1}, Lnotchtools/geek/com/notchtools/core/b;->f(Landroid/view/Window;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lnotchtools/geek/com/notchtools/core/c;->f(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Lnotchtools/geek/com/notchtools/core/b;->e(Landroid/view/Window;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Lnotchtools/geek/com/notchtools/core/c;->e(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Lnotchtools/geek/com/notchtools/core/c;->d(I)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p3, v0}, Lnotchtools/geek/com/notchtools/core/d;->a(Lnotchtools/geek/com/notchtools/core/c;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method protected i(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Lnotchtools/geek/com/notchtools/core/c;

    .line 4
    .line 5
    invoke-direct {v0}, Lnotchtools/geek/com/notchtools/core/c;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p0, v1}, Lnotchtools/geek/com/notchtools/core/b;->f(Landroid/view/Window;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lnotchtools/geek/com/notchtools/core/c;->f(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p0, p1}, Lnotchtools/geek/com/notchtools/core/b;->e(Landroid/view/Window;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0, p1}, Lnotchtools/geek/com/notchtools/core/c;->e(Z)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0}, Lnotchtools/geek/com/notchtools/core/d;->a(Lnotchtools/geek/com/notchtools/core/c;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
