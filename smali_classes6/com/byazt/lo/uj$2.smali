.class public Lcom/byazt/lo/uj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pj/n$uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x291,
        0x61
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lo/uj;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:Lcom/byazt/lo/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/lo/uj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lo/uj$2;->tt:Lcom/byazt/lo/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/lo/uj$2;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/kt/RecyclerView$gu;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/pj/n$n;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/byazt/pj/n$n;->p()Lcom/byazt/xj/ve;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "count_down"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/byazt/xj/ve;->uj(Ljava/lang/String;)Lcom/byazt/xj/ve;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p2, p1, Lcom/byazt/sm/tt;

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/byazt/sm/tt;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/byazt/lo/uj$2;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/byazt/sm/tt;->t(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
