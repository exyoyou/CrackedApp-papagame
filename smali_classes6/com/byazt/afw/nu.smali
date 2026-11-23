.class public Lcom/byazt/afw/nu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x21e,
        0x89
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/afw/nu$c;
    }
.end annotation


# instance fields
.field public c:J

.field public n:Lcom/byazt/ete/ic;

.field public tt:Ljava/lang/String;

.field public uj:Lcom/byazt/jzl/a;

.field public ve:I


# direct methods
.method public constructor <init>(JLjava/lang/String;ILcom/byazt/jzl/a;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/byazt/afw/nu;->c:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/byazt/afw/nu;->tt:Ljava/lang/String;

    .line 7
    .line 8
    iput p4, p0, Lcom/byazt/afw/nu;->ve:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/byazt/afw/nu;->uj:Lcom/byazt/jzl/a;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/byazt/afw/nu;->n:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/afw/nu;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public n()Lcom/byazt/ete/ic;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/nu;->n:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/nu;->tt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public uj()Lcom/byazt/jzl/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/afw/nu;->uj:Lcom/byazt/jzl/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/afw/nu;->ve:I

    .line 2
    .line 3
    return v0
.end method
