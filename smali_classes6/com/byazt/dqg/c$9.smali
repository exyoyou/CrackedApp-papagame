.class public Lcom/byazt/dqg/c$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/rpt/PlayableEndcardFrameLayout$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x71
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/c;->gt()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dqg/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/c$9;->c:Lcom/byazt/dqg/c;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/c$9;->c:Lcom/byazt/dqg/c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/dqg/c;->a(Lcom/byazt/dqg/c;)Lcom/byazt/xzj/RewardLpBottomView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/dqg/c$9;->c:Lcom/byazt/dqg/c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/dqg/c;->a(Lcom/byazt/dqg/c;)Lcom/byazt/xzj/RewardLpBottomView;

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
    return-void
.end method
