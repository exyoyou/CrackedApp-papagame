.class Lcom/nineoldandroids/animation/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/nineoldandroids/animation/d;

.field final synthetic b:Lcom/nineoldandroids/animation/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/nineoldandroids/animation/d;->i:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-ge v0, p1, :cond_0

    .line 29
    .line 30
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/nineoldandroids/animation/a$a;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    .line 41
    .line 42
    invoke-interface {v1, v2}, Lcom/nineoldandroids/animation/a$a;->onAnimationCancel(Lcom/nineoldandroids/animation/a;)V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/a;)V
    .locals 5

    .line 1
    invoke-virtual {p1, p0}, Lcom/nineoldandroids/animation/a;->k(Lcom/nineoldandroids/animation/a$a;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/nineoldandroids/animation/d$f;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p1, Lcom/nineoldandroids/animation/d$f;->g:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 29
    .line 30
    iget-boolean p1, p1, Lcom/nineoldandroids/animation/d;->i:Z

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->u(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    if-ge v3, v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Lcom/nineoldandroids/animation/d$f;

    .line 53
    .line 54
    iget-boolean v4, v4, Lcom/nineoldandroids/animation/d$f;->g:Z

    .line 55
    .line 56
    if-nez v4, :cond_0

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 64
    .line 65
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->b:Lcom/nineoldandroids/animation/d;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/nineoldandroids/animation/a;->b:Ljava/util/ArrayList;

    .line 68
    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v1, 0x0

    .line 82
    :goto_2
    if-ge v1, v0, :cond_2

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    check-cast v3, Lcom/nineoldandroids/animation/a$a;

    .line 89
    .line 90
    iget-object v4, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    .line 91
    .line 92
    invoke-interface {v3, v4}, Lcom/nineoldandroids/animation/a$a;->onAnimationEnd(Lcom/nineoldandroids/animation/a;)V

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$b;->a:Lcom/nineoldandroids/animation/d;

    .line 99
    .line 100
    invoke-static {p1, v2}, Lcom/nineoldandroids/animation/d;->v(Lcom/nineoldandroids/animation/d;Z)Z

    .line 101
    .line 102
    .line 103
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method
