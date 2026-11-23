.class public Lcom/byazt/rpt/FullRewardExpressView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x137,
        0x583
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rpt/FullRewardExpressView;->c(Landroid/view/ViewGroup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/ViewGroup;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/rpt/FullRewardExpressView;


# direct methods
.method public constructor <init>(Lcom/byazt/rpt/FullRewardExpressView;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rpt/FullRewardExpressView$2;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rpt/FullRewardExpressView$2;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/rpt/FullRewardExpressView$2;->tt:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/rpt/FullRewardExpressView$2;->ve:Lcom/byazt/rpt/FullRewardExpressView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/rpt/FullRewardExpressView$2;->c:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/byazt/rpt/FullRewardExpressView$2;->tt:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/rpt/FullRewardExpressView;->c(Lcom/byazt/rpt/FullRewardExpressView;Landroid/view/ViewGroup;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
