.class public Lcom/byazt/ac/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/at/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ac/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ac/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ac/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/c$1;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c$1;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    const-string v1, "mWebView>>>>height="

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "TTAndroidObject"

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ac/c$1;->c:Lcom/byazt/ac/c;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :cond_1
    return v0
.end method

.method public tt()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c$1;->c:Lcom/byazt/ac/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, -0x1

    .line 13
    :goto_0
    const-string v1, "mWebView>>>>width="

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "TTAndroidObject"

    .line 24
    .line 25
    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    if-gtz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ac/c$1;->c:Lcom/byazt/ac/c;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :cond_1
    return v0
.end method
