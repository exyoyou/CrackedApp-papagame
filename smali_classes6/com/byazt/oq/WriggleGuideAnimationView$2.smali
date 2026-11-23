.class public Lcom/byazt/oq/WriggleGuideAnimationView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x10d,
        0x86e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oq/WriggleGuideAnimationView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/oq/WriggleGuideAnimationView;


# direct methods
.method public constructor <init>(Lcom/byazt/oq/WriggleGuideAnimationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oq/WriggleGuideAnimationView$2;->c:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/oq/WriggleGuideAnimationView$2;->c:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/oq/WriggleGuideAnimationView$2;->c:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/oq/WriggleGuideAnimationView;->tt(Lcom/byazt/oq/WriggleGuideAnimationView;)Lcom/byazt/oq/WriggleGuideAnimationView$c;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/byazt/oq/WriggleGuideAnimationView$2;->c:Lcom/byazt/oq/WriggleGuideAnimationView;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/byazt/oq/WriggleGuideAnimationView;->tt(Lcom/byazt/oq/WriggleGuideAnimationView;)Lcom/byazt/oq/WriggleGuideAnimationView$c;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Lcom/byazt/oq/WriggleGuideAnimationView$c;->c()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
