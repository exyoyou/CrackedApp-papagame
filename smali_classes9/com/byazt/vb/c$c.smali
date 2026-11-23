.class public Lcom/byazt/vb/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x763,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/vb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public c:Lcom/byazt/vb/sl;

.field public da:I

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public n:Lcom/byazt/rz/c;

.field public sl:I

.field public sp:Lcom/byazt/vb/uj;

.field public t:Ljava/lang/String;

.field public tt:Lcom/byazt/rz/c;

.field public u:Landroid/content/Context;

.field public uj:Lcom/byazt/rz/c;

.field public ve:Lcom/byazt/rz/c;

.field public x:Lcom/byazt/vb/a;

.field public yp:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/vb/c$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/16 v0, 0x1388

    .line 13
    .line 14
    iput v0, p0, Lcom/byazt/vb/c$c;->da:I

    .line 15
    .line 16
    const/16 v0, 0xa

    .line 17
    .line 18
    iput v0, p0, Lcom/byazt/vb/c$c;->sl:I

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/byazt/vb/c$c;->yp:I

    .line 22
    .line 23
    iput v0, p0, Lcom/byazt/vb/c$c;->z:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/vb/c$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/vb/c$c;->yp:I

    return-object p0
.end method

.method public c(Landroid/content/Context;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vb/c$c;->u:Landroid/content/Context;

    return-object p0
.end method

.method public c(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/vb/c$c;->tt:Lcom/byazt/rz/c;

    return-object p0
.end method

.method public c(Lcom/byazt/vb/a;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/vb/c$c;->x:Lcom/byazt/vb/a;

    return-object p0
.end method

.method public c(Lcom/byazt/vb/sl;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/byazt/vb/c$c;->c:Lcom/byazt/vb/sl;

    return-object p0
.end method

.method public c(Lcom/byazt/vb/uj;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/vb/c$c;->sp:Lcom/byazt/vb/uj;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vb/c$c;->t:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/vb/c$c;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/vb/c$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public c()Lcom/byazt/vb/c;
    .locals 2

    .line 9
    new-instance v0, Lcom/byazt/vb/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/byazt/vb/c;-><init>(Lcom/byazt/vb/c$1;)V

    .line 10
    iget-object v1, p0, Lcom/byazt/vb/c$c;->c:Lcom/byazt/vb/sl;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Lcom/byazt/vb/sl;)Lcom/byazt/vb/sl;

    .line 11
    iget-object v1, p0, Lcom/byazt/vb/c$c;->tt:Lcom/byazt/rz/c;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;

    .line 12
    iget-object v1, p0, Lcom/byazt/vb/c$c;->ve:Lcom/byazt/rz/c;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->tt(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;

    .line 13
    iget-object v1, p0, Lcom/byazt/vb/c$c;->uj:Lcom/byazt/rz/c;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->ve(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;

    .line 14
    iget-object v1, p0, Lcom/byazt/vb/c$c;->n:Lcom/byazt/rz/c;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->uj(Lcom/byazt/vb/c;Lcom/byazt/rz/c;)Lcom/byazt/rz/c;

    .line 15
    iget-boolean v1, p0, Lcom/byazt/vb/c$c;->a:Z

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Z)Z

    .line 16
    iget-object v1, p0, Lcom/byazt/vb/c$c;->sp:Lcom/byazt/vb/uj;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Lcom/byazt/vb/uj;)Lcom/byazt/vb/uj;

    .line 17
    iget-object v1, p0, Lcom/byazt/vb/c$c;->x:Lcom/byazt/vb/a;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Lcom/byazt/vb/a;)Lcom/byazt/vb/a;

    .line 18
    iget-object v1, p0, Lcom/byazt/vb/c$c;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iget-object v1, p0, Lcom/byazt/vb/c$c;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/byazt/vb/c$c;->u:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;Landroid/content/Context;)Landroid/content/Context;

    .line 21
    iget v1, p0, Lcom/byazt/vb/c$c;->sl:I

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->c(Lcom/byazt/vb/c;I)I

    .line 22
    iget v1, p0, Lcom/byazt/vb/c$c;->da:I

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->tt(Lcom/byazt/vb/c;I)I

    .line 23
    iget v1, p0, Lcom/byazt/vb/c$c;->yp:I

    invoke-static {v0, v1}, Lcom/byazt/vb/c;->ve(Lcom/byazt/vb/c;I)I

    .line 24
    iget v1, p0, Lcom/byazt/vb/c$c;->z:I

    iput v1, v0, Lcom/byazt/vb/c;->c:I

    return-object v0
.end method

.method public tt(I)Lcom/byazt/vb/c$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/vb/c$c;->z:I

    return-object p0
.end method

.method public tt(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vb/c$c;->ve:Lcom/byazt/rz/c;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/vb/c$c;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/vb/c$c;->a:Z

    return-object p0
.end method

.method public ve(Lcom/byazt/rz/c;)Lcom/byazt/vb/c$c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vb/c$c;->uj:Lcom/byazt/rz/c;

    .line 2
    .line 3
    return-object p0
.end method
