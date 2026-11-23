.class public Lcom/byazt/yi/ve$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd8,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yi/ve;->showRewardVideoAd(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yi/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yi/ve;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yi/ve$1;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/yi/ve$1;->c:Lcom/byazt/yi/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/yi/ve;->tt(Lcom/byazt/yi/ve;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/yi/ve$1;->c:Lcom/byazt/yi/ve;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/yi/ve;->ve(Lcom/byazt/yi/ve;)Lcom/byazt/ete/ic;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "rewarded_video"

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/yi/ve$1;->c:Lcom/byazt/yi/ve;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/byazt/yi/ve;->c(Lcom/byazt/yi/ve;)Lcom/byazt/pop/c;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/wz/c;->c(Lcom/byazt/pop/c;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
