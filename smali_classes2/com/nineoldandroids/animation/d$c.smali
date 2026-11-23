.class public Lcom/nineoldandroids/animation/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/nineoldandroids/animation/d$f;

.field final synthetic b:Lcom/nineoldandroids/animation/d;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/animation/d;Lcom/nineoldandroids/animation/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 32
    .line 33
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->w(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object p2, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public a(J)Lcom/nineoldandroids/animation/d$c;
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/nineoldandroids/animation/q;->V([F)Lcom/nineoldandroids/animation/q;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/d$c;->b(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public b(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->w(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/d$d;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-direct {p1, v0, v1}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public c(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->w(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/d$d;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {p1, v1, v2}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public d(Lcom/nineoldandroids/animation/a;)Lcom/nineoldandroids/animation/d$c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/nineoldandroids/animation/d$f;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lcom/nineoldandroids/animation/d$f;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/nineoldandroids/animation/d$f;-><init>(Lcom/nineoldandroids/animation/a;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/nineoldandroids/animation/d;->t(Lcom/nineoldandroids/animation/d;)Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/nineoldandroids/animation/d$c;->b:Lcom/nineoldandroids/animation/d;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/nineoldandroids/animation/d;->w(Lcom/nineoldandroids/animation/d;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance p1, Lcom/nineoldandroids/animation/d$d;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/nineoldandroids/animation/d$c;->a:Lcom/nineoldandroids/animation/d$f;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-direct {p1, v1, v2}, Lcom/nineoldandroids/animation/d$d;-><init>(Lcom/nineoldandroids/animation/d$f;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/d$f;->a(Lcom/nineoldandroids/animation/d$d;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method
