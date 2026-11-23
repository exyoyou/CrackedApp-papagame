.class public Lcom/byazt/cty/BaseLandingPageActivity$7;
.super Lcom/byazt/jwd/uj;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xab,
        0xf5
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cty/BaseLandingPageActivity;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cty/BaseLandingPageActivity;

.field public final i:J


# direct methods
.method public constructor <init>(Lcom/byazt/cty/BaseLandingPageActivity;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;Lcom/byazt/tjs/uj;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity$7;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p4

    .line 7
    move-object v4, p5

    .line 8
    move-object v5, p6

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/byazt/jwd/uj;-><init>(Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;Lcom/byazt/tjs/uj;)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide p1

    .line 16
    iput-wide p1, p0, Lcom/byazt/cty/BaseLandingPageActivity$7;->i:J

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/byazt/jwd/uj;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$7;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    .line 5
    .line 6
    iget-object v0, p2, Lcom/byazt/cty/BaseLandingPageActivity;->gr:Lcom/byazt/ff/TTProgressBar;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-nez p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$7;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    .line 17
    .line 18
    iget-object p2, p2, Lcom/byazt/cty/BaseLandingPageActivity;->gr:Lcom/byazt/ff/TTProgressBar;

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-wide v0, p0, Lcom/byazt/cty/BaseLandingPageActivity$7;->i:J

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/byazt/cty/BaseLandingPageActivity;->c(J)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :catchall_0
    :cond_1
    return-void
.end method
