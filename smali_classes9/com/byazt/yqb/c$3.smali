.class public Lcom/byazt/yqb/c$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x367,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/yqb/c;->ve()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yqb/c;


# direct methods
.method public constructor <init>(Lcom/byazt/yqb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/yqb/c$3;->c:Lcom/byazt/yqb/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/yqb/c$3;->c:Lcom/byazt/yqb/c;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/byazt/yqb/c;->uj(Lcom/byazt/yqb/c;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/yqb/c$3;->c:Lcom/byazt/yqb/c;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/yqb/c;->n(Lcom/byazt/yqb/c;)Lcom/byazt/zd/tt;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Lcom/byazt/zd/tt;->i()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
