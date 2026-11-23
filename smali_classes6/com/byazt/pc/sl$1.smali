.class public Lcom/byazt/pc/sl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b7,
        0x2b8
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/pc/sl;->c(Lcom/byazt/oz/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/pc/sl;

.field public final synthetic c:Lcom/byazt/yj/tt;

.field public final synthetic n:[B

.field public final synthetic tt:Lcom/byazt/oz/a;

.field public final synthetic uj:Ljava/lang/String;

.field public final synthetic ve:Lcom/byazt/oz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/pc/sl;Lcom/byazt/yj/tt;Lcom/byazt/oz/a;Lcom/byazt/oz/ve;Ljava/lang/String;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pc/sl$1;->a:Lcom/byazt/pc/sl;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/pc/sl$1;->c:Lcom/byazt/yj/tt;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/pc/sl$1;->tt:Lcom/byazt/oz/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/pc/sl$1;->ve:Lcom/byazt/oz/ve;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/byazt/pc/sl$1;->uj:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/pc/sl$1;->n:[B

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/pc/sl$1;->c:Lcom/byazt/yj/tt;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/yj/tt;->isDiskCache()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/pc/sl$1;->tt:Lcom/byazt/oz/a;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/byazt/pc/sl$1;->ve:Lcom/byazt/oz/ve;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/byazt/oz/ve;->yp()Lcom/byazt/yj/tt;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/oz/a;->ve(Lcom/byazt/yj/tt;)Lcom/byazt/yj/uj;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/byazt/pc/sl$1;->uj:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/byazt/pc/sl$1;->n:[B

    .line 24
    .line 25
    invoke-interface {v0, v1, v2}, Lcom/byazt/yj/c;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
