.class public Lcom/byazt/dyf/tt$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dyf/tt$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ea,
        0x5f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/dyf/tt;->setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/dhf/c;

.field public final synthetic tt:Lcom/byazt/dyf/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/dyf/tt;Lcom/byazt/dhf/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/dyf/tt$4;->tt:Lcom/byazt/dyf/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/dyf/tt$4;->c:Lcom/byazt/dhf/c;

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

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt$4;->c:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/dhf/c;->c()V

    :cond_0
    return-void
.end method

.method public c(ILjava/lang/String;Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/dyf/tt$4;->c:Lcom/byazt/dhf/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/dhf/c;->c(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public tt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/dyf/tt$4;->c:Lcom/byazt/dhf/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/dhf/c;->tt()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
