.class public Lcom/byazt/rc/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26c,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/byazt/yj/sp;"
    }
.end annotation


# instance fields
.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/byazt/yj/x;

.field public tt:I

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/byazt/rc/uj;->tt:I

    .line 3
    iput-object p2, p0, Lcom/byazt/rc/uj;->ve:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/byazt/rc/uj;->uj:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/rc/uj;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 6
    iput-object p4, p0, Lcom/byazt/rc/uj;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/yj/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rc/uj;->n:Lcom/byazt/yj/x;

    return-object v0
.end method

.method public c(Lcom/byazt/yj/x;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/rc/uj;->n:Lcom/byazt/yj/x;

    return-void
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/rc/uj;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/rc/uj;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/rc/uj;->uj:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/rc/uj;->ve:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
