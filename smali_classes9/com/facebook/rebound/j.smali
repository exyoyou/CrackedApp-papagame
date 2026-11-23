.class public Lcom/facebook/rebound/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/rebound/m;


# static fields
.field private static final h:Lcom/facebook/rebound/l;

.field private static final i:I = 0x28

.field private static final j:I = 0x6

.field private static final k:I = 0x46

.field private static final l:I = 0xa

.field private static m:I


# instance fields
.field private final b:Lcom/facebook/rebound/o;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/m;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/facebook/rebound/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private final f:Lcom/facebook/rebound/k;

.field private final g:Lcom/facebook/rebound/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/rebound/l;->c()Lcom/facebook/rebound/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/facebook/rebound/j;->h:Lcom/facebook/rebound/l;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput v0, Lcom/facebook/rebound/j;->m:I

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v0, 0x46

    const/16 v1, 0xa

    const/16 v2, 0x28

    const/4 v3, 0x6

    .line 1
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/facebook/rebound/j;-><init>(IIII)V

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/facebook/rebound/o;->m()Lcom/facebook/rebound/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/j;->b:Lcom/facebook/rebound/o;

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/facebook/rebound/j;->e:I

    int-to-double v0, p1

    int-to-double p1, p2

    .line 7
    invoke-static {v0, v1, p1, p2}, Lcom/facebook/rebound/k;->b(DD)Lcom/facebook/rebound/k;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    int-to-double p2, p3

    int-to-double v0, p4

    .line 8
    invoke-static {p2, p3, v0, v1}, Lcom/facebook/rebound/k;->b(DD)Lcom/facebook/rebound/k;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/rebound/j;->g:Lcom/facebook/rebound/k;

    .line 9
    sget-object p3, Lcom/facebook/rebound/j;->h:Lcom/facebook/rebound/l;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "main spring "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/facebook/rebound/j;->m:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/facebook/rebound/j;->m:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/facebook/rebound/l;->a(Lcom/facebook/rebound/k;Ljava/lang/String;)Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "attachment spring "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p4, Lcom/facebook/rebound/j;->m:I

    add-int/lit8 v0, p4, 0x1

    sput v0, Lcom/facebook/rebound/j;->m:I

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/facebook/rebound/l;->a(Lcom/facebook/rebound/k;Ljava/lang/String;)Z

    return-void
.end method

.method public static f()Lcom/facebook/rebound/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/rebound/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/rebound/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static g(IIII)Lcom/facebook/rebound/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/rebound/j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/rebound/j;-><init>(IIII)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Lcom/facebook/rebound/i;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/facebook/rebound/m;

    .line 14
    .line 15
    iget v2, p0, Lcom/facebook/rebound/j;->e:I

    .line 16
    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    add-int/lit8 v2, v0, -0x1

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    if-ge v0, v2, :cond_1

    .line 26
    .line 27
    add-int/lit8 v2, v0, -0x1

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-le v0, v2, :cond_2

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, -0x1

    .line 37
    :goto_0
    const/4 v2, -0x1

    .line 38
    :goto_1
    if-le v0, v3, :cond_3

    .line 39
    .line 40
    iget-object v4, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-ge v0, v4, :cond_3

    .line 47
    .line 48
    iget-object v4, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/facebook/rebound/i;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    invoke-virtual {v0, v4, v5}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 61
    .line 62
    .line 63
    :cond_3
    if-le v2, v3, :cond_4

    .line 64
    .line 65
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-ge v2, v0, :cond_4

    .line 72
    .line 73
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lcom/facebook/rebound/i;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/facebook/rebound/i;->f()D

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/i;->x(D)Lcom/facebook/rebound/i;

    .line 86
    .line 87
    .line 88
    :cond_4
    invoke-interface {v1, p1}, Lcom/facebook/rebound/m;->a(Lcom/facebook/rebound/i;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public b(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/facebook/rebound/m;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/facebook/rebound/m;->b(Lcom/facebook/rebound/i;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public c(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/facebook/rebound/m;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/facebook/rebound/m;->c(Lcom/facebook/rebound/i;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d(Lcom/facebook/rebound/i;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/facebook/rebound/m;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/facebook/rebound/m;->d(Lcom/facebook/rebound/i;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public e(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/j;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->b:Lcom/facebook/rebound/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/rebound/c;->d()Lcom/facebook/rebound/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/i;->a(Lcom/facebook/rebound/m;)Lcom/facebook/rebound/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/facebook/rebound/j;->g:Lcom/facebook/rebound/k;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/i;->B(Lcom/facebook/rebound/k;)Lcom/facebook/rebound/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/facebook/rebound/j;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/rebound/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/facebook/rebound/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->g:Lcom/facebook/rebound/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Lcom/facebook/rebound/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/rebound/j;->e:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/facebook/rebound/i;

    .line 10
    .line 11
    return-object v0
.end method

.method public k()Lcom/facebook/rebound/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(I)Lcom/facebook/rebound/j;
    .locals 2

    .line 1
    iput p1, p0, Lcom/facebook/rebound/j;->e:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/rebound/j;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/facebook/rebound/i;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/facebook/rebound/j;->b:Lcom/facebook/rebound/o;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/facebook/rebound/c;->f()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/facebook/rebound/i;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/facebook/rebound/j;->g:Lcom/facebook/rebound/k;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/i;->B(Lcom/facebook/rebound/k;)Lcom/facebook/rebound/i;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rebound/j;->j()Lcom/facebook/rebound/i;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/facebook/rebound/j;->f:Lcom/facebook/rebound/k;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/facebook/rebound/i;->B(Lcom/facebook/rebound/k;)Lcom/facebook/rebound/i;

    .line 50
    .line 51
    .line 52
    return-object p0
.end method
