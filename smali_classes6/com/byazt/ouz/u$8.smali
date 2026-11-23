.class public Lcom/byazt/ouz/u$8;
.super Lcom/byazt/hkv/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x457
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/u;->u()Lcom/byazt/hkv/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic da:Lcom/byazt/ouz/u;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/u;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/u$8;->da:Lcom/byazt/ouz/u;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "click_live_element"

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    const-class v1, Lcom/byazt/vis/c;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/byazt/vis/c;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    invoke-super {p0, p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
