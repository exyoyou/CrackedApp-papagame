.class public Lcom/byazt/ac/ve$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rpt/PlayableEndcardFrameLayout$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x1d9
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ac/ve;->qp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/ve$7;->c:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/ve$7;->c:Lcom/byazt/ac/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ac/ve;->x(Lcom/byazt/ac/ve;)Lcom/byazt/xzj/RewardLpBottomView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ac/ve$7;->c:Lcom/byazt/ac/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/ac/ve;->x(Lcom/byazt/ac/ve;)Lcom/byazt/xzj/RewardLpBottomView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/xzj/RewardLpBottomView;->tt()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve$7;->c:Lcom/byazt/ac/ve;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->da(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method
