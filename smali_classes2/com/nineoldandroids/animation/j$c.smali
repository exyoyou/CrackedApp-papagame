.class Lcom/nineoldandroids/animation/j$c;
.super Lcom/nineoldandroids/animation/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field f:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/nineoldandroids/animation/j;->b:F

    .line 5
    .line 6
    iput-object p2, p0, Lcom/nineoldandroids/animation/j$c;->f:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/j;->e:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const-class p1, Ljava/lang/Object;

    .line 23
    .line 24
    :goto_1
    iput-object p1, p0, Lcom/nineoldandroids/animation/j;->c:Ljava/lang/Class;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j$c;->p()Lcom/nineoldandroids/animation/j$c;

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
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j$c;->p()Lcom/nineoldandroids/animation/j$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/j$c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/j$c;->f:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/j;->e:Z

    .line 9
    .line 10
    return-void
.end method

.method public p()Lcom/nineoldandroids/animation/j$c;
    .locals 3

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$c;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/nineoldandroids/animation/j$c;->f:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/j$c;-><init>(FLjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->d()Landroid/view/animation/Interpolator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/j;->n(Landroid/view/animation/Interpolator;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method
