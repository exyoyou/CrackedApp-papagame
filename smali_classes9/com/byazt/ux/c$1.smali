.class public Lcom/byazt/ux/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ux/n$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1a3,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ux/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ux/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ux/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ux/c$1;->c:Lcom/byazt/ux/c;

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
    iget-object p1, p0, Lcom/byazt/ux/c$1;->c:Lcom/byazt/ux/c;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/byazt/ux/c;->uj:Lcom/byazt/ddx/sp;

    .line 6
    .line 7
    const-string v0, "template info load fail"

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/byazt/ddx/sp;->c(ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/byazt/ux/c$1;->c:Lcom/byazt/ux/c;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/byazt/ux/c;->a:Lcom/byazt/qj/c;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-interface {p1, v1}, Lcom/byazt/qj/c;->c(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/ux/c$1;->c:Lcom/byazt/ux/c;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/byazt/ux/c;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-virtual {v0, p1, v1}, Lcom/byazt/ux/c;->c(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
