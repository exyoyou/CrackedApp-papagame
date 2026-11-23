.class Lcom/nineoldandroids/animation/n$c;
.super Lcom/nineoldandroids/animation/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private s:Lcom/nineoldandroids/util/b;

.field t:Lcom/nineoldandroids/animation/i;

.field u:I


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/i;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/n$a;)V

    .line 6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 7
    iput-object p2, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 8
    iput-object p2, p0, Lcom/nineoldandroids/animation/n$c;->t:Lcom/nineoldandroids/animation/i;

    .line 9
    instance-of p1, p1, Lcom/nineoldandroids/util/b;

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    check-cast p1, Lcom/nineoldandroids/util/b;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n$c;->s:Lcom/nineoldandroids/util/b;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/nineoldandroids/util/c;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/n$a;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/n$c;->t([I)V

    .line 15
    instance-of p1, p1, Lcom/nineoldandroids/util/b;

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    check-cast p1, Lcom/nineoldandroids/util/b;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n$c;->s:Lcom/nineoldandroids/util/b;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/i;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/n$a;)V

    .line 2
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->f:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 4
    iput-object p2, p0, Lcom/nineoldandroids/animation/n$c;->t:Lcom/nineoldandroids/animation/i;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/n$a;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/n$c;->t([I)V

    return-void
.end method


# virtual methods
.method A(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/n;->A(Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public F()Lcom/nineoldandroids/animation/n$c;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/n;->b()Lcom/nineoldandroids/animation/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/nineoldandroids/animation/n$c;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 8
    .line 9
    check-cast v1, Lcom/nineoldandroids/animation/i;

    .line 10
    .line 11
    iput-object v1, v0, Lcom/nineoldandroids/animation/n$c;->t:Lcom/nineoldandroids/animation/i;

    .line 12
    .line 13
    return-object v0
.end method

.method a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n$c;->t:Lcom/nineoldandroids/animation/i;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/i;->i(F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput p1, p0, Lcom/nineoldandroids/animation/n$c;->u:I

    .line 8
    .line 9
    return-void
.end method

.method public bridge synthetic b()Lcom/nineoldandroids/animation/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n$c;->F()Lcom/nineoldandroids/animation/n$c;

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
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n$c;->F()Lcom/nineoldandroids/animation/n$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/n$c;->u:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method q(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n$c;->s:Lcom/nineoldandroids/util/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/nineoldandroids/animation/n$c;->u:I

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/b;->g(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Lcom/nineoldandroids/util/c;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/nineoldandroids/animation/n$c;->u:I

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/c;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->i:[Ljava/lang/Object;

    .line 30
    .line 31
    iget v1, p0, Lcom/nineoldandroids/animation/n$c;->u:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x0

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->d:Ljava/lang/reflect/Method;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->i:[Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public varargs t([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/n;->t([I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->g:Lcom/nineoldandroids/animation/k;

    .line 5
    .line 6
    check-cast p1, Lcom/nineoldandroids/animation/i;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/nineoldandroids/animation/n$c;->t:Lcom/nineoldandroids/animation/i;

    .line 9
    .line 10
    return-void
.end method
