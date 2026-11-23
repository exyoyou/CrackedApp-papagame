.class public Lcom/byazt/hz/a$3$1$1;
.super Lcom/byazt/dhf/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x7e3
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/a$3$1;->c(Lcom/byazt/yf/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yf/sp;

.field public final synthetic tt:Lcom/byazt/hz/a$3$1;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/a$3$1;Ljava/util/function/Function;Lcom/byazt/yf/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/a$3$1$1;->tt:Lcom/byazt/hz/a$3$1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/hz/a$3$1$1;->c:Lcom/byazt/yf/sp;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/dhf/c;-><init>(Ljava/util/function/Function;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3$1$1;->c:Lcom/byazt/yf/sp;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/byazt/yf/sp;->tt()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;Z)V
    .locals 0

    .line 3
    iget-object p3, p0, Lcom/byazt/hz/a$3$1$1;->c:Lcom/byazt/yf/sp;

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3, p1, p2}, Lcom/byazt/yf/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3$1$1;->c:Lcom/byazt/yf/sp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/yf/sp;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
