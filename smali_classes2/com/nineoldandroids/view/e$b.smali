.class Lcom/nineoldandroids/view/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;
.implements Lcom/nineoldandroids/animation/q$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/view/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/nineoldandroids/view/e;


# direct methods
.method private constructor <init>(Lcom/nineoldandroids/view/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nineoldandroids/view/e;Lcom/nineoldandroids/view/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/nineoldandroids/view/e$b;-><init>(Lcom/nineoldandroids/view/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/q;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/q;->K()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/nineoldandroids/view/e;->G(Lcom/nineoldandroids/view/e;)Ljava/util/HashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/nineoldandroids/view/e$d;

    .line 16
    .line 17
    iget v1, p1, Lcom/nineoldandroids/view/e$d;->a:I

    .line 18
    .line 19
    and-int/lit16 v1, v1, 0x1ff

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/nineoldandroids/view/e;->H(Lcom/nineoldandroids/view/e;)Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Landroid/view/View;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, p1, Lcom/nineoldandroids/view/e$d;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    if-ge v2, v1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/nineoldandroids/view/e$c;

    .line 56
    .line 57
    iget v4, v3, Lcom/nineoldandroids/view/e$c;->b:F

    .line 58
    .line 59
    iget v5, v3, Lcom/nineoldandroids/view/e$c;->c:F

    .line 60
    .line 61
    mul-float v5, v5, v0

    .line 62
    .line 63
    add-float/2addr v4, v5

    .line 64
    iget-object v5, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 65
    .line 66
    iget v3, v3, Lcom/nineoldandroids/view/e$c;->a:I

    .line 67
    .line 68
    invoke-static {v5, v3, v4}, Lcom/nineoldandroids/view/e;->I(Lcom/nineoldandroids/view/e;IF)V

    .line 69
    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/nineoldandroids/view/e;->H(Lcom/nineoldandroids/view/e;)Ljava/lang/ref/WeakReference;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/view/View;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public onAnimationCancel(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/a$a;->onAnimationCancel(Lcom/nineoldandroids/animation/a;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/a$a;->onAnimationEnd(Lcom/nineoldandroids/animation/a;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->G(Lcom/nineoldandroids/view/e;)Ljava/util/HashMap;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/nineoldandroids/view/e;->G(Lcom/nineoldandroids/view/e;)Ljava/util/HashMap;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-static {p1, v0}, Lcom/nineoldandroids/view/e;->F(Lcom/nineoldandroids/view/e;Lcom/nineoldandroids/animation/a$a;)Lcom/nineoldandroids/animation/a$a;

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/a$a;->onAnimationRepeat(Lcom/nineoldandroids/animation/a;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/nineoldandroids/animation/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/nineoldandroids/view/e$b;->a:Lcom/nineoldandroids/view/e;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/nineoldandroids/view/e;->E(Lcom/nineoldandroids/view/e;)Lcom/nineoldandroids/animation/a$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/a$a;->onAnimationStart(Lcom/nineoldandroids/animation/a;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
