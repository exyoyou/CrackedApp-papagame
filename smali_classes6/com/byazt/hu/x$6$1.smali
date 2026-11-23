.class public Lcom/byazt/hu/x$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/my;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x565,
        0x973
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hu/x$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic tt:Lcom/byazt/hu/x$6;


# direct methods
.method public constructor <init>(Lcom/byazt/hu/x$6;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hu/x$6$1;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/byazt/hu/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/byazt/hu/x;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v2, v0, Lcom/byazt/hu/x$6;->tt:Landroid/content/Context;

    iget-object v3, v0, Lcom/byazt/hu/x$6;->ve:Lcom/byazt/nn/n;

    iget-object v0, v0, Lcom/byazt/hu/x$6;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, p1}, Lcom/byazt/hu/x;->c(Landroid/content/Context;Lcom/byazt/nn/n;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object p1, p1, Lcom/byazt/hu/x$6;->tt:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v3, v3, Lcom/byazt/hu/x$6;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/hu/x;->c(Landroid/content/Context;Landroid/net/Uri;)Lcom/byazt/nn/sp;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v0, v0, Lcom/byazt/hu/x$6;->ve:Lcom/byazt/nn/n;

    invoke-static {p1, v0, v1}, Lcom/byazt/us/c;->c(Lcom/byazt/nn/sp;Lcom/byazt/nn/n;Z)V

    .line 8
    iget-object p1, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object p1, p1, Lcom/byazt/hu/x$6;->ve:Lcom/byazt/nn/n;

    iget-object v0, p0, Lcom/byazt/hu/x$6$1;->c:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v2, v2, Lcom/byazt/hu/x$6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-static {p1, v0, v2, v3, v1}, Lcom/byazt/hu/x;->c(Lcom/byazt/nn/n;Lorg/json/JSONObject;IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v0, v0, Lcom/byazt/hu/x$6;->tt:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v3, v3, Lcom/byazt/hu/x$6;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/hu/x;->c(Landroid/content/Context;Landroid/net/Uri;)Lcom/byazt/nn/sp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v1, v1, Lcom/byazt/hu/x$6;->ve:Lcom/byazt/nn/n;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/byazt/us/c;->c(Lcom/byazt/nn/sp;Lcom/byazt/nn/n;Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/hu/x$6$1;->c:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const-string v1, "ttdownloader_message"

    invoke-static {v0, v1, p1}, Lcom/byazt/hu/u;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object p1, p1, Lcom/byazt/hu/x$6;->ve:Lcom/byazt/nn/n;

    iget-object v0, p0, Lcom/byazt/hu/x$6$1;->c:Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/hu/x$6$1;->tt:Lcom/byazt/hu/x$6;

    iget-object v2, v2, Lcom/byazt/hu/x$6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    const/16 v3, 0x9

    invoke-static {p1, v0, v2, v3, v1}, Lcom/byazt/hu/x;->c(Lcom/byazt/nn/n;Lorg/json/JSONObject;IILjava/lang/String;)V

    return-void
.end method
