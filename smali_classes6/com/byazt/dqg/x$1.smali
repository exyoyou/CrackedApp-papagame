.class public Lcom/byazt/dqg/x$1;
.super Lcom/byazt/hkv/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/x;->c(Landroid/view/View;Lcom/byazt/hkv/tt;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic da:Ljava/lang/String;

.field public final synthetic sl:Lcom/byazt/hkv/tt;

.field public final synthetic t:Lcom/byazt/dqg/x;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/x;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ILjava/lang/String;Lcom/byazt/hkv/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/x$1;->t:Lcom/byazt/dqg/x;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/byazt/dqg/x$1;->da:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/byazt/dqg/x$1;->sl:Lcom/byazt/hkv/tt;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/byazt/hkv/tt;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;Lcom/byazt/ete/da;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "click_live_element"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/dqg/x$1;->da:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/byazt/dqg/x$1;->sl:Lcom/byazt/hkv/tt;

    .line 14
    .line 15
    const-class v2, Lcom/byazt/vis/c;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/byazt/vis/c;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/dqg/x$1;->sl:Lcom/byazt/hkv/tt;

    .line 27
    .line 28
    invoke-virtual {v0, p1, p2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;Lcom/byazt/ete/da;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
