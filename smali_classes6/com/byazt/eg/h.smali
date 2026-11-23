.class public final Lcom/byazt/eg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10,
        0x206
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/eg/h$c;
    }
.end annotation


# instance fields
.field public final a:Lcom/byazt/eg/rh;

.field public final c:Lcom/byazt/eg/yv;

.field public final da:Lcom/byazt/eg/h;

.field public final i:Lcom/byazt/eg/h;

.field public final n:Lcom/byazt/eg/nu;

.field public final sl:J

.field public final sp:Lcom/byazt/eg/d;

.field public final t:J

.field public final tt:Lcom/byazt/eg/gr;

.field public volatile u:Lcom/byazt/eg/uj;

.field public final uj:Ljava/lang/String;

.field public final ve:I

.field public final x:Lcom/byazt/eg/h;


# direct methods
.method public constructor <init>(Lcom/byazt/eg/h$c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/byazt/eg/h$c;->c:Lcom/byazt/eg/yv;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/eg/h;->c:Lcom/byazt/eg/yv;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/byazt/eg/h$c;->tt:Lcom/byazt/eg/gr;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/eg/h;->tt:Lcom/byazt/eg/gr;

    .line 11
    .line 12
    iget v0, p1, Lcom/byazt/eg/h$c;->ve:I

    .line 13
    .line 14
    iput v0, p0, Lcom/byazt/eg/h;->ve:I

    .line 15
    .line 16
    iget-object v0, p1, Lcom/byazt/eg/h$c;->uj:Ljava/lang/String;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/eg/h;->uj:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/byazt/eg/h$c;->n:Lcom/byazt/eg/nu;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/eg/h;->n:Lcom/byazt/eg/nu;

    .line 23
    .line 24
    iget-object v0, p1, Lcom/byazt/eg/h$c;->a:Lcom/byazt/eg/rh$c;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/eg/rh$c;->c()Lcom/byazt/eg/rh;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/byazt/eg/h;->a:Lcom/byazt/eg/rh;

    .line 31
    .line 32
    iget-object v0, p1, Lcom/byazt/eg/h$c;->sp:Lcom/byazt/eg/d;

    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/eg/h;->sp:Lcom/byazt/eg/d;

    .line 35
    .line 36
    iget-object v0, p1, Lcom/byazt/eg/h$c;->x:Lcom/byazt/eg/h;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/eg/h;->x:Lcom/byazt/eg/h;

    .line 39
    .line 40
    iget-object v0, p1, Lcom/byazt/eg/h$c;->i:Lcom/byazt/eg/h;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/byazt/eg/h;->i:Lcom/byazt/eg/h;

    .line 43
    .line 44
    iget-object v0, p1, Lcom/byazt/eg/h$c;->da:Lcom/byazt/eg/h;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/byazt/eg/h;->da:Lcom/byazt/eg/h;

    .line 47
    .line 48
    iget-wide v0, p1, Lcom/byazt/eg/h$c;->sl:J

    .line 49
    .line 50
    iput-wide v0, p0, Lcom/byazt/eg/h;->sl:J

    .line 51
    .line 52
    iget-wide v0, p1, Lcom/byazt/eg/h$c;->t:J

    .line 53
    .line 54
    iput-wide v0, p0, Lcom/byazt/eg/h;->t:J

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public a()Lcom/byazt/eg/nu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->n:Lcom/byazt/eg/nu;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/byazt/eg/yv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->c:Lcom/byazt/eg/yv;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/byazt/eg/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/eg/h;->a:Lcom/byazt/eg/rh;

    invoke-virtual {v0, p1}, Lcom/byazt/eg/rh;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->sp:Lcom/byazt/eg/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/eg/d;->close()V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    const-string v1, "response is not eligible for a body and must not be closed"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public da()Lcom/byazt/eg/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->x:Lcom/byazt/eg/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/byazt/eg/h$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/eg/h$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/eg/h$c;-><init>(Lcom/byazt/eg/h;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sl()Lcom/byazt/eg/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->da:Lcom/byazt/eg/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Lcom/byazt/eg/rh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->a:Lcom/byazt/eg/rh;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()Lcom/byazt/eg/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->u:Lcom/byazt/eg/uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/eg/h;->a:Lcom/byazt/eg/rh;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/eg/uj;->c(Lcom/byazt/eg/rh;)Lcom/byazt/eg/uj;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/byazt/eg/h;->u:Lcom/byazt/eg/uj;

    .line 13
    .line 14
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Response{protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/eg/h;->tt:Lcom/byazt/eg/gr;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/byazt/eg/h;->ve:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", message="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/eg/h;->uj:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", url="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/byazt/eg/h;->c:Lcom/byazt/eg/yv;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/byazt/eg/yv;->c()Lcom/byazt/eg/my;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x7d

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

.method public tt()Lcom/byazt/eg/gr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->tt:Lcom/byazt/eg/gr;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/eg/h;->sl:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public uj()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/eg/h;->ve:I

    .line 2
    .line 3
    const/16 v1, 0xc8

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x12c

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/eg/h;->ve:I

    .line 2
    .line 3
    return v0
.end method

.method public x()Lcom/byazt/eg/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->sp:Lcom/byazt/eg/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public yp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/eg/h;->t:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public z()Lcom/byazt/eg/md;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/eg/h;->c:Lcom/byazt/eg/yv;

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
    iget-object v0, v0, Lcom/byazt/eg/yv;->a:Lcom/byazt/eg/md;

    .line 8
    .line 9
    return-object v0
.end method
