.class public Lcom/byazt/ug/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1bc,
        0x5d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ug/c;->c(Lcom/byazt/ug/c$c;Lcom/byazt/nbs/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ug/c$c;

.field public final synthetic tt:Lcom/byazt/nbs/sp;

.field public final synthetic ve:Lcom/byazt/ug/c;


# direct methods
.method public constructor <init>(Lcom/byazt/ug/c;Lcom/byazt/ug/c$c;Lcom/byazt/nbs/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ug/c$3;->ve:Lcom/byazt/ug/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ug/c$3;->c:Lcom/byazt/ug/c$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/ug/c$3;->tt:Lcom/byazt/nbs/sp;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ug/c$3;->c:Lcom/byazt/ug/c$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/ug/c$3;->tt:Lcom/byazt/nbs/sp;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/byazt/ug/c$c;->c(Lcom/byazt/nbs/sp;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
