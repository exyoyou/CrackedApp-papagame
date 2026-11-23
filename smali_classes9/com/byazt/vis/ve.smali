.class public Lcom/byazt/vis/ve;
.super Lcom/byazt/vis/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x712,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vis/ve$c;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public i:Lcom/byazt/omf/EmptyView;

.field public n:Lcom/byazt/vis/ve$c;

.field public sp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public x:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/vis/tt;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/vis/tt;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    .line 4
    iput-object p2, p0, Lcom/byazt/zo/c;->tt:Landroid/content/Context;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/byazt/vis/ve;->sp:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/byazt/zo/ve;",
            ")I"
        }
    .end annotation

    .line 8
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->xx()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/vis/ve;->n:Lcom/byazt/vis/ve$c;

    if-nez p1, :cond_1

    return p2

    .line 10
    :cond_1
    invoke-interface {p1}, Lcom/byazt/vis/ve$c;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    return p2

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/byazt/vis/ve;->i:Lcom/byazt/omf/EmptyView;

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/byazt/vis/ve;->sp:Ljava/util/Map;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "show_send_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/byazt/zo/c;->c:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/vis/ve;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/byazt/vis/ve;->sp:Ljava/util/Map;

    iget-object v2, p0, Lcom/byazt/vis/ve;->x:Ljava/lang/Double;

    invoke-static {p1, v0, v1, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    goto :goto_0

    :cond_3
    const-string v0, "checkWhenClicked"

    .line 14
    invoke-virtual {p1, v0}, Lcom/byazt/omf/EmptyView;->c(Ljava/lang/String;)V

    :goto_0
    return p2
.end method

.method public c(Lcom/byazt/omf/EmptyView;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/vis/ve;->i:Lcom/byazt/omf/EmptyView;

    return-void
.end method

.method public c(Lcom/byazt/vis/ve$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/vis/ve;->n:Lcom/byazt/vis/ve$c;

    return-void
.end method

.method public c(Ljava/lang/Double;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/vis/ve;->x:Ljava/lang/Double;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/vis/ve;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/byazt/vis/ve;->sp:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    iput-object p1, p0, Lcom/byazt/vis/ve;->sp:Ljava/util/Map;

    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
