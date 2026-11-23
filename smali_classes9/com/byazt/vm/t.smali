.class public Lcom/byazt/vm/t;
.super Lcom/byazt/vm/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa5,
        0x42
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/vm/ve<",
        "Lcom/byazt/kbg/tt;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/vm/da;

.field public final tt:Lcom/byazt/vm/sl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.hihonor.id"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/vm/ve;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/byazt/vm/da;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/byazt/vm/da;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/byazt/vm/t;->c:Lcom/byazt/vm/da;

    .line 12
    .line 13
    new-instance v0, Lcom/byazt/vm/sl;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/byazt/vm/sl;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/byazt/vm/t;->tt:Lcom/byazt/vm/sl;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public c(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.hihonor.id.HnOaIdService"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.hihonor.id"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method public c()Lcom/byazt/vm/zm$tt;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/vm/zm$tt<",
            "Lcom/byazt/kbg/tt;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/vm/t$1;

    invoke-direct {v0, p0}, Lcom/byazt/vm/t$1;-><init>(Lcom/byazt/vm/t;)V

    return-object v0
.end method

.method public bridge synthetic tt(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/vm/ve;->tt(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public ve(Landroid/content/Context;)Lcom/byazt/vm/nu$c;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/byazt/vm/t;->c(Landroid/content/Context;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/byazt/vm/t;->c()Lcom/byazt/vm/zm$tt;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/byazt/vm/zm;

    .line 10
    .line 11
    invoke-direct {v2, p1, v0, v1}, Lcom/byazt/vm/zm;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/byazt/vm/zm$tt;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/byazt/vm/zm;->c()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lcom/byazt/vm/nu$c;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/byazt/vm/nu$c;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/vm/t;->c:Lcom/byazt/vm/da;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/vm/da;->c()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p1, Lcom/byazt/vm/nu$c;->tt:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/vm/t;->tt:Lcom/byazt/vm/sl;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/vm/sl;->c()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput-boolean v0, p1, Lcom/byazt/vm/nu$c;->ve:Z

    .line 37
    .line 38
    return-object p1
.end method
