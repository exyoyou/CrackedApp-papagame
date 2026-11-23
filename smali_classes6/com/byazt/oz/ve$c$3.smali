.class public Lcom/byazt/oz/ve$c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xd5,
        0x74b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oz/ve$c;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:I

.field public final synthetic tt:Ljava/lang/String;

.field public final synthetic uj:Lcom/byazt/oz/ve$c;

.field public final synthetic ve:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/byazt/oz/ve$c;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oz/ve$c$3;->uj:Lcom/byazt/oz/ve$c;

    .line 2
    .line 3
    iput p2, p0, Lcom/byazt/oz/ve$c$3;->c:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/oz/ve$c$3;->tt:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/oz/ve$c$3;->ve:Ljava/lang/Throwable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve$c$3;->uj:Lcom/byazt/oz/ve$c;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/oz/ve$c;->c(Lcom/byazt/oz/ve$c;)Lcom/byazt/yj/gr;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/oz/ve$c$3;->uj:Lcom/byazt/oz/ve$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/oz/ve$c;->c(Lcom/byazt/oz/ve$c;)Lcom/byazt/yj/gr;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v1, p0, Lcom/byazt/oz/ve$c$3;->c:I

    .line 16
    .line 17
    iget-object v2, p0, Lcom/byazt/oz/ve$c$3;->tt:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/byazt/oz/ve$c$3;->ve:Ljava/lang/Throwable;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/byazt/yj/gr;->onFailed(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
