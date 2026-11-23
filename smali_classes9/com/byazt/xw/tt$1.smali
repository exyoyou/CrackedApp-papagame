.class public Lcom/byazt/xw/tt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yf/sp;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xe2,
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xw/tt;->setDislikeCallback(Lcom/byazt/am/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/am/c;

.field public final synthetic tt:Lcom/byazt/xw/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/xw/tt;Lcom/byazt/am/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xw/tt$1;->tt:Lcom/byazt/xw/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/xw/tt$1;->c:Lcom/byazt/am/c;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/xw/tt$1;->c:Lcom/byazt/am/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/am/c;->c()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/byazt/xw/tt$1;->c:Lcom/byazt/am/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/byazt/am/c;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/xw/tt$1;->c:Lcom/byazt/am/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/am/c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
