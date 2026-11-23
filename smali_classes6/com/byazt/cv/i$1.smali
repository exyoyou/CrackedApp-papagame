.class public Lcom/byazt/cv/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yf/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x255,
        0xcb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cv/i;->c(Landroid/app/Activity;Lcom/byazt/yl/ve;)Lcom/byazt/yf/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/nc/sp;

.field public final synthetic tt:Lcom/byazt/cv/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cv/i;Lcom/byazt/nc/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cv/i$1;->tt:Lcom/byazt/cv/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cv/i$1;->c:Lcom/byazt/nc/sp;

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
    iget-object v0, p0, Lcom/byazt/cv/i$1;->c:Lcom/byazt/nc/sp;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/nc/sp;->showDislikeDialog()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/yf/sp;)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/cv/i$1;->c:Lcom/byazt/nc/sp;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/cv/i$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/byazt/cv/i$1$1;-><init>(Lcom/byazt/cv/i$1;Ljava/util/function/Function;Lcom/byazt/yf/sp;)V

    invoke-virtual {v0, v1}, Lcom/byazt/nc/sp;->setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V

    :cond_0
    return-void
.end method
