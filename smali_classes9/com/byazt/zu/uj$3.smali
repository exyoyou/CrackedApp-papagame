.class public Lcom/byazt/zu/uj$3;
.super Lcom/byazt/cv/i;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x397,
        0x67
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/zu/uj;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/zu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/zu/uj;Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/zu/uj$3;->c:Lcom/byazt/zu/uj;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/cv/i;-><init>(Lcom/byazt/yl/ve;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v8, p0

    .line 2
    iget-object v9, v8, Lcom/byazt/zu/uj$3;->c:Lcom/byazt/zu/uj;

    .line 3
    .line 4
    new-instance v10, Lcom/byazt/zu/uj$3$1;

    .line 5
    .line 6
    move-object v0, v10

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    move-object v5, p4

    .line 12
    move-object/from16 v6, p5

    .line 13
    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    invoke-direct/range {v0 .. v7}, Lcom/byazt/zu/uj$3$1;-><init>(Lcom/byazt/zu/uj$3;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {v9, v0, v10}, Lcom/byazt/zu/uj;->c(Lcom/byazt/zu/uj;ZLandroid/os/Handler$Callback;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
