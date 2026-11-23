.class public abstract Lcom/nineoldandroids/animation/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/j$a;,
        Lcom/nineoldandroids/animation/j$b;,
        Lcom/nineoldandroids/animation/j$c;
    }
.end annotation


# instance fields
.field b:F

.field c:Ljava/lang/Class;

.field private d:Landroid/view/animation/Interpolator;

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/nineoldandroids/animation/j;->d:Landroid/view/animation/Interpolator;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/j;->e:Z

    .line 9
    .line 10
    return-void
.end method

.method public static g(F)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/j$a;-><init>(F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static h(FF)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/j$a;-><init>(FF)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static i(F)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/j$b;-><init>(F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static j(FI)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/j$b;-><init>(FI)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static k(F)Lcom/nineoldandroids/animation/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/nineoldandroids/animation/j$c;-><init>(FLjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static l(FLjava/lang/Object;)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/j$c;-><init>(FLjava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/nineoldandroids/animation/j;
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/j;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->a()Lcom/nineoldandroids/animation/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/j;->d:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract e()Ljava/lang/Object;
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/j;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/j;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public m(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nineoldandroids/animation/j;->b:F

    .line 2
    .line 3
    return-void
.end method

.method public n(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/j;->d:Landroid/view/animation/Interpolator;

    .line 2
    .line 3
    return-void
.end method

.method public abstract o(Ljava/lang/Object;)V
.end method
