.class public Lcom/byazt/nk/my$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oq/WriggleGuideAnimationView$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xea,
        0xeb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nk/my;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View;

.field public final synthetic tt:Lcom/byazt/wl/c;

.field public final synthetic ve:Lcom/byazt/nk/my;


# direct methods
.method public constructor <init>(Lcom/byazt/nk/my;Landroid/view/View;Lcom/byazt/wl/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nk/my$1;->c:Landroid/view/View;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/nk/my$1;->tt:Lcom/byazt/wl/c;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nk/my$1;->c:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/byazt/nk/my;->c(Lcom/byazt/nk/my;)Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/nk/my;->c(Lcom/byazt/nk/my;)Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/byazt/nk/my$1;->tt:Lcom/byazt/wl/c;

    .line 20
    .line 21
    check-cast v1, Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/nk/my;->c(Lcom/byazt/nk/my;)Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/byazt/nk/my;->tt(Lcom/byazt/nk/my;)Lcom/byazt/aq/sp;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/byazt/nk/my;->tt(Lcom/byazt/nk/my;)Lcom/byazt/aq/sp;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/byazt/aq/sp;->kp()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lcom/byazt/nk/my$1;->ve:Lcom/byazt/nk/my;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/byazt/nk/my;->c(Lcom/byazt/nk/my;)Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
