.class public Lcom/netease/nis/quicklogin/ui/a;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field private final a:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(Lcom/netease/nis/quicklogin/listener/ClickEventListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/a;->a:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/netease/nis/quicklogin/ui/a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/netease/nis/quicklogin/ui/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput p4, p0, Lcom/netease/nis/quicklogin/ui/a;->d:I

    .line 11
    .line 12
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
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/a;->a:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/netease/nis/quicklogin/ui/a;->d:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/ClickEventListener;->onClick(II)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 16
    .line 17
    const-class v1, Lcom/netease/nis/quicklogin/ui/ProtocolDetailActivity;

    .line 18
    .line 19
    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const/high16 v1, 0x10000000

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/a;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "url"

    .line 30
    .line 31
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/a;->c:Ljava/lang/String;

    .line 35
    .line 36
    const-string v2, "title"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
