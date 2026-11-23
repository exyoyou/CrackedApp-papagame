.class public Lcom/byazt/lcf/TTBaseVideoActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ja/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x656
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Lcom/byazt/qq/da;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:[Z

.field public final synthetic tt:Lcom/byazt/qq/da;

.field public final synthetic ve:Lcom/byazt/lcf/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;[ZLcom/byazt/qq/da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->c:[Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->tt:Lcom/byazt/qq/da;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->c:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->tt:Lcom/byazt/qq/da;

    invoke-virtual {v0}, Lcom/byazt/qq/da;->tt()V

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->c:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "remainTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-lez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->ve:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->tt:Lcom/byazt/qq/da;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity$5;->tt:Lcom/byazt/qq/da;

    invoke-virtual {p1}, Lcom/byazt/qq/da;->tt()V

    return-void
.end method
