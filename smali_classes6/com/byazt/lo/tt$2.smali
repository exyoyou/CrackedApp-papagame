.class public Lcom/byazt/lo/tt$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x291,
        0x5c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/lo/tt;->tt(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/lo/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/lo/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/lo/tt$2;->c:Lcom/byazt/lo/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/byazt/lo/tt$2;->c:Lcom/byazt/lo/tt;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/byazt/lo/tt;->t(Lcom/byazt/lo/tt;)Lcom/byazt/ddx/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "template info load fail"

    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/byazt/lo/tt$2;->c:Lcom/byazt/lo/tt;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/byazt/lo/tt;->u(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/byazt/lo/tt$2;->c:Lcom/byazt/lo/tt;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/byazt/lo/tt;->yp(Lcom/byazt/lo/tt;)Lcom/byazt/qj/c;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1, v1}, Lcom/byazt/qj/c;->c(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/byazt/lo/tt$2;->c:Lcom/byazt/lo/tt;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/byazt/lo/tt;->z(Lcom/byazt/lo/tt;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, p1, v1}, Lcom/byazt/lo/tt;->c(Lcom/byazt/lo/tt;Lorg/json/JSONObject;Ljava/util/List;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
