.class public Lcom/join/android/app/component/video/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/join/android/app/component/video/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field c:I

.field d:I

.field e:I

.field f:Landroidx/recyclerview/widget/RecyclerView;

.field g:I

.field h:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "playTag"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 18
    .line 19
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playTag"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/android/app/component/video/b;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/android/app/component/video/b;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/android/app/component/video/b;->g0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public static C(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playTag",
            "seek"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/android/app/component/video/b;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/android/app/component/video/b;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/video/b;->h0(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method

.method public static G(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/component/video/h;->v(Lcom/join/android/app/component/video/MultiStandVideo;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/component/video/h;->t(Lcom/join/android/app/component/video/MultiStandVideo;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/component/video/h;->u(Lcom/join/android/app/component/video/MultiStandVideo;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/android/app/component/video/h;->w(Lcom/join/android/app/component/video/MultiStandVideo;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playTag"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/util/Map$Entry;

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/join/android/app/component/video/b;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/join/android/app/component/video/b;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/join/android/app/component/video/b;->i0()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    if-lez p0, :cond_2

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->G(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    :cond_2
    return-void
.end method

.method private static k([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p0, v0

    .line 8
    .line 9
    if-le v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method private static l([I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastPositions"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    .line 3
    .line 4
    array-length v2, p0

    .line 5
    :goto_0
    if-ge v0, v2, :cond_1

    .line 6
    .line 7
    aget v3, p0, v0

    .line 8
    .line 9
    if-ge v3, v1, :cond_0

    .line 10
    .line 11
    move v1, v3

    .line 12
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method

.method public static m(Landroidx/recyclerview/widget/RecyclerView;)[I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    filled-new-array {v0, v0}, [I

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    instance-of v2, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    aput v2, v1, v0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    aput p0, v1, v3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    instance-of v2, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 34
    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-array v2, v2, [I

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Lcom/join/android/app/component/video/h;->l([I)I

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    aput p0, v1, v0

    .line 53
    .line 54
    invoke-static {v2}, Lcom/join/android/app/component/video/h;->k([I)I

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    aput p0, v1, v3

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    aput v2, v1, v0

    .line 68
    .line 69
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    aput p0, v1, v3

    .line 74
    .line 75
    :goto_0
    return-object v1
.end method

.method public static n(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstCompletelyVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->l([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static o(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->l([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static p(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastCompletelyVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->k([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static q(Landroidx/recyclerview/widget/RecyclerView;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of v0, p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    check-cast p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    new-array v0, v0, [I

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->k([I)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    :goto_0
    return p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;IZ)Lcom/join/android/app/component/video/b;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "playTag",
            "mPlayPosition",
            "create"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/android/app/component/video/b;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/join/android/app/component/video/b;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/join/android/app/component/video/b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p2}, Lcom/papa/gsyvideoplayer/c;->v(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/papa/gsyvideoplayer/c;->i(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Lcom/papa/gsyvideoplayer/model/c;

    .line 25
    .line 26
    const-string p2, "enable-accurate-seek"

    .line 27
    .line 28
    const/4 p3, 0x4

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-direct {p1, p3, p2, v1}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lcom/papa/gsyvideoplayer/model/c;

    .line 34
    .line 35
    const-string v2, "analyzeduration"

    .line 36
    .line 37
    invoke-direct {p2, v1, v2, v1}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Lcom/papa/gsyvideoplayer/model/c;

    .line 41
    .line 42
    const-string v3, "analyzemaxduration"

    .line 43
    .line 44
    const/16 v4, 0x1e

    .line 45
    .line 46
    invoke-direct {v2, v1, v3, v4}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/papa/gsyvideoplayer/model/c;

    .line 50
    .line 51
    const-string v4, "skip_loop_filter"

    .line 52
    .line 53
    const/16 v5, 0x30

    .line 54
    .line 55
    const/4 v6, 0x2

    .line 56
    invoke-direct {v3, v6, v4, v5}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Lcom/papa/gsyvideoplayer/model/c;

    .line 60
    .line 61
    const-string v4, "packet-buffering"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    invoke-direct {v3, p3, v4, v5}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Lcom/papa/gsyvideoplayer/model/c;

    .line 68
    .line 69
    const-string v5, "framedrop"

    .line 70
    .line 71
    invoke-direct {v4, p3, v5, v1}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    new-instance p3, Lcom/papa/gsyvideoplayer/model/c;

    .line 75
    .line 76
    const-string v5, "dns_cache_clear"

    .line 77
    .line 78
    invoke-direct {p3, v1, v5, v1}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    new-instance v5, Lcom/papa/gsyvideoplayer/model/c;

    .line 82
    .line 83
    const-string v6, "protocol_whitelist"

    .line 84
    .line 85
    const-string v7, "crypto,file,http,https,tcp,tls,udp"

    .line 86
    .line 87
    invoke-direct {v5, v1, v6, v7}, Lcom/papa/gsyvideoplayer/model/c;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/papa/gsyvideoplayer/c;->X(Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    invoke-virtual {p1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_0
    return-object v0
.end method

.method private static synthetic t(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic u(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic v(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic w(Lcom/join/android/app/component/video/MultiStandVideo;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/MultiStandVideo;->startPlayLogic()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static z(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playTag"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/join/android/app/component/video/b;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/android/app/component/video/b;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/android/app/component/video/b;->f0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/h;->h(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public D()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/android/app/component/video/h;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public E()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/h;->i(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/android/app/component/video/h;->f(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public e(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isHomepage"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/pref/h;->e()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    if-eq p1, v2, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    return v0

    .line 24
    :cond_1
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/k;->i(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    return v0

    .line 36
    :cond_3
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/pref/h;->z()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    if-eq p1, v1, :cond_4

    .line 51
    .line 52
    return v0

    .line 53
    :cond_4
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1}, Lcom/papa/gsyvideoplayer/utils/k;->i(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_5

    .line 62
    .line 63
    return v1

    .line 64
    :cond_5
    return v0

    .line 65
    :cond_6
    return v1
.end method

.method public declared-synchronized f(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playCount"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :try_start_2
    iput p1, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->n(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->p(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 38
    .line 39
    add-int v1, v0, p1

    .line 40
    .line 41
    iput v1, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x1

    .line 50
    sub-int/2addr v1, v2

    .line 51
    if-lt v0, v1, :cond_3

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 54
    .line 55
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 56
    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    div-int/2addr v1, v0

    .line 72
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    rem-int/2addr v3, v0

    .line 79
    if-nez v3, :cond_1

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    iput v0, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 88
    .line 89
    sub-int/2addr v0, p1

    .line 90
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    mul-int v1, v1, v0

    .line 94
    .line 95
    iput v1, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 96
    .line 97
    add-int/2addr v1, p1

    .line 98
    iput v1, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 106
    .line 107
    sub-int/2addr v0, p1

    .line 108
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 109
    .line 110
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    .line 116
    .line 117
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 121
    .line 122
    :goto_1
    iget v3, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 123
    .line 124
    if-gt v1, v3, :cond_9

    .line 125
    .line 126
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 127
    .line 128
    if-eqz v3, :cond_8

    .line 129
    .line 130
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    if-eqz v3, :cond_8

    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 137
    .line 138
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const v4, 0x7f0a1bea

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-nez v3, :cond_4

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_4
    instance-of v4, v3, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 153
    .line 154
    if-eqz v4, :cond_8

    .line 155
    .line 156
    check-cast v3, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    const/4 v5, 0x2

    .line 163
    if-eq v4, v5, :cond_7

    .line 164
    .line 165
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eq v4, v2, :cond_7

    .line 170
    .line 171
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    const/4 v5, 0x3

    .line 176
    if-ne v4, v5, :cond_5

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_5
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    const/4 v5, 0x5

    .line 184
    if-ne v4, v5, :cond_6

    .line 185
    .line 186
    const/4 v4, 0x0

    .line 187
    invoke-virtual {v3, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_9
    sget-object v1, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 205
    .line 206
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 207
    .line 208
    .line 209
    move-result v1

    .line 210
    if-lez v1, :cond_c

    .line 211
    .line 212
    new-instance v1, Ljava/util/ArrayList;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .line 216
    .line 217
    sget-object v2, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 218
    .line 219
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    if-eqz v3, :cond_b

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    check-cast v3, Ljava/util/Map$Entry;

    .line 238
    .line 239
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v4

    .line 243
    check-cast v4, Lcom/join/android/app/component/video/b;

    .line 244
    .line 245
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    iget-object v6, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v5

    .line 255
    if-eqz v5, :cond_a

    .line 256
    .line 257
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v5

    .line 265
    if-nez v5, :cond_a

    .line 266
    .line 267
    invoke-virtual {v4}, Lcom/join/android/app/component/video/b;->i0()V

    .line 268
    .line 269
    .line 270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v3

    .line 274
    check-cast v3, Ljava/lang/String;

    .line 275
    .line 276
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-lez v0, :cond_c

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_c

    .line 295
    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Ljava/lang/String;

    .line 301
    .line 302
    invoke-static {v1}, Lcom/join/android/app/component/video/h;->G(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-lez v0, :cond_d

    .line 311
    .line 312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-eqz v0, :cond_d

    .line 321
    .line 322
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    check-cast v0, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 327
    .line 328
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 329
    .line 330
    new-instance v2, Lcom/join/android/app/component/video/d;

    .line 331
    .line 332
    invoke-direct {v2, v0}, Lcom/join/android/app/component/video/d;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;)V

    .line 333
    .line 334
    .line 335
    const-wide/16 v3, 0x64

    .line 336
    .line 337
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    .line 339
    .line 340
    goto :goto_6

    .line 341
    :cond_d
    monitor-exit p0

    .line 342
    goto :goto_7

    .line 343
    :catchall_0
    move-exception p1

    .line 344
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 346
    :catch_0
    move-exception p1

    .line 347
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    .line 349
    .line 350
    :goto_7
    monitor-exit p0

    .line 351
    return-void

    .line 352
    :catchall_1
    move-exception p1

    .line 353
    monitor-exit p0

    .line 354
    throw p1
.end method

.method public declared-synchronized g()V
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 9
    .line 10
    invoke-static {}, Lcom/MApplication;->n()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isHomepagePlayVideo()Lorg/androidannotations/api/sharedpreferences/d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x2

    .line 36
    :try_start_1
    iput v0, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 39
    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/join/android/app/component/video/h;->n(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 57
    .line 58
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/join/android/app/component/video/h;->p(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 65
    .line 66
    new-instance v1, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 77
    .line 78
    instance-of v4, v3, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 79
    .line 80
    const/4 v5, 0x1

    .line 81
    if-eqz v4, :cond_15

    .line 82
    .line 83
    check-cast v3, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;->o()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/4 v4, 0x5

    .line 90
    const/16 v6, 0x24

    .line 91
    .line 92
    const/16 v7, 0x1d

    .line 93
    .line 94
    const v8, 0x7f0a1bea

    .line 95
    .line 96
    .line 97
    const/4 v9, 0x0

    .line 98
    if-eqz v3, :cond_b

    .line 99
    .line 100
    iget v3, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 101
    .line 102
    iget-object v10, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 103
    .line 104
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 105
    .line 106
    .line 107
    move-result v10

    .line 108
    sub-int/2addr v10, v5

    .line 109
    if-lt v3, v10, :cond_b

    .line 110
    .line 111
    iget v3, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 112
    .line 113
    const/4 v10, 0x0

    .line 114
    :goto_0
    iget v11, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 115
    .line 116
    if-lt v3, v11, :cond_15

    .line 117
    .line 118
    iget v11, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 119
    .line 120
    if-lt v10, v11, :cond_2

    .line 121
    .line 122
    goto/16 :goto_8

    .line 123
    .line 124
    :cond_2
    iget-object v11, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 125
    .line 126
    if-eqz v11, :cond_a

    .line 127
    .line 128
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v11

    .line 132
    if-eqz v11, :cond_a

    .line 133
    .line 134
    iget-object v11, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 135
    .line 136
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    if-nez v11, :cond_3

    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_3
    iget-object v12, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 148
    .line 149
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 150
    .line 151
    .line 152
    move-result-object v12

    .line 153
    if-eqz v12, :cond_6

    .line 154
    .line 155
    iget-object v12, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 156
    .line 157
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 158
    .line 159
    .line 160
    move-result-object v12

    .line 161
    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 162
    .line 163
    .line 164
    move-result v12

    .line 165
    if-eq v12, v7, :cond_4

    .line 166
    .line 167
    if-ne v12, v6, :cond_6

    .line 168
    .line 169
    :cond_4
    if-lt v10, v5, :cond_5

    .line 170
    .line 171
    goto/16 :goto_8

    .line 172
    .line 173
    :cond_5
    const/4 v12, 0x1

    .line 174
    goto :goto_1

    .line 175
    :cond_6
    const/4 v12, 0x0

    .line 176
    :goto_1
    instance-of v13, v11, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 177
    .line 178
    if-eqz v13, :cond_9

    .line 179
    .line 180
    check-cast v11, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 181
    .line 182
    invoke-virtual {v11}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 183
    .line 184
    .line 185
    move-result v13

    .line 186
    if-ne v13, v0, :cond_7

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_7
    invoke-virtual {v11}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 190
    .line 191
    .line 192
    move-result v13

    .line 193
    if-ne v13, v4, :cond_8

    .line 194
    .line 195
    invoke-virtual {v11, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_8
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 203
    .line 204
    invoke-virtual {v11}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v11

    .line 208
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .line 210
    .line 211
    :cond_9
    if-eqz v12, :cond_a

    .line 212
    .line 213
    goto/16 :goto_8

    .line 214
    .line 215
    :cond_a
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 216
    .line 217
    goto :goto_0

    .line 218
    :cond_b
    iget v3, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 219
    .line 220
    const/4 v10, 0x0

    .line 221
    :goto_4
    iget v11, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 222
    .line 223
    if-gt v3, v11, :cond_15

    .line 224
    .line 225
    iget v11, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 226
    .line 227
    if-lt v10, v11, :cond_c

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_c
    iget-object v11, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 231
    .line 232
    if-eqz v11, :cond_14

    .line 233
    .line 234
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    if-eqz v11, :cond_14

    .line 239
    .line 240
    iget-object v11, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 241
    .line 242
    invoke-virtual {v11, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 243
    .line 244
    .line 245
    move-result-object v11

    .line 246
    invoke-virtual {v11, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    if-nez v11, :cond_d

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_d
    iget-object v12, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 254
    .line 255
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    if-eqz v12, :cond_10

    .line 260
    .line 261
    iget-object v12, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 262
    .line 263
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 264
    .line 265
    .line 266
    move-result-object v12

    .line 267
    invoke-virtual {v12, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    .line 268
    .line 269
    .line 270
    move-result v12

    .line 271
    if-eq v12, v7, :cond_e

    .line 272
    .line 273
    if-ne v12, v6, :cond_10

    .line 274
    .line 275
    :cond_e
    if-lt v10, v5, :cond_f

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_f
    const/4 v12, 0x1

    .line 279
    goto :goto_5

    .line 280
    :cond_10
    const/4 v12, 0x0

    .line 281
    :goto_5
    instance-of v13, v11, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 282
    .line 283
    if-eqz v13, :cond_13

    .line 284
    .line 285
    check-cast v11, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 286
    .line 287
    invoke-virtual {v11}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 288
    .line 289
    .line 290
    move-result v13

    .line 291
    if-ne v13, v0, :cond_11

    .line 292
    .line 293
    goto :goto_6

    .line 294
    :cond_11
    invoke-virtual {v11}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    if-ne v13, v4, :cond_12

    .line 299
    .line 300
    invoke-virtual {v11, v9}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 301
    .line 302
    .line 303
    goto :goto_6

    .line 304
    :cond_12
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    :goto_6
    add-int/lit8 v10, v10, 0x1

    .line 308
    .line 309
    invoke-virtual {v11}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    :cond_13
    if-eqz v12, :cond_14

    .line 317
    .line 318
    goto :goto_8

    .line 319
    :cond_14
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_15
    :goto_8
    sget-object v0, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    if-lez v0, :cond_18

    .line 329
    .line 330
    new-instance v0, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    sget-object v3, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 336
    .line 337
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    :cond_16
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-eqz v4, :cond_17

    .line 350
    .line 351
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Ljava/util/Map$Entry;

    .line 356
    .line 357
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    check-cast v6, Lcom/join/android/app/component/video/b;

    .line 362
    .line 363
    invoke-virtual {v6}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    iget-object v8, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v7

    .line 373
    if-eqz v7, :cond_16

    .line 374
    .line 375
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    move-result-object v7

    .line 379
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 380
    .line 381
    .line 382
    move-result v7

    .line 383
    if-nez v7, :cond_16

    .line 384
    .line 385
    invoke-virtual {v6}, Lcom/join/android/app/component/video/b;->i0()V

    .line 386
    .line 387
    .line 388
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v4

    .line 392
    check-cast v4, Ljava/lang/String;

    .line 393
    .line 394
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    goto :goto_9

    .line 398
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 399
    .line 400
    .line 401
    move-result v2

    .line 402
    if-lez v2, :cond_18

    .line 403
    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    if-eqz v2, :cond_18

    .line 413
    .line 414
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    check-cast v2, Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v2}, Lcom/join/android/app/component/video/h;->G(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    goto :goto_a

    .line 424
    :cond_18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-lez v0, :cond_19

    .line 429
    .line 430
    invoke-virtual {p0, v5}, Lcom/join/android/app/component/video/h;->e(Z)Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_19

    .line 435
    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_19

    .line 445
    .line 446
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    check-cast v1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 451
    .line 452
    iget-object v2, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 453
    .line 454
    new-instance v3, Lcom/join/android/app/component/video/g;

    .line 455
    .line 456
    invoke-direct {v3, v1}, Lcom/join/android/app/component/video/g;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;)V

    .line 457
    .line 458
    .line 459
    const-wide/16 v4, 0x12c

    .line 460
    .line 461
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    .line 463
    .line 464
    goto :goto_b

    .line 465
    :catchall_0
    move-exception v0

    .line 466
    goto :goto_c

    .line 467
    :catch_0
    move-exception v0

    .line 468
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    .line 470
    .line 471
    :cond_19
    monitor-exit p0

    .line 472
    return-void

    .line 473
    :goto_c
    monitor-exit p0

    .line 474
    throw v0
.end method

.method public declared-synchronized h(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playCount"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iput p1, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->n(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->p(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 38
    .line 39
    iput v0, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x1

    .line 48
    sub-int/2addr v1, v2

    .line 49
    if-lt v0, v1, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 52
    .line 53
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 64
    .line 65
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    div-int/2addr v1, v0

    .line 70
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    rem-int/2addr v3, v0

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    iput v0, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 86
    .line 87
    sub-int/2addr v0, p1

    .line 88
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    mul-int v1, v1, v0

    .line 92
    .line 93
    iput v1, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 94
    .line 95
    add-int/2addr v1, p1

    .line 96
    iput v1, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 104
    .line 105
    sub-int/2addr v0, p1

    .line 106
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 107
    .line 108
    :cond_3
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v0, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iget v1, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 119
    .line 120
    :goto_1
    iget v3, p0, Lcom/join/android/app/component/video/h;->e:I

    .line 121
    .line 122
    if-gt v1, v3, :cond_9

    .line 123
    .line 124
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 125
    .line 126
    if-eqz v3, :cond_8

    .line 127
    .line 128
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 135
    .line 136
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const v4, 0x7f0a1bea

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-nez v3, :cond_4

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_4
    instance-of v4, v3, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 151
    .line 152
    if-eqz v4, :cond_8

    .line 153
    .line 154
    check-cast v3, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    const/4 v5, 0x2

    .line 161
    if-eq v4, v5, :cond_7

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    if-eq v4, v2, :cond_7

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    const/4 v5, 0x3

    .line 174
    if-ne v4, v5, :cond_5

    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {v3}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 178
    .line 179
    .line 180
    move-result v4

    .line 181
    const/4 v5, 0x5

    .line 182
    if-ne v4, v5, :cond_6

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    invoke-virtual {v3, v4}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_6
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_7
    :goto_2
    invoke-virtual {v3}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v3

    .line 196
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_9
    sget-object v1, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-lez v1, :cond_c

    .line 209
    .line 210
    new-instance v1, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .line 214
    .line 215
    sget-object v2, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v3

    .line 229
    if-eqz v3, :cond_b

    .line 230
    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    check-cast v3, Ljava/util/Map$Entry;

    .line 236
    .line 237
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    check-cast v4, Lcom/join/android/app/component/video/b;

    .line 242
    .line 243
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v5

    .line 247
    iget-object v6, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v5

    .line 253
    if-eqz v5, :cond_a

    .line 254
    .line 255
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    move-result v5

    .line 263
    if-nez v5, :cond_a

    .line 264
    .line 265
    invoke-virtual {v4}, Lcom/join/android/app/component/video/b;->i0()V

    .line 266
    .line 267
    .line 268
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    check-cast v3, Ljava/lang/String;

    .line 273
    .line 274
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .line 276
    .line 277
    goto :goto_4

    .line 278
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-lez v0, :cond_c

    .line 283
    .line 284
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_c

    .line 293
    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Ljava/lang/String;

    .line 299
    .line 300
    invoke-static {v1}, Lcom/join/android/app/component/video/h;->G(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-lez v0, :cond_d

    .line 309
    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_d

    .line 319
    .line 320
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    check-cast v0, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 325
    .line 326
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 327
    .line 328
    new-instance v2, Lcom/join/android/app/component/video/e;

    .line 329
    .line 330
    invoke-direct {v2, v0}, Lcom/join/android/app/component/video/e;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;)V

    .line 331
    .line 332
    .line 333
    const-wide/16 v3, 0x64

    .line 334
    .line 335
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    .line 337
    .line 338
    goto :goto_6

    .line 339
    :cond_d
    monitor-exit p0

    .line 340
    goto :goto_7

    .line 341
    :catchall_0
    move-exception p1

    .line 342
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    :catchall_1
    move-exception p1

    .line 345
    goto :goto_8

    .line 346
    :catch_0
    move-exception p1

    .line 347
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    .line 349
    .line 350
    :goto_7
    monitor-exit p0

    .line 351
    return-void

    .line 352
    :goto_8
    monitor-exit p0

    .line 353
    throw p1
.end method

.method public declared-synchronized i(I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playCount"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iput p1, p0, Lcom/join/android/app/component/video/h;->g:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->n(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->p(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 37
    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iget v2, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 51
    .line 52
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/lit8 v3, v3, -0x1

    .line 57
    .line 58
    const/4 v4, 0x5

    .line 59
    const/4 v5, 0x2

    .line 60
    const v6, 0x7f0a1bea

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    if-lt v2, v3, :cond_6

    .line 65
    .line 66
    iget v2, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    :goto_0
    iget v8, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 70
    .line 71
    if-lt v2, v8, :cond_c

    .line 72
    .line 73
    if-lt v3, p1, :cond_1

    .line 74
    .line 75
    goto/16 :goto_6

    .line 76
    .line 77
    :cond_1
    iget-object v8, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 78
    .line 79
    if-eqz v8, :cond_5

    .line 80
    .line 81
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    if-eqz v8, :cond_5

    .line 86
    .line 87
    iget-object v8, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 88
    .line 89
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    if-nez v8, :cond_2

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :cond_2
    instance-of v9, v8, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 101
    .line 102
    if-eqz v9, :cond_5

    .line 103
    .line 104
    check-cast v8, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 105
    .line 106
    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    if-ne v9, v5, :cond_3

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-ne v9, v4, :cond_4

    .line 118
    .line 119
    invoke-virtual {v8, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_4
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    invoke-virtual {v8}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    iget v2, p0, Lcom/join/android/app/component/video/h;->c:I

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    :goto_3
    iget v8, p0, Lcom/join/android/app/component/video/h;->d:I

    .line 142
    .line 143
    if-gt v2, v8, :cond_c

    .line 144
    .line 145
    if-lt v3, p1, :cond_7

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_7
    iget-object v8, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 149
    .line 150
    if-eqz v8, :cond_b

    .line 151
    .line 152
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    if-eqz v8, :cond_b

    .line 157
    .line 158
    iget-object v8, p0, Lcom/join/android/app/component/video/h;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 159
    .line 160
    invoke-virtual {v8, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    if-nez v8, :cond_8

    .line 169
    .line 170
    goto :goto_5

    .line 171
    :cond_8
    instance-of v9, v8, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 172
    .line 173
    if-eqz v9, :cond_b

    .line 174
    .line 175
    check-cast v8, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 176
    .line 177
    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    if-ne v9, v5, :cond_9

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_9
    invoke-virtual {v8}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->getCurrentState()I

    .line 185
    .line 186
    .line 187
    move-result v9

    .line 188
    if-ne v9, v4, :cond_a

    .line 189
    .line 190
    invoke-virtual {v8, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoResume(Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_a
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 198
    .line 199
    invoke-virtual {v8}, Lcom/join/android/app/component/video/MultiStandVideo;->getKey()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v8

    .line 203
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_c
    :goto_6
    sget-object p1, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-lez p1, :cond_f

    .line 216
    .line 217
    new-instance p1, Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    .line 221
    .line 222
    sget-object v2, Lcom/join/android/app/component/video/h;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    :cond_d
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-eqz v3, :cond_e

    .line 237
    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    check-cast v3, Ljava/util/Map$Entry;

    .line 243
    .line 244
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    check-cast v4, Lcom/join/android/app/component/video/b;

    .line 249
    .line 250
    invoke-virtual {v4}, Lcom/papa/gsyvideoplayer/c;->s()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    iget-object v6, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v5

    .line 260
    if-eqz v5, :cond_d

    .line 261
    .line 262
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v5

    .line 266
    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-nez v5, :cond_d

    .line 271
    .line 272
    invoke-virtual {v4}, Lcom/join/android/app/component/video/b;->i0()V

    .line 273
    .line 274
    .line 275
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Ljava/lang/String;

    .line 280
    .line 281
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-lez v1, :cond_f

    .line 290
    .line 291
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_f

    .line 300
    .line 301
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    check-cast v1, Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v1}, Lcom/join/android/app/component/video/h;->G(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_8

    .line 311
    :cond_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    if-lez p1, :cond_10

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    if-eqz v0, :cond_10

    .line 326
    .line 327
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 332
    .line 333
    iget-object v1, p0, Lcom/join/android/app/component/video/h;->h:Landroid/os/Handler;

    .line 334
    .line 335
    new-instance v2, Lcom/join/android/app/component/video/f;

    .line 336
    .line 337
    invoke-direct {v2, v0}, Lcom/join/android/app/component/video/f;-><init>(Lcom/join/android/app/component/video/MultiStandVideo;)V

    .line 338
    .line 339
    .line 340
    const-wide/16 v3, 0x12c

    .line 341
    .line 342
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .line 344
    .line 345
    goto :goto_9

    .line 346
    :catchall_0
    move-exception p1

    .line 347
    goto :goto_a

    .line 348
    :catch_0
    move-exception p1

    .line 349
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .line 351
    .line 352
    :cond_10
    monitor-exit p0

    .line 353
    return-void

    .line 354
    :goto_a
    monitor-exit p0

    .line 355
    throw p1
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->j(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/video/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/component/video/h;->z(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
