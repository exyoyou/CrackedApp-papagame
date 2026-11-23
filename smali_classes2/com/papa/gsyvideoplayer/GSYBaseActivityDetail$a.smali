.class Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->initVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;


# direct methods
.method constructor <init>(Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;->b:Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;

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
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;->b:Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->showFull()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail$a;->b:Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/papa/gsyvideoplayer/GSYBaseActivityDetail;->clickForFullScreen()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
