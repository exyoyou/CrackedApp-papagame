.class Lmoe/codeest/enviews/ENDownloadView$f;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoe/codeest/enviews/ENDownloadView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lmoe/codeest/enviews/ENDownloadView;


# direct methods
.method constructor <init>(Lmoe/codeest/enviews/ENDownloadView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$f;->b:Lmoe/codeest/enviews/ENDownloadView;

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
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$f;->b:Lmoe/codeest/enviews/ENDownloadView;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lmoe/codeest/enviews/ENDownloadView;->b(Lmoe/codeest/enviews/ENDownloadView;F)F

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$f;->b:Lmoe/codeest/enviews/ENDownloadView;

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    invoke-static {p1, v0}, Lmoe/codeest/enviews/ENDownloadView;->c(Lmoe/codeest/enviews/ENDownloadView;I)I

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$f;->b:Lmoe/codeest/enviews/ENDownloadView;

    .line 14
    .line 15
    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->h(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lmoe/codeest/enviews/ENDownloadView$f;->b:Lmoe/codeest/enviews/ENDownloadView;

    .line 22
    .line 23
    invoke-static {p1}, Lmoe/codeest/enviews/ENDownloadView;->h(Lmoe/codeest/enviews/ENDownloadView;)Lmoe/codeest/enviews/ENDownloadView$h;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Lmoe/codeest/enviews/ENDownloadView$h;->onDownloadFinish()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
