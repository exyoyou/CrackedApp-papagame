.class abstract Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "d"
.end annotation


# instance fields
.field b:I

.field c:I

.field d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field f:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 7
    .line 8
    array-length p1, p1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:I

    .line 13
    .line 14
    if-ltz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 17
    .line 18
    add-int/lit8 v2, v0, -0x1

    .line 19
    .line 20
    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:I

    .line 21
    .line 22
    aget-object v0, v1, v0

    .line 23
    .line 24
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    .line 30
    .line 31
    if-ltz v0, :cond_3

    .line 32
    .line 33
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    .line 34
    .line 35
    iget-object v1, v1, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 36
    .line 37
    add-int/lit8 v2, v0, -0x1

    .line 38
    .line 39
    iput v2, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    .line 40
    .line 41
    aget-object v0, v1, v0

    .line 42
    .line 43
    iget v1, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->b:I

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;->e:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 48
    .line 49
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 50
    .line 51
    array-length v0, v0

    .line 52
    add-int/lit8 v0, v0, -0x1

    .line 53
    .line 54
    :goto_0
    if-ltz v0, :cond_1

    .line 55
    .line 56
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 57
    .line 58
    aget-object v1, v1, v0

    .line 59
    .line 60
    iput-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 61
    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    add-int/lit8 v0, v0, -0x1

    .line 65
    .line 66
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:I

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method b()Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jboss/netty/util/internal/ConcurrentHashMap$c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 6
    .line 7
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public remove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public rewind()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    .line 2
    .line 3
    iget-object v0, v0, Lorg/jboss/netty/util/internal/ConcurrentHashMap;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$Segment;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->c:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->d:[Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 15
    .line 16
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->e:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 17
    .line 18
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->f:Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->g:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->a()V

    .line 23
    .line 24
    .line 25
    return-void
.end method
