.class public Lcom/byazt/iu/uj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/iu/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7f,
        0x6b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iu/uj;->c(Ljava/util/List;Lcom/byazt/dj/tt;ZLcom/byazt/iuu/tt;Lcom/byazt/iu/n;Lcom/byazt/iu/uj$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iuu/tt;

.field public final synthetic n:Lcom/byazt/iu/uj;

.field public final synthetic tt:Ljava/util/List;

.field public final synthetic uj:Lcom/byazt/iu/uj$c;

.field public final synthetic ve:Lcom/byazt/dj/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iu/uj;Lcom/byazt/iuu/tt;Ljava/util/List;Lcom/byazt/dj/tt;Lcom/byazt/iu/uj$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iu/uj$5;->n:Lcom/byazt/iu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/iu/uj$5;->c:Lcom/byazt/iuu/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/iu/uj$5;->tt:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/iu/uj$5;->ve:Lcom/byazt/dj/tt;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/iu/uj$5;->uj:Lcom/byazt/iu/uj$c;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/byazt/iu/ve;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/iu/uj$5;->c:Lcom/byazt/iuu/tt;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/iuu/tt;->tt(Lcom/byazt/iu/ve;)V

    .line 4
    iget-object p1, p0, Lcom/byazt/iu/uj$5;->c:Lcom/byazt/iuu/tt;

    invoke-virtual {p1, v1}, Lcom/byazt/iuu/tt;->c(Z)V

    .line 5
    iget-object p1, p0, Lcom/byazt/iu/uj$5;->tt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/byazt/iu/uj$5;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/byazt/iu/ve;->c()V

    .line 7
    iget-object p1, p0, Lcom/byazt/iu/uj$5;->tt:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Lcom/byazt/iu/uj$5;->ve:Lcom/byazt/dj/tt;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/byazt/iu/uj$5;->uj:Lcom/byazt/iu/uj$c;

    invoke-interface {p1, v1}, Lcom/byazt/iu/uj$c;->c(Z)V

    return-void
.end method
