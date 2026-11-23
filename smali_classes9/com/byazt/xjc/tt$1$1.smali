.class public Lcom/byazt/xjc/tt$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dqg/RewardFullBaseLayout$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ff,
        0x3c5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xjc/tt$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xjc/tt$1;


# direct methods
.method public constructor <init>(Lcom/byazt/xjc/tt$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xjc/tt$1$1;->c:Lcom/byazt/xjc/tt$1;

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
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/xjc/uj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/xjc/uj;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/byazt/xjc/uj;->c:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Lcom/byazt/xjc/uj;->ve:Z

    .line 11
    .line 12
    iput-boolean v1, v0, Lcom/byazt/xjc/uj;->uj:Z

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/xjc/tt$1$1;->c:Lcom/byazt/xjc/tt$1;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/byazt/xjc/tt$1;->c:Lcom/byazt/xjc/tt;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/byazt/xjc/tt;->c(Lcom/byazt/xjc/tt;)Lcom/byazt/xjc/c$c;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/byazt/xjc/c$c;->c()Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/byazt/dqg/RewardFullBaseLayout;->c()V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/xjc/tt$1$1;->c:Lcom/byazt/xjc/tt$1;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/byazt/xjc/tt$1;->c:Lcom/byazt/xjc/tt;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/byazt/xjc/tt;->c(Lcom/byazt/xjc/tt;)Lcom/byazt/xjc/c$c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Lcom/byazt/xjc/c$c;->getActivity()Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-virtual {v1, v2, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ILcom/byazt/xjc/uj;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
