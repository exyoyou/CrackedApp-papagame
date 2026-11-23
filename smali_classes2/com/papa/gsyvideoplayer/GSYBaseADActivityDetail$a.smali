.class Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;->b:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;->b:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->showADFull()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail$a;->b:Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseADActivityDetail;->clickForFullScreen()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
