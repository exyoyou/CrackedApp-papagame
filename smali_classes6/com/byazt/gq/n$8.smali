.class public Lcom/byazt/gq/n$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/rl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34,
        0x247
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gq/n;->c(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:Lcom/byazt/gq/n;


# direct methods
.method public constructor <init>(Lcom/byazt/gq/n;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gq/n$8;->tt:Lcom/byazt/gq/n;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/gq/n$8;->c:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/gq/n;->da()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pBCD start download"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/gq/n$8;->tt:Lcom/byazt/gq/n;

    iget-boolean v1, p0, Lcom/byazt/gq/n$8;->c:Z

    invoke-static {v0, v1}, Lcom/byazt/gq/n;->c(Lcom/byazt/gq/n;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/gq/n;->da()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pBCD onDenied"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/byazt/hu/sl;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
