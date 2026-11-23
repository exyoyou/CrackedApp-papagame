.class final Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$4$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity$onCreate$4$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/ModUploadArchiveActivity;->getDatabinDing()Lcom/join/android/app/mgsim/wufun/databinding/gm0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/gm0;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 8
    .line 9
    invoke-static {v0}, Lr7/a;->c(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
