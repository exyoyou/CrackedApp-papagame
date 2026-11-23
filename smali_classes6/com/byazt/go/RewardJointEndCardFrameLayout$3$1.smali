.class public Lcom/byazt/go/RewardJointEndCardFrameLayout$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4c9,
        0x765
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/go/RewardJointEndCardFrameLayout$3;->onSuccess(Lcom/byazt/yj/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/graphics/drawable/Drawable;

.field public final synthetic tt:Lcom/byazt/go/RewardJointEndCardFrameLayout$3;


# direct methods
.method public constructor <init>(Lcom/byazt/go/RewardJointEndCardFrameLayout$3;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3$1;->tt:Lcom/byazt/go/RewardJointEndCardFrameLayout$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3$1;->c:Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3$1;->tt:Lcom/byazt/go/RewardJointEndCardFrameLayout$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3;->c:Lcom/byazt/go/RewardJointEndCardFrameLayout;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/go/RewardJointEndCardFrameLayout;->tt(Lcom/byazt/go/RewardJointEndCardFrameLayout;)Landroid/widget/FrameLayout;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3$1;->tt:Lcom/byazt/go/RewardJointEndCardFrameLayout$3;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3;->c:Lcom/byazt/go/RewardJointEndCardFrameLayout;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/go/RewardJointEndCardFrameLayout;->tt(Lcom/byazt/go/RewardJointEndCardFrameLayout;)Landroid/widget/FrameLayout;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/go/RewardJointEndCardFrameLayout$3$1;->c:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
