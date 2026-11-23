.class final Lcom/nineoldandroids/animation/m$l;
.super Lcom/nineoldandroids/util/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nineoldandroids/util/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nineoldandroids/util/a;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/m$l;->h(Landroid/view/View;)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/m$l;->i(Landroid/view/View;F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/nineoldandroids/view/animation/a;->I(Landroid/view/View;)Lcom/nineoldandroids/view/animation/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/nineoldandroids/view/animation/a;->g()F

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public i(Landroid/view/View;F)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/nineoldandroids/view/animation/a;->I(Landroid/view/View;)Lcom/nineoldandroids/view/animation/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/nineoldandroids/view/animation/a;->x(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
