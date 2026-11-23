.class public Lcom/byazt/pg/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/hy/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x52a,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pg/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/pg/c;


# direct methods
.method public constructor <init>(Lcom/byazt/pg/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pg/c$2;->c:Lcom/byazt/pg/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/byazt/pg/c$2;->c:Lcom/byazt/pg/c;

    invoke-static {p1}, Lcom/byazt/pg/c;->c(Lcom/byazt/pg/c;)Lcom/byazt/ddx/sp;

    move-result-object p1

    const-string p2, "ad meta info load fail"

    const/4 v0, -0x3

    invoke-virtual {p1, v0, p2}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/byazt/pg/c$2;->c:Lcom/byazt/pg/c;

    iget-object p1, p1, Lcom/byazt/pg/c;->ve:Lcom/byazt/qj/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Lcom/byazt/qj/c;->c(I)V

    :cond_0
    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pg/c$2;->c:Lcom/byazt/pg/c;

    invoke-static {v0, p1}, Lcom/byazt/pg/c;->c(Lcom/byazt/pg/c;Lorg/json/JSONObject;)V

    return-void
.end method
