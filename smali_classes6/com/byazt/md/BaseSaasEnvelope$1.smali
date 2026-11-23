.class public Lcom/byazt/md/BaseSaasEnvelope$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x15d,
        0x9a0
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/md/BaseSaasEnvelope;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Landroid/view/View$OnClickListener;

.field public final synthetic tt:Lcom/byazt/md/BaseSaasEnvelope;


# direct methods
.method public constructor <init>(Lcom/byazt/md/BaseSaasEnvelope;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/md/BaseSaasEnvelope$1;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/md/BaseSaasEnvelope$1;->c:Landroid/view/View$OnClickListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/md/BaseSaasEnvelope$1;->tt:Lcom/byazt/md/BaseSaasEnvelope;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/md/BaseSaasEnvelope;->tt()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/md/BaseSaasEnvelope$1;->c:Landroid/view/View$OnClickListener;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
