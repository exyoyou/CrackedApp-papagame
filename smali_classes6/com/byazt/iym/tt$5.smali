.class public Lcom/byazt/iym/tt$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fk/da$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0x5a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iym/tt;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/iym/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/iym/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iym/tt$5;->c:Lcom/byazt/iym/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancel(Lcom/byazt/fk/u;I)V
    .locals 0

    return-void
.end method

.method public onVideoPreloadFail(Lcom/byazt/fk/u;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onVideoPreloadSuccess(Lcom/byazt/fk/u;I)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/byazt/fk/u;->getUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lcom/byazt/fk/u;->getPreloadSize()I

    .line 5
    .line 6
    .line 7
    return-void
.end method
