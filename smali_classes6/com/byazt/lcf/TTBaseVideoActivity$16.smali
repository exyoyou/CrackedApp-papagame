.class public Lcom/byazt/lcf/TTBaseVideoActivity$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ua/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x78b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$16;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getHasUseCustomizeVideo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 3

    .line 1
    new-instance v0, Lcom/byazt/ua/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ua/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$16;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->m()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    iput-wide v1, v0, Lcom/byazt/ua/c;->sp:J

    .line 17
    .line 18
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$16;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->c()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput-boolean v1, v0, Lcom/byazt/ua/c;->c:Z

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$16;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 29
    .line 30
    iget-boolean v1, v1, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 31
    .line 32
    iput-boolean v1, v0, Lcom/byazt/ua/c;->x:Z

    .line 33
    .line 34
    :cond_0
    return-object v0
.end method
