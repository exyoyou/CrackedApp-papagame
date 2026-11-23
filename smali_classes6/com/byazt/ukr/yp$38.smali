.class public Lcom/byazt/ukr/yp$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x453
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->tt(Lcom/byazt/ete/ic;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/ukr/yp;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$38;->uj:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$38;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ukr/yp$38;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ukr/yp$38;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "upie_img_play_fail"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/ukr/yp$38;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget v1, p0, Lcom/byazt/ukr/yp$38;->tt:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(I)Lcom/byazt/qal/tt;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/ukr/yp$38;->ve:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->sp(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 30
    .line 31
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/byazt/ukr/yp$38;->c:Lcom/byazt/ete/ic;

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 47
    .line 48
    .line 49
    return-object v0
.end method
