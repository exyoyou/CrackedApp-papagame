.class public final Lcom/byazt/ic/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ui/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x273,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ic/c;->da(Lcom/byazt/ete/ic;)Lcom/byazt/ui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ic/c$2;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ic/c$2;->c:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, p1, p2}, Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ete/ic;ILjava/lang/String;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/ic/c$2;->c:Lcom/byazt/ete/ic;

    const-string v2, "duration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/Object;)V

    return-void
.end method
