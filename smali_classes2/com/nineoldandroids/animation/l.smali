.class public final Lcom/nineoldandroids/animation/l;
.super Lcom/nineoldandroids/animation/q;
.source "SourceFile"


# static fields
.field private static final R:Z

.field private static final S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/util/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private O:Ljava/lang/Object;

.field private P:Ljava/lang/String;

.field private Q:Lcom/nineoldandroids/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/nineoldandroids/animation/l;->S:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "alpha"

    .line 9
    .line 10
    sget-object v2, Lcom/nineoldandroids/animation/m;->a:Lcom/nineoldandroids/util/c;

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "pivotX"

    .line 16
    .line 17
    sget-object v2, Lcom/nineoldandroids/animation/m;->b:Lcom/nineoldandroids/util/c;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "pivotY"

    .line 23
    .line 24
    sget-object v2, Lcom/nineoldandroids/animation/m;->c:Lcom/nineoldandroids/util/c;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "translationX"

    .line 30
    .line 31
    sget-object v2, Lcom/nineoldandroids/animation/m;->d:Lcom/nineoldandroids/util/c;

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string v1, "translationY"

    .line 37
    .line 38
    sget-object v2, Lcom/nineoldandroids/animation/m;->e:Lcom/nineoldandroids/util/c;

    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "rotation"

    .line 44
    .line 45
    sget-object v2, Lcom/nineoldandroids/animation/m;->f:Lcom/nineoldandroids/util/c;

    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v1, "rotationX"

    .line 51
    .line 52
    sget-object v2, Lcom/nineoldandroids/animation/m;->g:Lcom/nineoldandroids/util/c;

    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v1, "rotationY"

    .line 58
    .line 59
    sget-object v2, Lcom/nineoldandroids/animation/m;->h:Lcom/nineoldandroids/util/c;

    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v1, "scaleX"

    .line 65
    .line 66
    sget-object v2, Lcom/nineoldandroids/animation/m;->i:Lcom/nineoldandroids/util/c;

    .line 67
    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v1, "scaleY"

    .line 72
    .line 73
    sget-object v2, Lcom/nineoldandroids/animation/m;->j:Lcom/nineoldandroids/util/c;

    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v1, "scrollX"

    .line 79
    .line 80
    sget-object v2, Lcom/nineoldandroids/animation/m;->k:Lcom/nineoldandroids/util/c;

    .line 81
    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v1, "scrollY"

    .line 86
    .line 87
    sget-object v2, Lcom/nineoldandroids/animation/m;->l:Lcom/nineoldandroids/util/c;

    .line 88
    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v1, "x"

    .line 93
    .line 94
    sget-object v2, Lcom/nineoldandroids/animation/m;->m:Lcom/nineoldandroids/util/c;

    .line 95
    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v1, "y"

    .line 100
    .line 101
    sget-object v2, Lcom/nineoldandroids/animation/m;->n:Lcom/nineoldandroids/util/c;

    .line 102
    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/l;->z0(Lcom/nineoldandroids/util/c;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/l;->A0(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs r0(Ljava/lang/Object;Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/animation/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->f0([F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs s0(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->f0([F)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs t0(Ljava/lang/Object;Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/animation/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/animation/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->h0([I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs u0(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/l;->h0([I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static varargs v0(Ljava/lang/Object;Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/c<",
            "TT;TV;>;",
            "Lcom/nineoldandroids/animation/p<",
            "TV;>;[TV;)",
            "Lcom/nineoldandroids/animation/l;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p3}, Lcom/nineoldandroids/animation/l;->i0([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/q;->e0(Lcom/nineoldandroids/animation/p;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static varargs w0(Ljava/lang/Object;Ljava/lang/String;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/l;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p3}, Lcom/nineoldandroids/animation/l;->i0([Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/q;->e0(Lcom/nineoldandroids/animation/p;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static varargs x0(Ljava/lang/Object;[Lcom/nineoldandroids/animation/n;)Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nineoldandroids/animation/l;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public A0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/n;->g()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/n;->x(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/nineoldandroids/animation/q;->u:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->u:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/q;->m:Z

    .line 28
    .line 29
    return-void
.end method

.method E(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->E(F)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 5
    .line 6
    array-length p1, p1

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ge v0, p1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 11
    .line 12
    aget-object v1, v1, v0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/n;->q(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public bridge synthetic H()Lcom/nineoldandroids/animation/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->o0()Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method U()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/q;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->Q:Lcom/nineoldandroids/util/c;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/nineoldandroids/view/animation/a;->r:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 14
    .line 15
    instance-of v0, v0, Landroid/view/View;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/nineoldandroids/animation/l;->S:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/nineoldandroids/util/c;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/l;->z0(Lcom/nineoldandroids/util/c;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 41
    .line 42
    array-length v0, v0

    .line 43
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-ge v1, v0, :cond_1

    .line 45
    .line 46
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 47
    .line 48
    aget-object v2, v2, v1

    .line 49
    .line 50
    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/n;->B(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-super {p0}, Lcom/nineoldandroids/animation/q;->U()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method public bridge synthetic b()Lcom/nineoldandroids/animation/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->o0()Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->o0()Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic d0(J)Lcom/nineoldandroids/animation/q;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public varargs f0([F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->f0([F)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->Q:Lcom/nineoldandroids/util/c;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-array v2, v2, [Lcom/nineoldandroids/animation/n;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/nineoldandroids/animation/n;->i(Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/animation/n;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v2, v1

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    new-array v0, v2, [Lcom/nineoldandroids/animation/n;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/n;->j(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/n;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v0, v1

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public varargs h0([I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->h0([I)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->Q:Lcom/nineoldandroids/util/c;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    new-array v2, v2, [Lcom/nineoldandroids/animation/n;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/nineoldandroids/animation/n;->k(Lcom/nineoldandroids/util/c;[I)Lcom/nineoldandroids/animation/n;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v2, v1

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    new-array v0, v2, [Lcom/nineoldandroids/animation/n;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/n;->l(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/n;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    aput-object p1, v0, v1

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 42
    .line 43
    .line 44
    :goto_1
    return-void
.end method

.method public varargs i0([Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/q;->i0([Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->Q:Lcom/nineoldandroids/util/c;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    new-array v3, v3, [Lcom/nineoldandroids/animation/n;

    .line 21
    .line 22
    invoke-static {v0, v1, p1}, Lcom/nineoldandroids/animation/n;->o(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/n;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v3, v2

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    new-array v0, v3, [Lcom/nineoldandroids/animation/n;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3, v1, p1}, Lcom/nineoldandroids/animation/n;->p(Ljava/lang/String;Lcom/nineoldandroids/animation/p;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/n;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    aput-object p1, v0, v2

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/q;->l0([Lcom/nineoldandroids/animation/n;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    return-void
.end method

.method public bridge synthetic l(J)Lcom/nineoldandroids/animation/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/l;->y0(J)Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public o(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/q;->m:Z

    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public o0()Lcom/nineoldandroids/animation/l;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/q;->H()Lcom/nineoldandroids/animation/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/nineoldandroids/animation/l;

    .line 6
    .line 7
    return-object v0
.end method

.method public p()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->U()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/n;->y(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public p0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/l;->U()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 11
    .line 12
    aget-object v2, v2, v1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/n;->D(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public q0()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/q;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ObjectAnimator@"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ", target "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/nineoldandroids/animation/l;->O:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 37
    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 42
    .line 43
    array-length v2, v2

    .line 44
    if-ge v1, v2, :cond_0

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "\n    "

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 60
    .line 61
    aget-object v0, v0, v1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/n;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method public y0(J)Lcom/nineoldandroids/animation/l;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public z0(Lcom/nineoldandroids/util/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/q;->t:[Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    aget-object v0, v0, v1

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/nineoldandroids/animation/n;->g()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/n;->w(Lcom/nineoldandroids/util/c;)V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/nineoldandroids/animation/q;->u:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/nineoldandroids/animation/q;->u:Ljava/util/HashMap;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/l;->Q:Lcom/nineoldandroids/util/c;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/nineoldandroids/animation/l;->P:Ljava/lang/String;

    .line 36
    .line 37
    :cond_1
    iput-object p1, p0, Lcom/nineoldandroids/animation/l;->Q:Lcom/nineoldandroids/util/c;

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/nineoldandroids/animation/q;->m:Z

    .line 40
    .line 41
    return-void
.end method
