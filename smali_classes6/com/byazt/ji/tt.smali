.class public abstract Lcom/byazt/ji/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xde,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ji/tt$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public c:Lcom/byazt/pm/sl;

.field public da:Landroid/content/Context;

.field public i:Ljava/lang/String;

.field public n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public sp:Ljava/lang/String;

.field public tt:Lcom/byazt/xj/ve;

.field public uj:Lcom/byazt/pm/a$c;

.field public ve:Lcom/byazt/pm/a;

.field public x:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ji/tt;->da:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/pm/a;->c()Lcom/byazt/pm/a$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ji/tt;->uj:Lcom/byazt/pm/a$c;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/pm/a;->c()Lcom/byazt/pm/a$c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/ji/tt;->uj:Lcom/byazt/pm/a$c;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/ji/tt;->uj:Lcom/byazt/pm/a$c;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/byazt/pm/a$c;->tt()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/byazt/ji/tt;->uj:Lcom/byazt/pm/a$c;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/byazt/pm/a$c;->c()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/byazt/ji/tt;->sp:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/byazt/ji/tt;->uj:Lcom/byazt/pm/a$c;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/byazt/pm/a$c;->uj()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/byazt/ji/tt;->x:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/ji/tt;->uj:Lcom/byazt/pm/a$c;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/byazt/pm/a$c;->n()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/byazt/ji/tt;->i:Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method

.method public c(Lcom/byazt/pm/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    return-void
.end method

.method public c(Lcom/byazt/pm/sl;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    return-void
.end method

.method public varargs abstract c([Ljava/lang/Object;)Z
.end method

.method public da()Lcom/byazt/pm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->x:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
