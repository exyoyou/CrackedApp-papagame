.class public Lcom/byazt/oz/ve$c$2;
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
        0x74a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/oz/ve$c;->onSuccess(Lcom/byazt/yj/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yj/m;

.field public final synthetic tt:Lcom/byazt/oz/ve$c;


# direct methods
.method public constructor <init>(Lcom/byazt/oz/ve$c;Lcom/byazt/yj/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/oz/ve$c$2;->tt:Lcom/byazt/oz/ve$c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/oz/ve$c$2;->c:Lcom/byazt/yj/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/oz/ve$c$2;->tt:Lcom/byazt/oz/ve$c;

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
    iget-object v0, p0, Lcom/byazt/oz/ve$c$2;->tt:Lcom/byazt/oz/ve$c;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/oz/ve$c;->c(Lcom/byazt/oz/ve$c;)Lcom/byazt/yj/gr;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/oz/ve$c$2;->c:Lcom/byazt/yj/m;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/byazt/yj/gr;->onSuccess(Lcom/byazt/yj/m;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
