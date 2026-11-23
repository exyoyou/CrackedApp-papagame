.class public Lcom/byazt/gu/i;
.super Lcom/byazt/gqp/m;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0x2a
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/eg/h;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/gqp/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/gqp/nu;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/gu/da;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/eg/h;->x()Lcom/byazt/eg/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/byazt/gu/da;-><init>(Lcom/byazt/eg/d;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    invoke-virtual {v0}, Lcom/byazt/eg/h;->yp()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    invoke-virtual {v0, p1}, Lcom/byazt/eg/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/eg/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/h;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/h;->n()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public sp()Lcom/byazt/gqp/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/gqp/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/byazt/eg/h;->sp()Lcom/byazt/eg/rh;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/byazt/eg/rh;->c:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/byazt/gqp/a;-><init>([Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/h;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/h;->u()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/eg/h;->uj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/eg/h;->ve()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public x()Lcom/byazt/gqp/sl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v1, Lcom/byazt/gqp/sl;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/eg/h;->z()Lcom/byazt/eg/md;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {v1, v0}, Lcom/byazt/gqp/sl;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method
