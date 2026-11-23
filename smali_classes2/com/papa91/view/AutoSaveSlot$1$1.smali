.class Lcom/papa91/view/AutoSaveSlot$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot$1;->onSuccessFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/view/AutoSaveSlot$1;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$1$1;->this$1:Lcom/papa91/view/AutoSaveSlot$1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$1$1;->this$1:Lcom/papa91/view/AutoSaveSlot$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/papa91/view/AutoSaveSlot$1;->this$0:Lcom/papa91/view/AutoSaveSlot;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/papa91/view/AutoSaveSlot;->countDown:Lcom/papa91/view/CountDownView;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/papa91/view/CountDownView;->start()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
