.class Lcom/nineoldandroids/animation/d$a;
.super Lcom/nineoldandroids/animation/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nineoldandroids/animation/d;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nineoldandroids/animation/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/d;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/d$a;->c:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/nineoldandroids/animation/d$a;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/nineoldandroids/animation/c;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/d$a;->a:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/d$a;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public onAnimationEnd(Lcom/nineoldandroids/animation/a;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/nineoldandroids/animation/d$a;->a:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$a;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-ge v0, p1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$a;->b:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/nineoldandroids/animation/d$f;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/a;->r()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/nineoldandroids/animation/d$a;->c:Lcom/nineoldandroids/animation/d;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/nineoldandroids/animation/d;->s(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-object v1, v1, Lcom/nineoldandroids/animation/d$f;->b:Lcom/nineoldandroids/animation/a;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
