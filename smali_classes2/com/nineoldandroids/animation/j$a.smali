.class Lcom/nineoldandroids/animation/j$a;
.super Lcom/nineoldandroids/animation/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field f:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/nineoldandroids/animation/j;-><init>()V

    .line 7
    iput p1, p0, Lcom/nineoldandroids/animation/j;->b:F

    .line 8
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/nineoldandroids/animation/j;->c:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/j;-><init>()V

    .line 2
    iput p1, p0, Lcom/nineoldandroids/animation/j;->b:F

    .line 3
    iput p2, p0, Lcom/nineoldandroids/animation/j$a;->f:F

    .line 4
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/nineoldandroids/animation/j;->c:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/j;->e:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j$a;->p()Lcom/nineoldandroids/animation/j$a;

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
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j$a;->p()Lcom/nineoldandroids/animation/j$a;

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
    iget v0, p0, Lcom/nineoldandroids/animation/j$a;->f:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Ljava/lang/Float;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/nineoldandroids/animation/j$a;->f:F

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/j;->e:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public p()Lcom/nineoldandroids/animation/j$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->b()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lcom/nineoldandroids/animation/j$a;->f:F

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/j$a;-><init>(FF)V

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

.method public q()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/j$a;->f:F

    .line 2
    .line 3
    return v0
.end method
