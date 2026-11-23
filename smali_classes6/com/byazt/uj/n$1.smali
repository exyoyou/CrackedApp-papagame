.class public Lcom/byazt/uj/n$1;
.super Lcom/byazt/nc/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xf,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uj/n;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ch/a;

.field public final synthetic tt:Lcom/byazt/uj/n;


# direct methods
.method public constructor <init>(Lcom/byazt/uj/n;Lcom/byazt/ch/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uj/n$1;->tt:Lcom/byazt/uj/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uj/n$1;->c:Lcom/byazt/ch/a;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/nc/sp;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public isShow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public resetDislikeStatus()V
    .locals 0

    return-void
.end method

.method public setDislikeInteractionCallback(Lcom/byazt/dhf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/uj/n$1;->c:Lcom/byazt/ch/a;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/wc/tt;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/byazt/wc/tt;-><init>(Lcom/byazt/dhf/c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/byazt/ch/a;->c(Lcom/byazt/ch/ve;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDislikeSource(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showDislikeDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/uj/n$1;->c:Lcom/byazt/ch/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ch/a;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
