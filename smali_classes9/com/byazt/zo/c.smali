.class public abstract Lcom/byazt/zo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x328,
        0x14
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/ete/ic;

.field public tt:Landroid/content/Context;

.field public uj:Landroid/view/View;

.field public ve:Lcom/byazt/ete/da;


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
.method public abstract c(Ljava/util/Map;Lcom/byazt/zo/ve;)I
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
.end method

.method public c(Landroid/view/View;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/zo/c;->uj:Landroid/view/View;

    return-void
.end method

.method public c(Lcom/byazt/ete/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zo/c;->ve:Lcom/byazt/ete/da;

    return-void
.end method
