.class public abstract Lcom/byazt/gqp/yp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x143,
        0xd7
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gqp/yp$c;
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/gqp/t;


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
.method public a()Lcom/byazt/gqp/z;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public c(Lcom/byazt/gqp/t;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gqp/yp;->c:Lcom/byazt/gqp/t;

    return-void
.end method

.method public abstract n()Lcom/byazt/gqp/c;
.end method

.method public sp()Lcom/byazt/gqp/yp$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/gqp/yp$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/gqp/yp$c;-><init>(Lcom/byazt/gqp/yp;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public abstract tt()Lcom/byazt/gqp/sp;
.end method

.method public abstract uj()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract ve()Ljava/lang/String;
.end method
