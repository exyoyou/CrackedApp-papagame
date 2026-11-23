.class public Lcom/byazt/ouz/zm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve$uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x657
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/zm;->setVideoAdListener(Lcom/byazt/ft/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ft/ve;

.field public final synthetic tt:Lcom/byazt/ouz/zm;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/zm;Lcom/byazt/ft/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/zm$1;->tt:Lcom/byazt/ouz/zm;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ouz/zm$1;->c:Lcom/byazt/ft/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onVideoError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/zm$1;->c:Lcom/byazt/ft/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ft/ve;->c(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onVideoLoad()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/zm$1;->c:Lcom/byazt/ft/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ft/ve;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
