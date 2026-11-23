.class Lcom/nineoldandroids/animation/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/nineoldandroids/animation/d;

.field private b:Lcom/nineoldandroids/animation/d$f;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/d$f;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/nineoldandroids/animation/d$e;->a:Lcom/nineoldandroids/animation/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 7
    .line 8
    iput p3, p0, Lcom/nineoldandroids/animation/d$e;->c:I

    .line 9
    .line 10
    return-void
.end method

.method private a(Lcom/nineoldandroids/animation/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$e;->a:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/nineoldandroids/animation/d;->i:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/nineoldandroids/animation/d$f;->d:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_2

    .line 18
    .line 19
    iget-object v2, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/nineoldandroids/animation/d$f;->d:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/nineoldandroids/animation/d$d;

    .line 28
    .line 29
    iget v3, v2, Lcom/nineoldandroids/animation/d$d;->b:I

    .line 30
    .line 31
    iget v4, p0, Lcom/nineoldandroids/animation/d$e;->c:I

    .line 32
    .line 33
    if-ne v3, v4, :cond_1

    .line 34
    .line 35
    iget-object v3, v2, Lcom/nineoldandroids/animation/d$d;->a:Lcom/nineoldandroids/animation/d$f;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 38
    .line 39
    if-ne v3, p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/a;->k(Lcom/nineoldandroids/animation/a$a;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const/4 v2, 0x0

    .line 49
    :goto_1
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/nineoldandroids/animation/d$f;->d:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/nineoldandroids/animation/d$f;->d:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/a;->r()V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$e;->a:Lcom/nineoldandroids/animation/d;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$e;->b:Lcom/nineoldandroids/animation/d$f;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/a;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/d$e;->c:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/d$e;->a(Lcom/nineoldandroids/animation/a;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/d$e;->c:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/nineoldandroids/animation/d$e;->a(Lcom/nineoldandroids/animation/a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
