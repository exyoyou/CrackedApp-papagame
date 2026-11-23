.class public Lcom/byazt/xjc/ve$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0x18
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/xjc/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public c:Ljava/lang/String;

.field public da:Lcom/byazt/cjm/c;

.field public i:Z

.field public n:Lorg/json/JSONArray;

.field public sp:I

.field public tt:I

.field public uj:Z

.field public ve:I

.field public x:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(I)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/xjc/ve$c;->tt:I

    return-object p0
.end method

.method public c(Lcom/byazt/cjm/c;)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/xjc/ve$c;->da:Lcom/byazt/cjm/c;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/xjc/ve$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/Set;)Lcom/byazt/xjc/ve$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/byazt/xjc/ve$c;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/byazt/xjc/ve$c;->n:Lorg/json/JSONArray;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/xjc/ve$c;->uj:Z

    return-object p0
.end method

.method public c()Lcom/byazt/xjc/ve;
    .locals 13

    .line 1
    new-instance v12, Lcom/byazt/xjc/ve;

    iget-object v1, p0, Lcom/byazt/xjc/ve$c;->c:Ljava/lang/String;

    iget v2, p0, Lcom/byazt/xjc/ve$c;->tt:I

    iget v3, p0, Lcom/byazt/xjc/ve$c;->ve:I

    iget v4, p0, Lcom/byazt/xjc/ve$c;->x:I

    iget-boolean v5, p0, Lcom/byazt/xjc/ve$c;->uj:Z

    iget-object v6, p0, Lcom/byazt/xjc/ve$c;->n:Lorg/json/JSONArray;

    iget-boolean v7, p0, Lcom/byazt/xjc/ve$c;->a:Z

    iget-object v8, p0, Lcom/byazt/xjc/ve$c;->da:Lcom/byazt/cjm/c;

    iget v9, p0, Lcom/byazt/xjc/ve$c;->sp:I

    iget-boolean v10, p0, Lcom/byazt/xjc/ve$c;->i:Z

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/byazt/xjc/ve;-><init>(Ljava/lang/String;IIIZLorg/json/JSONArray;ZLcom/byazt/cjm/c;IZLcom/byazt/xjc/ve$1;)V

    return-object v12
.end method

.method public tt(I)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/xjc/ve$c;->ve:I

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/xjc/ve$c;->a:Z

    return-object p0
.end method

.method public uj(I)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/xjc/ve$c;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public ve(I)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/xjc/ve$c;->sp:I

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/xjc/ve$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/xjc/ve$c;->i:Z

    return-object p0
.end method
