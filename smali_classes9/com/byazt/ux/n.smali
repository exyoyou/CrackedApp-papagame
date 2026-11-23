.class public Lcom/byazt/ux/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x2e
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ux/n$c;
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/seg/c;Lcom/byazt/ux/n$c;)V
    .locals 2

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-interface {p1, p0}, Lcom/byazt/ux/n$c;->c(Lorg/json/JSONObject;)V

    :cond_0
    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/seg/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/seg/c;->tt()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/seg/c;->ve()Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0, v0, v1, p1}, Lcom/byazt/ux/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ux/n$c;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ux/n$c;)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/byazt/xs/sp;->c()Lcom/byazt/xs/sp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/byazt/xs/sp;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/byazt/ux/n$1;

    invoke-direct {v0, p3}, Lcom/byazt/ux/n$1;-><init>(Lcom/byazt/ux/n$c;)V

    invoke-static {p0, p1, p2, v0}, Lcom/byazt/hy/tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/byazt/hy/tt$tt;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    invoke-interface {p3, v0}, Lcom/byazt/ux/n$c;->c(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method
