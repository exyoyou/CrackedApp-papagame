.class public abstract Lcom/facebook/drawee/controller/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/a;
.implements Lcom/facebook/drawee/components/a$a;
.implements Lcom/facebook/drawee/gestures/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/drawee/controller/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "INFO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls3/a;",
        "Lcom/facebook/drawee/components/a$a;",
        "Lcom/facebook/drawee/gestures/a$a;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private final b:Lcom/facebook/drawee/components/a;

.field private final c:Ljava/util/concurrent/Executor;

.field private d:Lcom/facebook/drawee/components/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/facebook/drawee/gestures/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/facebook/drawee/controller/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected g:Lcom/facebook/drawee/controller/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/drawee/controller/c<",
            "TINFO;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected h:Lb4/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb4/e<",
            "TINFO;>;"
        }
    .end annotation
.end field

.field protected i:Lb4/f;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Ls3/c;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private k:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Object;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private t:Lcom/facebook/datasource/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private v:Z

.field protected w:Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "component_tag"

    .line 2
    .line 3
    const-string v1, "drawee"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/facebook/drawee/controller/a;->x:Ljava/util/Map;

    .line 10
    .line 11
    const-string v0, "origin_sub"

    .line 12
    .line 13
    const-string v1, "shortcut"

    .line 14
    .line 15
    const-string v2, "origin"

    .line 16
    .line 17
    const-string v3, "memory_bitmap"

    .line 18
    .line 19
    invoke-static {v2, v3, v0, v1}, Lcom/facebook/common/internal/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/facebook/drawee/controller/a;->y:Ljava/util/Map;

    .line 24
    .line 25
    const-class v0, Lcom/facebook/drawee/controller/a;

    .line 26
    .line 27
    sput-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/facebook/drawee/components/a;Ljava/util/concurrent/Executor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deferredReleaser",
            "uiThreadImmediateExecutor",
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/drawee/components/DraweeEventTracker;->b()Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 9
    .line 10
    new-instance v0, Lb4/e;

    .line 11
    .line 12
    invoke-direct {v0}, Lb4/e;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Lb4/e;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->v:Z

    .line 19
    .line 20
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/facebook/drawee/controller/a;->c:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    invoke-direct {p0, p3, p4}, Lcom/facebook/drawee/controller/a;->D(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private declared-synchronized D(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "AbstractDraweeController#init"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 14
    .line 15
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_INIT_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->v:Z

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a$a;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->p:Z

    .line 35
    .line 36
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->Q()V

    .line 37
    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->r:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->a()V

    .line 46
    .line 47
    .line 48
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/a;->a()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/gestures/a;->f(Lcom/facebook/drawee/gestures/a$a;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 61
    .line 62
    instance-of v1, v0, Lcom/facebook/drawee/controller/a$c;

    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    check-cast v0, Lcom/facebook/drawee/controller/a$c;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/e;->b()V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 74
    .line 75
    :goto_0
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->f:Lcom/facebook/drawee/controller/d;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    invoke-interface {v0}, Ls3/c;->reset()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 85
    .line 86
    invoke-interface {v0, v2}, Ls3/c;->c(Landroid/graphics/drawable/Drawable;)V

    .line 87
    .line 88
    .line 89
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 90
    .line 91
    :cond_5
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 101
    .line 102
    const-string v1, "controller %x %s -> %s: initialize"

    .line 103
    .line 104
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v0, v1, v2, v3, p1}, Li3/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 118
    .line 119
    iput-object p2, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    .line 120
    .line 121
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_7

    .line 126
    .line 127
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 128
    .line 129
    .line 130
    :cond_7
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->i:Lb4/f;

    .line 131
    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->f0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    :cond_8
    monitor-exit p0

    .line 138
    return-void

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    monitor-exit p0

    .line 141
    throw p1
.end method

.method private F(Ljava/lang/String;Lcom/facebook/datasource/c;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 18
    .line 19
    if-ne p2, p1, :cond_1

    .line 20
    .line 21
    iget-boolean p1, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method private G(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageAndMethod",
            "throwable"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 9
    .line 10
    const-string v2, "controller %x %s: %s: failure: %s"

    .line 11
    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 21
    .line 22
    move-object v5, p1

    .line 23
    move-object v6, p2

    .line 24
    invoke-static/range {v1 .. v6}, Li3/a;->Y(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private H(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageAndMethod",
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v2, 0x5

    .line 11
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    aput-object v3, v2, v4

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 26
    .line 27
    aput-object v4, v2, v3

    .line 28
    .line 29
    aput-object p1, v2, v0

    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->x(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v2, p1

    .line 37
    .line 38
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->y(Ljava/lang/Object;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 p2, 0x4

    .line 47
    aput-object p1, v2, p2

    .line 48
    .line 49
    const-string p1, "controller %x %s: %s: image: %s %x"

    .line 50
    .line 51
    invoke-static {v1, p1, v2}, Li3/a;->a0(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private I(Lcom/facebook/datasource/c;Ljava/lang/Object;Landroid/net/Uri;)Lb4/c$a;
    .locals 0
    .param p1    # Lcom/facebook/datasource/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "datasource",
            "info",
            "mainUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;TINFO;",
            "Landroid/net/Uri;",
            ")",
            "Lb4/c$a;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/c;->getExtras()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->K(Ljava/lang/Object;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/drawee/controller/a;->J(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lb4/c$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private J(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lb4/c$a;
    .locals 11
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "datasourceExtras",
            "imageExtras",
            "mainUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Lb4/c$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/facebook/drawee/generic/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->m()Lcom/facebook/drawee/drawable/s$c;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->l()Landroid/graphics/PointF;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v7, v0

    .line 22
    move-object v6, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    move-object v6, v1

    .line 26
    move-object v7, v6

    .line 27
    :goto_0
    sget-object v2, Lcom/facebook/drawee/controller/a;->x:Ljava/util/Map;

    .line 28
    .line 29
    sget-object v3, Lcom/facebook/drawee/controller/a;->y:Ljava/util/Map;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->u()Landroid/graphics/Rect;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->p()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v9

    .line 39
    move-object v4, p1

    .line 40
    move-object v8, p2

    .line 41
    move-object v10, p3

    .line 42
    invoke-static/range {v2 .. v10}, Lz3/a;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;Landroid/net/Uri;)Lb4/c$a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method private L(Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Throwable;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource",
            "throwable",
            "isFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/c<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbstractDraweeController#onFailureInternal"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->F(Ljava/lang/String;Lcom/facebook/datasource/c;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    const-string p1, "ignore_old_datasource @ onFailure"

    .line 19
    .line 20
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->G(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Lcom/facebook/datasource/c;->close()Z

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 37
    .line 38
    if-eqz p4, :cond_3

    .line 39
    .line 40
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_FAILURE_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 44
    .line 45
    :goto_0
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 46
    .line 47
    .line 48
    if-eqz p4, :cond_7

    .line 49
    .line 50
    const-string p1, "final_failed @ onFailure"

    .line 51
    .line 52
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->G(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 60
    .line 61
    iget-object p4, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 62
    .line 63
    if-eqz p4, :cond_6

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->r:Z

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    .line 75
    invoke-interface {p4, v0, v1, p1}, Ls3/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->h0()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_5

    .line 84
    .line 85
    invoke-interface {p4, p3}, Ls3/c;->a(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-interface {p4, p3}, Ls3/c;->setFailure(Ljava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    :goto_1
    invoke-direct {p0, p3, p2}, Lcom/facebook/drawee/controller/a;->U(Ljava/lang/Throwable;Lcom/facebook/datasource/c;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_7
    const-string p1, "intermediate_failed @ onFailure"

    .line 97
    .line 98
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->G(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0, p3}, Lcom/facebook/drawee/controller/a;->V(Ljava/lang/Throwable;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_8

    .line 109
    .line 110
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 111
    .line 112
    .line 113
    :cond_8
    return-void
.end method

.method private N(Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Object;FZZZ)V
    .locals 5
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource",
            "image",
            "progress",
            "isFinished",
            "wasImmediate",
            "deliverTempResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/c<",
            "TT;>;TT;FZZZ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbstractDraweeController#onNewResultInternal"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->F(Ljava/lang/String;Lcom/facebook/datasource/c;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-string p1, "ignore_old_datasource @ onNewResult"

    .line 19
    .line 20
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/a;->R(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p2}, Lcom/facebook/datasource/c;->close()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void

    .line 39
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 40
    .line 41
    if-eqz p5, :cond_3

    .line 42
    .line 43
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_RESULT_INT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 47
    .line 48
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    .line 50
    .line 51
    :try_start_2
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/a;->n(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;

    .line 52
    .line 53
    .line 54
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 58
    .line 59
    iput-object p3, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    .line 63
    const-string v3, "release_previous_result @ onNewResult"

    .line 64
    .line 65
    const/high16 v4, 0x3f800000    # 1.0f

    .line 66
    .line 67
    if-eqz p5, :cond_4

    .line 68
    .line 69
    :try_start_4
    const-string p4, "set_final_result @ onNewResult"

    .line 70
    .line 71
    invoke-direct {p0, p4, p3}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const/4 p4, 0x0

    .line 75
    iput-object p4, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 76
    .line 77
    iget-object p4, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 78
    .line 79
    invoke-interface {p4, v0, v4, p6}, Ls3/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1, p3, p2}, Lcom/facebook/drawee/controller/a;->Z(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/c;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    if-eqz p7, :cond_5

    .line 89
    .line 90
    const-string p4, "set_temporary_result @ onNewResult"

    .line 91
    .line 92
    invoke-direct {p0, p4, p3}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object p4, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 96
    .line 97
    invoke-interface {p4, v0, v4, p6}, Ls3/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, p1, p3, p2}, Lcom/facebook/drawee/controller/a;->Z(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/c;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    const-string p2, "set_intermediate_result @ onNewResult"

    .line 105
    .line 106
    invoke-direct {p0, p2, p3}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object p2, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 110
    .line 111
    invoke-interface {p2, v0, p4, p6}, Ls3/c;->e(Landroid/graphics/drawable/Drawable;FZ)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->W(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    .line 116
    .line 117
    :goto_1
    if-eqz v2, :cond_6

    .line 118
    .line 119
    if-eq v2, v0, :cond_6

    .line 120
    .line 121
    :try_start_5
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/a;->P(Landroid/graphics/drawable/Drawable;)V

    .line 122
    .line 123
    .line 124
    :cond_6
    if-eqz v1, :cond_7

    .line 125
    .line 126
    if-eq v1, p3, :cond_7

    .line 127
    .line 128
    invoke-direct {p0, v3, v1}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->R(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 132
    .line 133
    .line 134
    :cond_7
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 141
    .line 142
    .line 143
    :cond_8
    return-void

    .line 144
    :goto_2
    if-eqz v2, :cond_9

    .line 145
    .line 146
    if-eq v2, v0, :cond_9

    .line 147
    .line 148
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/facebook/drawee/controller/a;->P(Landroid/graphics/drawable/Drawable;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    if-eqz v1, :cond_a

    .line 152
    .line 153
    if-eq v1, p3, :cond_a

    .line 154
    .line 155
    invoke-direct {p0, v3, v1}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->R(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    :cond_a
    throw p1

    .line 162
    :catch_0
    move-exception p4

    .line 163
    const-string p6, "drawable_failed @ onNewResult"

    .line 164
    .line 165
    invoke-direct {p0, p6, p3}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, p3}, Lcom/facebook/drawee/controller/a;->R(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/facebook/drawee/controller/a;->L(Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 172
    .line 173
    .line 174
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_b

    .line 179
    .line 180
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 181
    .line 182
    .line 183
    :cond_b
    return-void

    .line 184
    :catchall_1
    move-exception p1

    .line 185
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    if-eqz p2, :cond_c

    .line 190
    .line 191
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 192
    .line 193
    .line 194
    :cond_c
    throw p1
.end method

.method private O(Ljava/lang/String;Lcom/facebook/datasource/c;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "dataSource",
            "progress",
            "isFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/datasource/c<",
            "TT;>;FZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->F(Ljava/lang/String;Lcom/facebook/datasource/c;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "ignore_old_datasource @ onProgress"

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    invoke-direct {p0, p1, p3}, Lcom/facebook/drawee/controller/a;->G(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Lcom/facebook/datasource/c;->close()Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez p4, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    invoke-interface {p1, p3, p2}, Ls3/c;->d(FZ)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method private Q()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/facebook/datasource/c;->getExtras()Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 18
    .line 19
    invoke-interface {v3}, Lcom/facebook/datasource/c;->close()Z

    .line 20
    .line 21
    .line 22
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :goto_0
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/a;->P(Landroid/graphics/drawable/Drawable;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    .line 38
    .line 39
    :cond_2
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 40
    .line 41
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/a;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0, v3}, Lcom/facebook/drawee/controller/a;->K(Ljava/lang/Object;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const-string v4, "release"

    .line 54
    .line 55
    iget-object v5, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 56
    .line 57
    invoke-direct {p0, v4, v5}, Lcom/facebook/drawee/controller/a;->H(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {p0, v4}, Lcom/facebook/drawee/controller/a;->R(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 66
    .line 67
    move-object v2, v3

    .line 68
    :cond_3
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-direct {p0, v1, v2}, Lcom/facebook/drawee/controller/a;->X(Ljava/util/Map;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void
.end method

.method private U(Ljava/lang/Throwable;Lcom/facebook/datasource/c;)V
    .locals 2
    .param p2    # Lcom/facebook/datasource/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "throwable",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p2, v0, v0}, Lcom/facebook/drawee/controller/a;->I(Lcom/facebook/datasource/c;Ljava/lang/Object;Landroid/net/Uri;)Lb4/c$a;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Lcom/facebook/drawee/controller/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 11
    .line 12
    invoke-interface {v0, v1, p1}, Lcom/facebook/drawee/controller/c;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Lb4/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1, p1, p2}, Lb4/c;->f(Ljava/lang/String;Ljava/lang/Throwable;Lb4/c$a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private V(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Lcom/facebook/drawee/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1, p1}, Lcom/facebook/drawee/controller/c;->onIntermediateImageFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Lb4/c;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {p1, v0}, Lb4/c;->a(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private W(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Lcom/facebook/drawee/controller/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/facebook/drawee/controller/c;->onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Lb4/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1, p2}, Lb4/c;->onIntermediateImageSet(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private X(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "datasourceExtras",
            "imageExtras"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Lcom/facebook/drawee/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/c;->onRelease(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Lb4/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v2}, Lcom/facebook/drawee/controller/a;->J(Ljava/util/Map;Ljava/util/Map;Landroid/net/Uri;)Lb4/c$a;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, v1, p1}, Lb4/c;->d(Ljava/lang/String;Lb4/c$a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private Z(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/datasource/c;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/datasource/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "image",
            "dataSource"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Lcom/facebook/datasource/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/facebook/drawee/controller/a;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Lcom/facebook/drawee/controller/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->f()Landroid/graphics/drawable/Animatable;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, p1, p2, v1}, Lcom/facebook/drawee/controller/c;->onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Lb4/c;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0, p3, p2, v1}, Lcom/facebook/drawee/controller/a;->I(Lcom/facebook/datasource/c;Ljava/lang/Object;Landroid/net/Uri;)Lb4/c$a;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-interface {v0, p1, p2, p3}, Lb4/c;->c(Ljava/lang/String;Ljava/lang/Object;Lb4/c$a;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/facebook/drawee/generic/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 8
    .line 9
    new-instance v1, Lcom/facebook/drawee/controller/a$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/facebook/drawee/controller/a$a;-><init>(Lcom/facebook/drawee/controller/a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->G(Lb4/i;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/facebook/drawee/controller/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private h0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->h()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method static synthetic i(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Object;FZZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/facebook/drawee/controller/a;->N(Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Object;FZZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic j(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/controller/a;->L(Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Throwable;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Lcom/facebook/datasource/c;FZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/drawee/controller/a;->O(Ljava/lang/String;Lcom/facebook/datasource/c;FZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private u()Landroid/graphics/Rect;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ls3/b;->getBounds()Landroid/graphics/Rect;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method


# virtual methods
.method protected A()Lb4/f;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->i:Lb4/f;

    .line 2
    .line 3
    return-object v0
.end method

.method protected B()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected C()Lcom/facebook/drawee/components/c;
    .locals 1
    .annotation build Lcom/facebook/infer/annotation/ReturnsOwnership;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/drawee/components/c;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/drawee/components/c;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 13
    .line 14
    return-object v0
.end method

.method protected E(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "callerContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/facebook/drawee/controller/a;->D(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->v:Z

    .line 6
    .line 7
    return-void
.end method

.method public abstract K(Ljava/lang/Object;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TINFO;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected M(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "cachedImage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method protected abstract P(Landroid/graphics/drawable/Drawable;)V
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation
.end method

.method protected abstract R(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public S(Lcom/facebook/drawee/controller/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/facebook/drawee/controller/a$c;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/facebook/drawee/controller/a$c;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/e;->h(Lcom/facebook/drawee/controller/c;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-ne v0, p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public T(Lb4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/c<",
            "TINFO;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Lb4/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb4/e;->k(Lb4/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected Y(Lcom/facebook/datasource/c;Ljava/lang/Object;)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataSource",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/c<",
            "TT;>;TINFO;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->q()Lcom/facebook/drawee/controller/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-interface {v0, v1, v2}, Lcom/facebook/drawee/controller/c;->onSubmit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->r()Lb4/c;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->B()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {p0, p1, p2, v3}, Lcom/facebook/drawee/controller/a;->I(Lcom/facebook/datasource/c;Ljava/lang/Object;Landroid/net/Uri;)Lb4/c$a;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {v0, v1, v2, p1}, Lb4/c;->b(Ljava/lang/String;Ljava/lang/Object;Lb4/c$a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method protected a0(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerOverlay"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ls3/c;->c(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbstractDraweeController#onAttach"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 32
    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    const-string v3, "request already submitted"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string v3, "request needs submit"

    .line 39
    .line 40
    :goto_0
    const-string v4, "controller %x %s: onAttach: %s"

    .line 41
    .line 42
    invoke-static {v0, v4, v1, v2, v3}, Li3/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 46
    .line 47
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    .line 58
    .line 59
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a$a;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 64
    .line 65
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 66
    .line 67
    if-nez v0, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->i0()V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 79
    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public b0(Lcom/facebook/drawee/controller/d;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/controller/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerViewportVisibilityListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->f:Lcom/facebook/drawee/controller/d;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDescription"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method protected c0(Lcom/facebook/drawee/gestures/a;)V
    .locals 0
    .param p1    # Lcom/facebook/drawee/gestures/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gestureDetector"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/gestures/a;->f(Lcom/facebook/drawee/gestures/a$a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d(Ls3/b;)V
    .locals 4
    .param p1    # Ls3/b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hierarchy"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "controller %x %s: setHierarchy: %s"

    .line 21
    .line 22
    invoke-static {v0, v3, v1, v2, p1}, Li3/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_HIERARCHY:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->a(Lcom/facebook/drawee/components/a$a;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->release()V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-interface {v0, v1}, Ls3/c;->c(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 58
    .line 59
    :cond_3
    if-eqz p1, :cond_4

    .line 60
    .line 61
    instance-of v0, p1, Ls3/c;

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/facebook/common/internal/i;->d(Ljava/lang/Boolean;)V

    .line 68
    .line 69
    .line 70
    check-cast p1, Ls3/c;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    invoke-interface {p1, v0}, Ls3/c;->c(Landroid/graphics/drawable/Drawable;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object p1, p0, Lcom/facebook/drawee/controller/a;->i:Lb4/f;

    .line 80
    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->f0()V

    .line 84
    .line 85
    .line 86
    :cond_5
    return-void
.end method

.method public d0(Lb4/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "loggingListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->i:Lb4/f;

    .line 2
    .line 3
    return-void
.end method

.method public e()Ls3/b;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 2
    .line 3
    return-object v0
.end method

.method protected e0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method public f()Landroid/graphics/drawable/Animatable;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->w:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public g(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleInViewportHint"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->f:Lcom/facebook/drawee/controller/d;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->p:Z

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/d;->a(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/facebook/drawee/controller/a;->p:Z

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/facebook/drawee/controller/d;->b(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/facebook/drawee/controller/a;->p:Z

    .line 29
    .line 30
    return-void
.end method

.method protected g0()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->h0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->s:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected i0()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbstractDraweeController#submitRequest"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->o()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v0, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eqz v4, :cond_4

    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const-string v3, "AbstractDraweeController#submitRequest->cache"

    .line 28
    .line 29
    invoke-static {v3}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iput-object v0, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 33
    .line 34
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 39
    .line 40
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SUBMIT_CACHE_HIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 46
    .line 47
    invoke-virtual {p0, v4}, Lcom/facebook/drawee/controller/a;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/facebook/drawee/controller/a;->Y(Lcom/facebook/datasource/c;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0, v0, v4}, Lcom/facebook/drawee/controller/a;->M(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 60
    .line 61
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 62
    .line 63
    const/high16 v5, 0x3f800000    # 1.0f

    .line 64
    .line 65
    const/4 v6, 0x1

    .line 66
    const/4 v7, 0x1

    .line 67
    const/4 v8, 0x1

    .line 68
    move-object v1, p0

    .line 69
    invoke-direct/range {v1 .. v8}, Lcom/facebook/drawee/controller/a;->N(Ljava/lang/String;Lcom/facebook/datasource/c;Ljava/lang/Object;FZZZ)V

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :cond_4
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 92
    .line 93
    sget-object v4, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DATASOURCE_SUBMIT:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 96
    .line 97
    .line 98
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 99
    .line 100
    const/4 v4, 0x0

    .line 101
    invoke-interface {v3, v4, v2}, Ls3/c;->d(FZ)V

    .line 102
    .line 103
    .line 104
    iput-boolean v2, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 105
    .line 106
    iput-boolean v1, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->t()Lcom/facebook/datasource/c;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 113
    .line 114
    invoke-virtual {p0, v1, v0}, Lcom/facebook/drawee/controller/a;->Y(Lcom/facebook/datasource/c;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_5

    .line 123
    .line 124
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 125
    .line 126
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 135
    .line 136
    iget-object v3, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 137
    .line 138
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    const-string v4, "controller %x %s: submitRequest: dataSource: %x"

    .line 147
    .line 148
    invoke-static {v0, v4, v1, v2, v3}, Li3/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    :cond_5
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 152
    .line 153
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 154
    .line 155
    invoke-interface {v1}, Lcom/facebook/datasource/c;->hasResult()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    new-instance v2, Lcom/facebook/drawee/controller/a$b;

    .line 160
    .line 161
    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/drawee/controller/a$b;-><init>(Lcom/facebook/drawee/controller/a;Ljava/lang/String;Z)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->t:Lcom/facebook/datasource/c;

    .line 165
    .line 166
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->c:Ljava/util/concurrent/Executor;

    .line 167
    .line 168
    invoke-interface {v0, v2, v1}, Lcom/facebook/datasource/c;->c(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;)V

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 178
    .line 179
    .line 180
    :cond_6
    return-void
.end method

.method public l(Lcom/facebook/drawee/controller/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/controller/c<",
            "-TINFO;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/i;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/facebook/drawee/controller/a$c;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/facebook/drawee/controller/a$c;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/e;->a(Lcom/facebook/drawee/controller/c;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/facebook/drawee/controller/a$c;->i(Lcom/facebook/drawee/controller/c;Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/a$c;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 26
    .line 27
    return-void
.end method

.method public m(Lb4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controllerListener2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb4/c<",
            "TINFO;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Lb4/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lb4/e;->h(Lb4/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected abstract n(Ljava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation
.end method

.method protected o()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick()Z
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "controller %x %s: onClick"

    .line 21
    .line 22
    invoke-static {v0, v3, v1, v2}, Li3/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->h0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->d()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 37
    .line 38
    invoke-interface {v0}, Ls3/c;->reset()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->i0()V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    return v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    return v0
.end method

.method public onDetach()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "AbstractDraweeController#onDetach"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/imagepipeline/systrace/b;->a(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x2

    .line 13
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 20
    .line 21
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 30
    .line 31
    const-string v3, "controller %x %s: onDetach"

    .line 32
    .line 33
    invoke-static {v0, v3, v1, v2}, Li3/a;->W(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 37
    .line 38
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->b:Lcom/facebook/drawee/components/a;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/facebook/drawee/components/a;->d(Lcom/facebook/drawee/components/a$a;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->e()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-static {}, Lcom/facebook/imagepipeline/systrace/b;->c()V

    .line 58
    .line 59
    .line 60
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/facebook/drawee/controller/a;->z:Ljava/lang/Class;

    .line 9
    .line 10
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 19
    .line 20
    const-string v3, "controller %x %s: onTouchEvent %s"

    .line 21
    .line 22
    invoke-static {v0, v3, v1, v2, p1}, Li3/a;->X(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/a;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/facebook/drawee/controller/a;->g0()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    return v1

    .line 45
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/gestures/a;->d(Landroid/view/MotionEvent;)Z

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    return p1
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->m:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method protected q()Lcom/facebook/drawee/controller/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/drawee/controller/c<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->g:Lcom/facebook/drawee/controller/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/facebook/drawee/controller/b;->a()Lcom/facebook/drawee/controller/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method protected r()Lb4/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb4/c<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->h:Lb4/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_RELEASE_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->c(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->d:Lcom/facebook/drawee/components/c;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/drawee/components/c;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/facebook/drawee/gestures/a;->e()V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->j:Ls3/c;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ls3/c;->reset()V

    .line 27
    .line 28
    .line 29
    :cond_2
    invoke-direct {p0}, Lcom/facebook/drawee/controller/a;->Q()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected s()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->k:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract t()Lcom/facebook/datasource/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/h;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isAttached"

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/facebook/drawee/controller/a;->n:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "isRequestSubmitted"

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/facebook/drawee/controller/a;->o:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "hasFetchFailed"

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/facebook/drawee/controller/a;->q:Z

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->u:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Lcom/facebook/drawee/controller/a;->y(Ljava/lang/Object;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v2, "fetchedImage"

    .line 36
    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/facebook/drawee/controller/a;->a:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v2, "events"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method protected v()Lcom/facebook/drawee/gestures/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->e:Lcom/facebook/drawee/gestures/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected x(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "<null>"

    .line 13
    .line 14
    :goto_0
    return-object p1
.end method

.method protected y(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method protected abstract z(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TINFO;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
