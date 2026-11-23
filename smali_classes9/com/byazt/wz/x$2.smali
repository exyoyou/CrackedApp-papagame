.class public final Lcom/byazt/wz/x$2;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x3b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/ete/uj;I)Landroid/widget/FrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic n:I

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/x$2;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/x$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/wz/x$2;->ve:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/wz/x$2;->uj:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/wz/x$2;->n:I

    .line 10
    .line 11
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/byazt/wz/x$2;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/byazt/wz/x$2;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/wz/x$2;->ve:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/byazt/wz/x$2;->uj:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/byazt/wz/x$2;->n:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 13
    .line 14
    .line 15
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 16
    .line 17
    :cond_0
    return-void
.end method
