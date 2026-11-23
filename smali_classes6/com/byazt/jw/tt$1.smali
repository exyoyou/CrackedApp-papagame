.class public Lcom/byazt/jw/tt$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4c0,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/jw/tt;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/jw/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/jw/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/jw/tt$1;->c:Lcom/byazt/jw/tt;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/jw/tt$1;->c:Lcom/byazt/jw/tt;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/byazt/vd/c;->ve()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
