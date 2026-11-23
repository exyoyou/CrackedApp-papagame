.class public Lcom/byazt/qzm/tt$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b6,
        0xc2
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/qzm/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public c:Lcom/byazt/dh/ve$c;

.field public final synthetic tt:Lcom/byazt/qzm/tt;


# direct methods
.method private constructor <init>(Lcom/byazt/qzm/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qzm/tt$c;->tt:Lcom/byazt/qzm/tt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/qzm/tt;Lcom/byazt/qzm/tt$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/qzm/tt$c;-><init>(Lcom/byazt/qzm/tt;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->c:Lcom/byazt/dh/ve$c;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/byazt/dh/ve$c;->c()V

    :cond_0
    return-void
.end method

.method public c(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->tt:Lcom/byazt/qzm/tt;

    invoke-static {v0}, Lcom/byazt/qzm/tt;->c(Lcom/byazt/qzm/tt;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->tt:Lcom/byazt/qzm/tt;

    invoke-static {v0}, Lcom/byazt/qzm/tt;->tt(Lcom/byazt/qzm/tt;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->tt:Lcom/byazt/qzm/tt;

    invoke-static {v0}, Lcom/byazt/qzm/tt;->ve(Lcom/byazt/qzm/tt;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setComplete(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->tt:Lcom/byazt/qzm/tt;

    invoke-static {v0}, Lcom/byazt/qzm/tt;->uj(Lcom/byazt/qzm/tt;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->tt:Lcom/byazt/qzm/tt;

    invoke-static {v0}, Lcom/byazt/qzm/tt;->n(Lcom/byazt/qzm/tt;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/qzm/NativeVideoView;

    invoke-virtual {v0, v1, v1}, Lcom/byazt/qzm/NativeVideoView;->c(ZZ)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->c:Lcom/byazt/dh/ve$c;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/dh/ve$c;->c(JI)V

    :cond_2
    return-void
.end method

.method public c(JJ)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->c:Lcom/byazt/dh/ve$c;

    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/dh/ve$c;->c(JJ)V

    :cond_0
    return-void
.end method

.method public tt(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qzm/tt$c;->c:Lcom/byazt/dh/ve$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/dh/ve$c;->tt(JI)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
