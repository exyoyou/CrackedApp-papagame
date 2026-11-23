.class public Lcom/byazt/dqg/RewardAuthToastLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4a,
        0x2b5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dqg/RewardAuthToastLayout;->c(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dqg/RewardAuthToastLayout;


# direct methods
.method public constructor <init>(Lcom/byazt/dqg/RewardAuthToastLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dqg/RewardAuthToastLayout$1;->c:Lcom/byazt/dqg/RewardAuthToastLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/dqg/RewardAuthToastLayout$1;->c:Lcom/byazt/dqg/RewardAuthToastLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
