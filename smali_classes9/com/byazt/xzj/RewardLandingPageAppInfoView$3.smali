.class public Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a3,
        0x65c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xzj/RewardLandingPageAppInfoView;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/ete/a;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Landroid/content/Context;

.field public final synthetic uj:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/xzj/RewardLandingPageAppInfoView;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->uj:Lcom/byazt/xzj/RewardLandingPageAppInfoView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->tt:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->tt:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/xzj/RewardLandingPageAppInfoView$3;->ve:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/byazt/aas/n;->ve(Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
