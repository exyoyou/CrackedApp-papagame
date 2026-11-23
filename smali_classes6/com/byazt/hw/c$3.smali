.class public Lcom/byazt/hw/c$3;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4d,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hw/c;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Lcom/byazt/hw/c;


# direct methods
.method public constructor <init>(Lcom/byazt/hw/c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/hw/c$3;->c:I

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 1

    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p2}, Lcom/byazt/hm/tt;->i()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/byazt/hm/tt;->n()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    iget p2, p0, Lcom/byazt/hw/c$3;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;I)V

    return-void

    :cond_1
    :try_start_1
    const-string p2, "message"

    .line 4
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :goto_1
    const-string p2, "success"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    iget p2, p0, Lcom/byazt/hw/c$3;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;I)V

    return-void

    .line 7
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    invoke-static {p1, v0}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    const/16 p2, 0x65

    invoke-static {p1, p2}, Lcom/byazt/hw/c;->tt(Lcom/byazt/hw/c;I)V

    return-void

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    iget p2, p0, Lcom/byazt/hw/c$3;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    .line 10
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    iget p2, p0, Lcom/byazt/hw/c$3;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;I)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 11
    iget-object p1, p0, Lcom/byazt/hw/c$3;->tt:Lcom/byazt/hw/c;

    iget p2, p0, Lcom/byazt/hw/c$3;->c:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/byazt/hw/c;->c(Lcom/byazt/hw/c;I)V

    return-void
.end method
