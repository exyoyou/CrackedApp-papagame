.class public Lnotchtools/geek/com/notchtools/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnotchtools/geek/com/notchtools/core/b;


# static fields
.field private static d:Lnotchtools/geek/com/notchtools/b; = null

.field public static final e:Ljava/lang/String; = "notch_container"

.field private static final f:I

.field public static final g:I = 0x1c


# instance fields
.field private a:Lnotchtools/geek/com/notchtools/core/b;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sput v0, Lnotchtools/geek/com/notchtools/b;->f:I

    .line 4
    .line 5
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic h(Lnotchtools/geek/com/notchtools/b;)Lnotchtools/geek/com/notchtools/core/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lnotchtools/geek/com/notchtools/b;Landroid/view/Window;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Landroid/view/Window;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget p1, Lnotchtools/geek/com/notchtools/b;->f:I

    .line 7
    .line 8
    const/16 v0, 0x1a

    .line 9
    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    new-instance p1, Lvc/a;

    .line 13
    .line 14
    invoke-direct {p1}, Lvc/a;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/16 v0, 0x1c

    .line 21
    .line 22
    if-ge p1, v0, :cond_6

    .line 23
    .line 24
    invoke-static {}, Lnotchtools/geek/com/notchtools/helper/a;->a()Lnotchtools/geek/com/notchtools/helper/a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->c()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    new-instance p1, Lvc/b;

    .line 35
    .line 36
    invoke-direct {p1}, Lvc/b;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->d()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance p1, Lvc/c;

    .line 49
    .line 50
    invoke-direct {p1}, Lvc/c;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->f()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    new-instance p1, Lvc/f;

    .line 63
    .line 64
    invoke-direct {p1}, Lvc/f;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {p1}, Lnotchtools/geek/com/notchtools/helper/a;->e()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_5

    .line 75
    .line 76
    new-instance p1, Lvc/d;

    .line 77
    .line 78
    invoke-direct {p1}, Lvc/d;-><init>()V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    new-instance p1, Lvc/a;

    .line 85
    .line 86
    invoke-direct {p1}, Lvc/a;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 90
    .line 91
    :goto_0
    return-void

    .line 92
    :cond_6
    if-lt p1, v0, :cond_7

    .line 93
    .line 94
    new-instance p1, Lvc/e;

    .line 95
    .line 96
    invoke-direct {p1}, Lvc/e;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 100
    .line 101
    :cond_7
    return-void
.end method

.method public static o()Lnotchtools/geek/com/notchtools/b;
    .locals 2

    .line 1
    sget-object v0, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lnotchtools/geek/com/notchtools/b;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lnotchtools/geek/com/notchtools/b;

    .line 13
    .line 14
    invoke-direct {v1}, Lnotchtools/geek/com/notchtools/b;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lnotchtools/geek/com/notchtools/b;->d:Lnotchtools/geek/com/notchtools/b;

    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lnotchtools/geek/com/notchtools/core/b;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lnotchtools/geek/com/notchtools/b;->d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1

    .line 1
    new-instance v0, Lnotchtools/geek/com/notchtools/b$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lnotchtools/geek/com/notchtools/b$a;-><init>(Lnotchtools/geek/com/notchtools/b;Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lnotchtools/geek/com/notchtools/helper/d;->p(Ljava/lang/Runnable;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0, p1, p2}, Lnotchtools/geek/com/notchtools/core/b;->d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public e(Landroid/view/Window;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnotchtools/geek/com/notchtools/b;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->b:Z

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->c:Z

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-interface {v0, p1}, Lnotchtools/geek/com/notchtools/core/b;->e(Landroid/view/Window;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->c:Z

    .line 28
    .line 29
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lnotchtools/geek/com/notchtools/b;->c:Z

    .line 30
    .line 31
    return p1
.end method

.method public f(Landroid/view/Window;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lnotchtools/geek/com/notchtools/b;->j(Landroid/view/Window;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lnotchtools/geek/com/notchtools/b;->a:Lnotchtools/geek/com/notchtools/core/b;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_1
    invoke-interface {v0, p1}, Lnotchtools/geek/com/notchtools/core/b;->f(Landroid/view/Window;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
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

.method public k(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->d(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public l(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->c(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public m(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->b(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public n(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lnotchtools/geek/com/notchtools/b;->a(Landroid/app/Activity;Lnotchtools/geek/com/notchtools/core/d;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public p(Z)Lnotchtools/geek/com/notchtools/b;
    .locals 0

    .line 1
    sput-boolean p1, Lnotchtools/geek/com/notchtools/helper/b;->b:Z

    .line 2
    .line 3
    return-object p0
.end method
